#include <windows.h>
#include <iostream>
#include <string>
#include <stdexcept>

/*
 * Wrapper C++ para DLLs nativas de Smart Ship Factory.
 *
 * IMPORTANTE:
 * - Ajusta las firmas de las funciones según los headers originales.
 * - Verifica que el proyecto compile como x86 (Win32) para evitar errores 0xC000007B.
 * - Coloca las DLLs en el mismo directorio del ejecutable o ajusta la variable DLL_BASE.
 */

namespace ssf
{
    constexpr const char* DLL_BASE = "C:\\Windows\\CEM44\\Smart Ship Factory\\Spirit\\bin\\pumps\\";
    constexpr const char* DLL_GILBARCO = "SSF.Gilbarco.D.dll";

    struct Library
    {
        HMODULE handle { nullptr };

        explicit Library(const std::string& path)
        {
            handle = ::LoadLibraryA(path.c_str());
            if (!handle)
            {
                throw std::runtime_error("No se pudo cargar la DLL: " + path);
            }
        }

        ~Library()
        {
            if (handle)
            {
                ::FreeLibrary(handle);
                handle = nullptr;
            }
        }

        template <typename Fn>
        Fn resolve(const char* symbol) const
        {
            auto proc = reinterpret_cast<Fn>(::GetProcAddress(handle, symbol));
            if (!proc)
            {
                throw std::runtime_error(std::string("No se encontro el simbolo: ") + symbol);
            }
            return proc;
        }
    };

    // Firmas supuestas: ajusta según la definición real.
    using ssfPIInitializeFn = int(__stdcall*)();
    using ssfPIShutdownFn = int(__stdcall*)();
    using ssfPIGetPlugInInstanceFn = void*(__stdcall*)();
    using ssfPIDestroyPlugInInstanceFn = int(__stdcall*)(void*);
    using ssfPIGetPlugInConfigParamFn = int(__stdcall*)(const char*, char*, unsigned int);

    struct GilbarcoApi
    {
        ssfPIInitializeFn initialize { nullptr };
        ssfPIShutdownFn shutdown { nullptr };
        ssfPIGetPlugInInstanceFn getInstance { nullptr };
        ssfPIDestroyPlugInInstanceFn destroyInstance { nullptr };
        ssfPIGetPlugInConfigParamFn getConfig { nullptr };
    };

    GilbarcoApi load_gilbarco_api(const Library& lib)
    {
        GilbarcoApi api;
        api.initialize = lib.resolve<ssfPIInitializeFn>("ssfPIInitialize");
        api.shutdown = lib.resolve<ssfPIShutdownFn>("ssfPIShutdown");
        api.getInstance = lib.resolve<ssfPIGetPlugInInstanceFn>("ssfPIGetPlugInInstance");
        api.destroyInstance = lib.resolve<ssfPIDestroyPlugInInstanceFn>("ssfPIDestroyPlugInInstance");
        api.getConfig = lib.resolve<ssfPIGetPlugInConfigParamFn>("ssfPIGetPlugInConfigParam");
        return api;
    }
}

int main()
{
    try
    {
        std::string dllPath = std::string(ssf::DLL_BASE) + ssf::DLL_GILBARCO;
        ssf::Library lib(dllPath);
        auto api = ssf::load_gilbarco_api(lib);

        std::cout << "[OK] DLL cargada: " << dllPath << std::endl;

        int initResult = api.initialize();
        std::cout << "ssfPIInitialize() -> 0x" << std::hex << initResult << std::dec << std::endl;

        void* instance = api.getInstance();
        std::cout << "ssfPIGetPlugInInstance() -> " << instance << std::endl;

        if (instance)
        {
            char buffer[512] = {};
            const char* key = "ExampleKey"; // TODO: reemplazar por la clave real
            int cfg = api.getConfig(key, buffer, sizeof(buffer));
            std::cout << "ssfPIGetPlugInConfigParam(\"" << key << "\") -> 0x" << std::hex << cfg
                      << std::dec << " valor=\"" << buffer << "\"" << std::endl;

            int destroy = api.destroyInstance(instance);
            std::cout << "ssfPIDestroyPlugInInstance() -> 0x" << std::hex << destroy << std::dec << std::endl;
        }
        else
        {
            std::cout << "[WARN] La instancia devuelta es nula; revisa requisitos previos." << std::endl;
        }

        int shutdownResult = api.shutdown();
        std::cout << "ssfPIShutdown() -> 0x" << std::hex << shutdownResult << std::dec << std::endl;
    }
    catch (const std::exception& ex)
    {
        std::cerr << "[ERROR] " << ex.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

