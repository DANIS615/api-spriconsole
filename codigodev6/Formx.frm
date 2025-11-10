VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
Object = "{00025600-0000-0000-C000000000000046}#5.1#0"; "C:\WINDOWS\SysWow64\CRYSTL32.OCX"
Begin VB.Form Formx
  Caption = "CEM - 44"
  ForeColor = &HFF8080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawMode = 11
  BorderStyle = 1 'Fixed Single
  Icon = "Formx.frx":0000
  LinkTopic = "Formx"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = -210
  ClientTop = 1200
  ClientWidth = 11835
  ClientHeight = 8130
  Begin VB.PictureBox Picture1
    Left = 2760
    Top = 6600
    Width = 495
    Height = 495
    Visible = 0   'False
    TabIndex = 6
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin VB.Data Data1
    Left = 3360
    Top = 6600
    Width = 1260
    Height = 585
    Visible = 0   'False
    Connect = "Access"
    DatabaseName = ""
  End
  Begin VB.TextBox Text3
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 2520
    Width = 9675
    Height = 600
    Visible = 0   'False
    Text = "   RECUPERANDO  CONFIGURACION  INICIAL...."
    TabIndex = 2
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text2
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 1560
    Width = 9675
    Height = 600
    Visible = 0   'False
    Text = "   ALMACENANDO  CONFIGURACION  INICIAL...."
    TabIndex = 1
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Text4
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 3600
    Width = 9675
    Height = 600
    Visible = 0   'False
    Text = "   UN  MOMENTO,  POR  FAVOR...."
    TabIndex = 3
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtAviso
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 4560
    Width = 9675
    Height = 600
    Enabled = 0   'False
    Visible = 0   'False
    Text = "SE HA EXCEDIDO EL MONTO MAXIMO EN PLAYA"
    TabIndex = 5
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Timer tmrHardLock
    Enabled = 0   'False
    Interval = 60000
    Left = 10320
    Top = 240
  End
  Begin VB.Timer Reloj
    Enabled = 0   'False
    Interval = 1000
    Left = 9720
    Top = 240
  End
  Begin Threed.SSPanel PanelCierres
    Left = 1920
    Top = 1680
    Width = 7815
    Height = 4575
    Visible = 0   'False
    TabIndex = 4
    OleObjectBlob = "Formx.frx":0CCA
  End
  Begin Crystal.CrystalReport CrystalReport1
    OleObjectBlob = "Formx.frx":0D3B
    Left = 9120
    Top = 240
  End
  Begin VB.TextBox Text1
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 600
    Width = 9675
    Height = 600
    Visible = 0   'False
    Text = "   CARGANDO  CONFIGURACION  INICIAL...."
    TabIndex = 0
    TabStop = 0   'False
    Alignment = 2 'Center
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Image Image2
    Picture = "Formx.frx":0E2E
    Left = 6240
    Top = 6360
    Width = 3840
    Height = 3840
    Visible = 0   'False
    DataSource = "Data1"
  End
  Begin VB.Image Image1
    Left = 0
    Top = 0
    Width = 11895
    Height = 8175
    Stretch = -1  'True
    DataSource = "Data1"
  End
  Begin VB.Menu FORECOURT
    Caption = "&Operaciones de Playa"
  End
  Begin VB.Menu CLOSES
    Caption = "&Cierres"
    Begin VB.Menu CLOSE_SHIFT
      Caption = "&Turno"
    End
    Begin VB.Menu PCLOSE_DAY
      Caption = "&Diario"
    End
    Begin VB.Menu CLOSE_MONTH
      Caption = "&Mensual"
    End
    Begin VB.Menu menuSeparadorCierres
      Caption = "-"
    End
    Begin VB.Menu mnuForzarCierreConectividad
      Caption = "&Forzar Cierre Conectividad"
    End
    Begin VB.Menu mnuForzarCierreRedXXI
      Caption = "&Mantenimiento"
    End
    Begin VB.Menu StockProg
      Caption = "Stock Programado"
    End
    Begin VB.Menu StockEx
      Caption = "Stock por Excepción"
    End
    Begin VB.Menu mnugenericCierre0
      Visible = 0   'False
      Caption = "genericCierre"
      Begin VB.Menu mnugenericSubCierre0
        Index = 0
        Caption = "genericSubCierre"
      End
    End
    Begin VB.Menu mnugenericCierre1
      Visible = 0   'False
      Caption = "genericCierre"
      Begin VB.Menu mnugenericSubCierre1
        Index = 0
        Caption = "genericSubCierre"
      End
    End
    Begin VB.Menu mnugenericCierre2
      Visible = 0   'False
      Caption = "genericCierre"
      Begin VB.Menu mnugenericSubCierre2
        Index = 0
        Caption = "genericSubCierre"
      End
    End
    Begin VB.Menu mnugenericCierre
      Index = 0
      Visible = 0   'False
      Caption = "genericCierre"
    End
  End
  Begin VB.Menu REPORTS
    Caption = "&Reportes"
    Begin VB.Menu REPORT_IN_PROGRESS
      Caption = "&En curso"
      Begin VB.Menu Shift_in_Progress
        Caption = "&Turno"
      End
      Begin VB.Menu Day_in_progress
        Caption = "&Dia"
      End
      Begin VB.Menu Month_in_Progress
        Caption = "&Mes"
      End
    End
    Begin VB.Menu menuSeparadorReportes1
      Caption = "-"
    End
    Begin VB.Menu REPORT_SHIFT
      Caption = "&Turnos  "
    End
    Begin VB.Menu REPORT_DAY
      Caption = "&Diarios"
    End
    Begin VB.Menu REPORT_MONTH
      Caption = "&Mensuales"
    End
    Begin VB.Menu mnuSepaRed21
      Caption = "-"
    End
    Begin VB.Menu mnuRedXXIN
      Caption = "&Red XXI"
      Begin VB.Menu mnuCierreRed21N
        Caption = "&Cierre Red XXI"
      End
      Begin VB.Menu mnuCierresRed21MensualesN
        Caption = "Consolidación Mensual Red &XXI"
      End
      Begin VB.Menu mnuCierresPeriodoN
        Caption = "Cierres de Red XXI por período"
      End
      Begin VB.Menu MnuDebitosN
        Caption = "Debitos &Bancarios"
      End
      Begin VB.Menu MnuRendicionVentaN
        Caption = "Rendición de Ventas"
        Begin VB.Menu MnuRendicionVentasN
          Caption = "Rendición  de Ventas"
        End
        Begin VB.Menu MnuAnulVentasN
          Caption = "Anulación Total de Rendición de Ventas"
        End
        Begin VB.Menu MnuAnuParcVentasN
          Caption = "Anulación Parcial de Rendición de Ventas"
        End
        Begin VB.Menu MnuAjusteMansualN
          Caption = "Ajuste Mensual"
        End
        Begin VB.Menu MnuAnulacionAjusteN
          Caption = "Anulación Ajuste Mensual"
        End
      End
      Begin VB.Menu mnuExisteciasN
        Caption = "C&ontrol de Existencias de Productos"
      End
      Begin VB.Menu NotaCombN
        Caption = "&Nota de Liquidación de Combustible"
      End
    End
    Begin VB.Menu mnuRedXXI
      Caption = "&Consignado"
      Begin VB.Menu MnuCierres
        Caption = "Cierres"
        Begin VB.Menu MnuTipoCierre
          Caption = "&Tipos de Cierrre"
        End
        Begin VB.Menu mnuCierreRed21
          Caption = "&Cierre de Consignado"
        End
      End
      Begin VB.Menu mnuCierresRed21Mensuales
        Caption = "Consolidación Mensual de Consignado"
      End
      Begin VB.Menu mnuExistecias
        Caption = "C&ontrol de Existencias de Productos"
      End
      Begin VB.Menu Cuenta_Liquido_Producto
        Caption = "&Cuenta Líquido Producto"
      End
      Begin VB.Menu NotaComb
        Caption = "&Nota Liquido Producto"
      End
      Begin VB.Menu Debitos
        Caption = "Debitos &Bancarios"
      End
      Begin VB.Menu mnuComisiones
        Caption = "Co&misiones"
      End
    End
    Begin VB.Menu MenuAnexoIII
      Caption = "&Anexo III"
    End
    Begin VB.Menu menuSeparadorReportes2
      Caption = "-"
    End
    Begin VB.Menu RepDelta
      Caption = "&Delta"
      Begin VB.Menu RepDelCurso
        Caption = "En curso"
      End
      Begin VB.Menu RepDelAnteriores
        Caption = "Anteriores"
      End
    End
    Begin VB.Menu mnuReporteGrupo
      Caption = "Reporte de Gr&upo de Surtidores"
    End
    Begin VB.Menu mnuCamionCisterna
      Caption = "Camión C&isterna"
    End
    Begin VB.Menu Estadisticas_menu
      Caption = "&Gráficos"
    End
    Begin VB.Menu Despachos
      Caption = "De&spachos"
    End
    Begin VB.Menu mnuReporteTicket
      Caption = "Reporte de Tickets"
    End
    Begin VB.Menu mnuReporteDeSeguridad
      Caption = "Reporte de &Seguridad"
    End
    Begin VB.Menu MnuMezcla
      Caption = "Mezclas"
    End
    Begin VB.Menu mnuProductos
      Caption = "Productos"
    End
    Begin VB.Menu mnuSepaCTF
      Caption = "-"
    End
    Begin VB.Menu mnuCDFP
      Caption = "CDFP"
      Begin VB.Menu mnuListadoCTF
        Caption = "&Listado CDFP"
      End
      Begin VB.Menu mnuTotalesCTF
        Caption = "T&otales de Playeros"
      End
      Begin VB.Menu mnuEstadisticasCTF
        Caption = "Estadísticas de &Playeros"
      End
      Begin VB.Menu mnuDatosComunicacion
        Caption = "Datos de Comunicació&n"
      End
    End
    Begin VB.Menu mnuSepararFlotas
      Caption = "-"
    End
    Begin VB.Menu mnuFlotas
      Caption = "&YPF en Ruta"
    End
    Begin VB.Menu mnuSeparadorIntranet
      Caption = "-"
    End
    Begin VB.Menu mnuIntranet
      Caption = "Ad&hesiones Express Pay"
    End
    Begin VB.Menu mnuSeparadorTarjetaContado
      Caption = "-"
    End
    Begin VB.Menu mnuTarjetaContado
      Caption = "&Tarjeta Contado"
    End
    Begin VB.Menu mnuSeparadorServiclub
      Caption = "-"
    End
    Begin VB.Menu mnuServiclub
      Caption = "Ser&viclub"
    End
    Begin VB.Menu mnugenericReportes0
      Visible = 0   'False
      Caption = "genericReportes"
      Begin VB.Menu mnugenericSubReportes0
        Index = 0
        Caption = "genericSubReportes"
      End
    End
    Begin VB.Menu mnugenericReportes1
      Visible = 0   'False
      Caption = "genericReportes"
      Begin VB.Menu mnugenericSubReportes1
        Index = 0
        Caption = "genericSubReportes"
      End
    End
    Begin VB.Menu mnugenericReportes2
      Visible = 0   'False
      Caption = "genericReportes"
      Begin VB.Menu mnugenericSubReportes2
        Index = 0
        Caption = "genericSubReportes"
      End
    End
    Begin VB.Menu mnugenericReportes
      Index = 0
      Visible = 0   'False
      Caption = "genericReportes"
    End
  End
  Begin VB.Menu menu
    Index = 0
    Caption = "&Tarjetas de Credito"
    Begin VB.Menu SubMenu0
      Index = 0
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 1
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 2
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 3
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 4
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 5
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 6
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 7
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 8
      Caption = "SubMenu0"
    End
    Begin VB.Menu SubMenu0
      Index = 9
      Caption = "SubMenu0"
    End
    Begin VB.Menu mnugenericTarjetas0
      Visible = 0   'False
      Caption = "genericTarjetas"
      Begin VB.Menu mnugenericSubTarjetas0
        Index = 0
        Caption = "genericSubTarjetas"
      End
    End
    Begin VB.Menu mnugenericTarjetas1
      Visible = 0   'False
      Caption = "genericTarjetas"
      Begin VB.Menu mnugenericSubTarjetas1
        Index = 0
        Caption = "genericSubTarjetas"
      End
    End
    Begin VB.Menu mnugenericTarjetas2
      Visible = 0   'False
      Caption = "genericTarjetas"
      Begin VB.Menu mnugenericSubTarjetas2
        Index = 0
        Caption = "genericSubTarjetas"
      End
    End
    Begin VB.Menu mnugenericTarjetas
      Index = 0
      Visible = 0   'False
      Caption = "genericTarjetas"
    End
  End
  Begin VB.Menu TANKS
    Caption = "&Menu de Tanques"
  End
  Begin VB.Menu GESTION
    Caption = "&Gestion"
    Begin VB.Menu CLIENTES
      Caption = "&Clientes"
    End
    Begin VB.Menu Emision_Libro_IVA
      Caption = "&Libro IVA"
    End
    Begin VB.Menu RESUMEN_DE_CUENTA
      Caption = "&Resumen de Cuenta"
    End
    Begin VB.Menu Ingreso_Recibos
      Caption = "&Ingreso Recibo"
    End
    Begin VB.Menu CAMBIO_NRO_COMPRO
      Caption = "&Número de Comprobantes"
    End
    Begin VB.Menu mnuListadoClientes
      Caption = "Li&stado de Clientes"
    End
    Begin VB.Menu mnuSeparadorGestion
      Caption = "-"
    End
    Begin VB.Menu mnuUltimaFacturaDif
      Caption = "Reimprimir &Ultima Factura Diferencia"
    End
    Begin VB.Menu mnugenericGestion0
      Visible = 0   'False
      Caption = "genericGestion"
      Begin VB.Menu mnugenericSubGestion0
        Index = 0
        Caption = "genericSubGestion"
      End
    End
    Begin VB.Menu mnugenericGestion1
      Visible = 0   'False
      Caption = "genericGestion"
      Begin VB.Menu mnugenericSubGestion1
        Index = 0
        Caption = "genericSubGestion"
      End
    End
    Begin VB.Menu mnugenericGestion2
      Visible = 0   'False
      Caption = "genericGestion"
      Begin VB.Menu mnugenericSubGestion2
        Index = 0
        Caption = "genericSubGestion"
      End
    End
    Begin VB.Menu mnugenericGestion
      Index = 0
      Visible = 0   'False
      Caption = "genericGestion"
    End
  End
  Begin VB.Menu menuPrecios
    Caption = "&Precios"
    Begin VB.Menu SETUP_PPU
      Caption = "&Programación de Precios"
    End
    Begin VB.Menu PreciosComp
      Caption = "Precios de la &Competencia"
    End
    Begin VB.Menu mnuPPP
      Visible = 0   'False
      Caption = "P&recio Promedio Ponderado"
    End
    Begin VB.Menu menuSeparadorPrecios1
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu PriceLevel
      Caption = "Niveles de Precio"
    End
    Begin VB.Menu PRECIOS_PENDIENTES
      Caption = "Precios P&endientes"
    End
    Begin VB.Menu Comisiones
      Caption = "&Comisiones"
    End
    Begin VB.Menu SETUP_DECIMAL
      Caption = "&Opción Decimal"
    End
    Begin VB.Menu mnuTiempoEspera
      Caption = "&Tiempo de Espera"
    End
    Begin VB.Menu menuSeparadorPrecios2
      Caption = "-"
    End
    Begin VB.Menu AssertNewCodes
      Caption = "&Actualización de Productos"
    End
    Begin VB.Menu mnugenericPrecios0
      Visible = 0   'False
      Caption = "genericPrecios"
      Begin VB.Menu mnugenericSubPrecios0
        Index = 0
        Caption = "genericSubPrecios"
      End
    End
    Begin VB.Menu mnugenericPrecios1
      Visible = 0   'False
      Caption = "genericPrecios"
      Begin VB.Menu mnugenericSubPrecios1
        Index = 0
        Caption = "genericSubPrecios"
      End
    End
    Begin VB.Menu mnugenericPrecios2
      Visible = 0   'False
      Caption = "genericPrecios"
      Begin VB.Menu mnugenericSubPrecios2
        Index = 0
        Caption = "genericSubPrecios"
      End
    End
    Begin VB.Menu mnugenericPrecios
      Index = 0
      Visible = 0   'False
      Caption = "genericPrecios"
    End
  End
  Begin VB.Menu SETUP
    Caption = "Configuració&n"
    Begin VB.Menu mnuConfiguracionEstacion
      Caption = "&Configuración de la Estación"
      Begin VB.Menu Menu_Seguridad
        Caption = "Seg&uridad"
      End
      Begin VB.Menu CambiodeClave
        Caption = "Cam&bio de Claves"
      End
      Begin VB.Menu GESTION_PUERTOS
        Caption = "&Gestion de Puertos"
      End
      Begin VB.Menu SETUP_AUTORIZA
        Caption = "&Autorización del Despacho"
      End
      Begin VB.Menu MnuLogUsuarios
        Caption = "Log de usuarios"
      End
      Begin VB.Menu LOG_Event
        Caption = "E&ventos de Log"
      End
      Begin VB.Menu TarjetadeCredito
        Caption = "&Tarjetas de Crédito"
      End
      Begin VB.Menu mnuAplicaciones
        Caption = "A&plicaciones"
      End
    End
    Begin VB.Menu mnuImpresionReportes
      Caption = "Impre&sión de Reportes"
      Begin VB.Menu mnuCierreTurno
        Caption = "Cierre de &Turno"
        Checked = -1  'True
      End
      Begin VB.Menu mnuCierreDia
        Caption = "Cierre de &Día"
        Checked = -1  'True
      End
      Begin VB.Menu mnuCierreMes
        Caption = "Cierre de &Mes"
        Checked = -1  'True
      End
      Begin VB.Menu mnuPrintTotalsCTF
        Visible = 0   'False
        Caption = "Totales de &CTF"
        Checked = -1  'True
      End
    End
    Begin VB.Menu mnuSeccionesReporte
      Caption = "Se&cciones de Reportes"
    End
    Begin VB.Menu mnuAdministracionRemota
      Visible = 0   'False
      Caption = "Administración Remota"
    End
    Begin VB.Menu mnuMantenimiento
      Caption = "&Mantenimiento"
      Begin VB.Menu SETUP_MANUAL
        Caption = "Menú Edi&tor"
      End
      Begin VB.Menu mnuDesity
        Caption = "&Densidad"
      End
      Begin VB.Menu IMPORTA_37
        Caption = "Importación de Datos CEM - 3&7"
      End
      Begin VB.Menu mnuPumpIni
        Caption = "&Inicializar surtidores"
      End
      Begin VB.Menu SETUP_CONSOLA
        Caption = "C&onsola"
      End
      Begin VB.Menu DATOS_REGIONALES
        Caption = "&Datos Regionales"
      End
      Begin VB.Menu SETUP_STATION
        Caption = "Datos &Estación"
      End
      Begin VB.Menu mnuAdministraciónDeServicios
        Visible = 0   'False
        Caption = "Ad&ministracion de servicios"
      End
      Begin VB.Menu SETUP_STORE
        Caption = "A&lmacenar Copia en Diskette"
      End
      Begin VB.Menu SETUP_RESTORE
        Caption = "&Recuperar Copia en Diskette"
      End
      Begin VB.Menu mnuColor
        Caption = "&Color de Producto"
      End
    End
    Begin VB.Menu mnuABM
      Caption = "ABM Administradores"
    End
    Begin VB.Menu menuSepradorConfig1
      Caption = "-"
    End
    Begin VB.Menu mnuControlTanques
      Caption = "Co&ntrol de Tanques"
    End
    Begin VB.Menu MnuConvert
      Caption = "Convertir Unidades de Medida"
    End
    Begin VB.Menu mnuControlPlayeros
      Caption = "Control de Pla&yeros"
    End
    Begin VB.Menu mnuTicket
      Caption = "Configuración de Tic&ket"
    End
    Begin VB.Menu mnuProgramacionEventos
      Caption = "Programación de Eventos"
      Begin VB.Menu mnuProgramacion
        Caption = "&Programación"
      End
      Begin VB.Menu mnuAlarmas
        Caption = "&Alarmas"
      End
    End
    Begin VB.Menu mnuGruposSurtidores
      Caption = "Gru&pos de Surtidores"
    End
    Begin VB.Menu menuSepradorConfig2
      Caption = "-"
    End
    Begin VB.Menu mnuPrintConfig
      Caption = "&Imprimir configuración"
    End
    Begin VB.Menu SETUP_RESET
      Visible = 0   'False
      Caption = "R&eset"
    End
    Begin VB.Menu mnuGenericConfig
      Index = 0
      Visible = 0   'False
      Caption = "GenericConfig"
    End
    Begin VB.Menu mnugenericConfiguracion0
      Visible = 0   'False
      Caption = "genericConfiguracion"
      Begin VB.Menu mnugenericSubConfiguracion0
        Index = 0
        Caption = "genericSubConfiguracion"
      End
    End
    Begin VB.Menu mnugenericConfiguracion1
      Visible = 0   'False
      Caption = "genericConfiguracion"
      Begin VB.Menu mnugenericSubConfiguracion1
        Index = 0
        Caption = "genericSubConfiguracion"
      End
    End
    Begin VB.Menu mnugenericConfiguracion2
      Visible = 0   'False
      Caption = "genericConfiguracion"
      Begin VB.Menu mnugenericSubConfiguracion2
        Index = 0
        Caption = "genericSubConfiguracion"
      End
    End
    Begin VB.Menu mnugenericConfiguracion
      Index = 0
      Visible = 0   'False
      Caption = "genericConfiguracion"
    End
  End
  Begin VB.Menu mnuAplic
    Caption = "A&plicaciones"
    Begin VB.Menu MnuLevel1
      Index = 1
      Caption = "level1"
    End
  End
  Begin VB.Menu mnuOperacionesEspecialesInutil
    Caption = "Operaciones &Manuales"
    Begin VB.Menu MnuBaja
      Caption = "&Baja de Consignados "
    End
    Begin VB.Menu MnuAltaconsig
      Caption = "&Alta de Consignados"
    End
    Begin VB.Menu MnuTotalizadores
      Caption = "&Totalizadores"
    End
    Begin VB.Menu mnuTanques
      Caption = "E&xistencias Volumétricas Mensuales"
    End
    Begin VB.Menu MnuTraspaso
      Caption = "Traspaso entre tanques"
    End
    Begin VB.Menu mnuOperacionesEspecialesn
      Caption = "Operaciones Diferenciales"
    End
    Begin VB.Menu mnuVentasn
      Caption = "Montos de Ventas"
    End
    Begin VB.Menu mnugenericOperMan0
      Visible = 0   'False
      Caption = "genericOperMan"
      Begin VB.Menu mnugenericSubOperMan0
        Index = 0
        Caption = "genericSubOperMan"
      End
    End
    Begin VB.Menu mnugenericOperMan1
      Visible = 0   'False
      Caption = "genericOperMan"
      Begin VB.Menu mnugenericSubOperMan1
        Index = 0
        Caption = "genericSubOperMan"
      End
    End
    Begin VB.Menu mnugenericOperMan2
      Visible = 0   'False
      Caption = "genericOperMan"
      Begin VB.Menu mnugenericSubOperMan2
        Index = 0
        Caption = "genericSubOperMan"
      End
    End
    Begin VB.Menu mnugenericOperMan
      Index = 0
      Visible = 0   'False
      Caption = "genericOperMan"
    End
  End
  Begin VB.Menu mnuMinimizar
    Visible = 0   'False
    Caption = "&Minimizar"
  End
  Begin VB.Menu mnuVolver
    Visible = 0   'False
    Caption = ""
    Enabled = 0   'False
    Begin VB.Menu mnuRestaurar
      Caption = "Restaurar"
    End
    Begin VB.Menu mnuAlSalir
      Caption = "Salir"
    End
  End
  Begin VB.Menu mnuCerrarConsola
    Caption = "&Salir"
  End
  Begin VB.Menu frmAcercaDe
    Caption = "&Acerca de..."
  End
End

Attribute VB_Name = "Formx"

Public Cancelado As Boolean
Public playa As New Class
Public oCCemLicence As New Class
Public sFlotasEXE As String
Public sServiclubEXE As String
Public sTarjetaContadoEXE As String
Public sSeccionesSeleccionadas As String
Public nMedioPagoFlota As Integer
Public apies As String

Private Type UDT_1_0046FB24
  bStruc(40) As Byte ' String fields: 1
End Type

Private Type UDT_2_0046FB34
  bStruc(56) As Byte ' String fields: 8
End Type

Private Type UDT_3_0046FB84
  bStruc(116) As Byte ' String fields: 8
End Type

Private Type UDT_4_0046FBB0
  bStruc(152) As Byte ' String fields: 1
End Type


Private Sub Comisiones_Click() '5EDB08
  'Data Table: 460894
  loc_5EDA84: LitI4 &HF
  loc_5EDA89: ImpAdLdRf MemVar_74A170
  loc_5EDA8C: Ary1LdI2
  loc_5EDA8D: NotI4
  loc_5EDA8E: CVarBoolI2 var_104
  loc_5EDA92: LitVarI2 var_B4, 3
  loc_5EDA97: LitI4 1
  loc_5EDA9C: ImpAdLdRf MemVar_74BF90
  loc_5EDA9F: CVarRef
  loc_5EDAA4: FLdRfVar var_C4
  loc_5EDAA7: ImpAdCallFPR4  = Mid(, , )
  loc_5EDAAC: FLdRfVar var_C4
  loc_5EDAAF: LitVarStr var_D4, "\\."
  loc_5EDAB4: HardType
  loc_5EDAB5: EqVar var_E4
  loc_5EDAB9: NotVar var_F4
  loc_5EDABD: AndVar var_114
  loc_5EDAC1: CBoolVarNull
  loc_5EDAC3: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EDACC: BranchF loc_5EDAD5
  loc_5EDACF: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EDAD4: ExitProcHresult
  loc_5EDAD5: LitI2_Byte &H1F
  loc_5EDAD7: PopTmpLdAd2 var_116
  loc_5EDADA: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EDADF: NotI4
  loc_5EDAE0: BranchF loc_5EDAE4
  loc_5EDAE3: ExitProcHresult
  loc_5EDAE4: LitI2_Byte 0
  loc_5EDAE6: PopTmpLdAd2 var_116
  loc_5EDAE9: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5EDAEE: BranchF loc_5EDB06
  loc_5EDAF1: LitVar_Missing var_A4
  loc_5EDAF4: PopAdLdVar
  loc_5EDAF5: LitVarI2 var_94, 1
  loc_5EDAFA: PopAdLdVar
  loc_5EDAFB: ImpAdLdRf MemVar_74C828
  loc_5EDAFE: NewIfNullPr FComisiones
  loc_5EDB01: FComisiones.Show from_stack_1, from_stack_2
  loc_5EDB06: ExitProcHresult
End Sub

Private Sub mnuRestaurar_Click() '5EFA4C
  'Data Table: 460894
  loc_5EF9D0: ImpAdLdRf MemVar_74C760
  loc_5EF9D3: NewIfNullAd
  loc_5EF9D6: FStAd var_8C 
  loc_5EF9DA: LitVar_Missing var_AC
  loc_5EF9DD: PopAdLdVar
  loc_5EF9DE: LitVar_Missing var_9C
  loc_5EF9E1: PopAdLdVar
  loc_5EF9E2: FLdPrThis
  loc_5EF9E3: Me.Show from_stack_1, from_stack_2
  loc_5EF9E8: LitI4 &H58
  loc_5EF9ED: FLdPr Me
  loc_5EF9F0: MemStI4 sSeccionesSeleccionadas92
  loc_5EF9F3: FLdRfVar var_B4
  loc_5EF9F6: FLdPrThis
  loc_5EF9F7: VCallAd Control_ID_Picture1
  loc_5EF9FA: FStAdFunc var_B0
  loc_5EF9FD: FLdPr var_B0
  loc_5EFA00:  = Me.hWnd
  loc_5EFA05: ILdRf var_B4
  loc_5EFA08: FLdPr Me
  loc_5EFA0B: MemStI4 sSeccionesSeleccionadas96
  loc_5EFA0E: FFree1Ad var_B0
  loc_5EFA11: LitI4 1
  loc_5EFA16: FLdPr Me
  loc_5EFA19: MemStI4 global_7700
  loc_5EFA1C: FLdPr Me
  loc_5EFA1F: MemLdRfVar from_stack_1.sSeccionesSeleccionadas92
  loc_5EFA22: FLdRfVar var_10C
  loc_5EFA25: CRec2Ansi arg_1B9
  loc_5EFA28: FLdRfVar var_10C
  loc_5EFA2B: LitI4 2
  loc_5EFA30: ImpAdCallFPR4 Shell_NotifyIcon(, )
  loc_5EFA35: SetLastSystemError
  loc_5EFA36: FLdRfVar var_10C
  loc_5EFA39: FLdPr Me
  loc_5EFA3C: MemLdRfVar from_stack_1.sSeccionesSeleccionadas92
  loc_5EFA3F: CRec2Uni arg_1B9
  loc_5EFA42: LitNothing
  loc_5EFA44: FStAd var_8C 
  loc_5EFA48: ExitProcHresult
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '607B94
  'Data Table: 460894
  loc_607AA8: FLdRfVar var_8C
  loc_607AAB: FLdRfVar var_88
  loc_607AAE: ImpAdLdRf MemVar_7520D4
  loc_607AB1: NewIfNullPr Global
  loc_607AB4:  = Global.Screen
  loc_607AB9: FLdPr var_88
  loc_607ABC:  = Screen.TwipsPerPixelX
  loc_607AC1: ILdFPR4 X
  loc_607AC4: FLdFPR4 var_8C
  loc_607AC7: DivR8
  loc_607AC8: CI4R8
  loc_607AC9: FMemLdPr
  loc_607ACE: MemStI4 global_8
  loc_607AD1: FFree1Ad var_88
  loc_607AD4: FMemLdPr
  loc_607AD9: MemLdI2 global_4
  loc_607ADC: LitI2_Byte 0
  loc_607ADE: EqI2
  loc_607ADF: BranchF loc_607B93
  loc_607AE2: LitI2_Byte &HFF
  loc_607AE4: FMemLdPr
  loc_607AE9: MemStI2 global_4
  loc_607AEC: FMemLdPr
  loc_607AF1: MemLdStr global_8
  loc_607AF4: FStR4 var_90
  loc_607AF7: ILdRf var_90
  loc_607AFA: LitI4 &H203
  loc_607AFF: EqI4
  loc_607B00: BranchF loc_607B06
  loc_607B03: Branch loc_607B89
  loc_607B06: ILdRf var_90
  loc_607B09: LitI4 &H201
  loc_607B0E: EqI4
  loc_607B0F: BranchF loc_607B15
  loc_607B12: Branch loc_607B89
  loc_607B15: ILdRf var_90
  loc_607B18: LitI4 &H202
  loc_607B1D: EqI4
  loc_607B1E: BranchF loc_607B29
  loc_607B21: Call mnuRestaurar_Click()
  loc_607B26: Branch loc_607B89
  loc_607B29: ILdRf var_90
  loc_607B2C: LitI4 &H206
  loc_607B31: EqI4
  loc_607B32: BranchF loc_607B38
  loc_607B35: Branch loc_607B89
  loc_607B38: ILdRf var_90
  loc_607B3B: LitI4 &H204
  loc_607B40: EqI4
  loc_607B41: BranchF loc_607B47
  loc_607B44: Branch loc_607B89
  loc_607B47: ILdRf var_90
  loc_607B4A: LitI4 &H205
  loc_607B4F: EqI4
  loc_607B50: BranchF loc_607B89
  loc_607B53: FLdPrThis
  loc_607B54: VCallAd Control_ID_mnuVolver
  loc_607B57: FStAdFunc var_D4
  loc_607B5A: FLdPrThis
  loc_607B5B: VCallAd Control_ID_mnuRestaurar
  loc_607B5E: CVarAd
  loc_607B62: PopAdLdVar
  loc_607B63: LitVar_Missing var_C0
  loc_607B66: PopAdLdVar
  loc_607B67: LitVar_Missing var_B0
  loc_607B6A: PopAdLdVar
  loc_607B6B: LitVarI2 var_A0, 2
  loc_607B70: PopAdLdVar
  loc_607B71: FLdZeroAd var_D4
  loc_607B74: FStAdFuncNoPop
  loc_607B77: FLdPr Me
  loc_607B7A: Me.PopupMenu from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5
  loc_607B7F: FFreeAd var_88 = ""
  loc_607B86: FFree1Var var_D0 = ""
  loc_607B89: LitI2_Byte 0
  loc_607B8B: FMemLdPr
  loc_607B90: MemStI2 global_4
  loc_607B93: ExitProcHresult
End Sub

Private Sub AssertNewCodes_Click() '620F78
  'Data Table: 460894
  loc_620E30: LitI2_Byte &H28
  loc_620E32: PopTmpLdAd2 var_8A
  loc_620E35: ImpAdCallI2 Proc_94_7_603DD0()
  loc_620E3A: NotI4
  loc_620E3B: BranchF loc_620E3F
  loc_620E3E: ExitProcHresult
  loc_620E3F: LitVar_Missing var_EC
  loc_620E42: LitVar_Missing var_CC
  loc_620E45: FLdPr Me
  loc_620E48: MemLdRfVar from_stack_1.global_7392
  loc_620E4B: CVarRef
  loc_620E50: LitI4 &H24
  loc_620E55: FLdPr Me
  loc_620E58: MemLdRfVar from_stack_1.global_7388
  loc_620E5B: CVarRef
  loc_620E60: ImpAdCallI2 MsgBox(, , , , )
  loc_620E65: LitI4 6
  loc_620E6A: EqI4
  loc_620E6B: FFreeVar var_CC = ""
  loc_620E72: BranchF loc_620F77
  loc_620E75: FLdRfVar var_CC
  loc_620E78: FLdRfVar var_88
  loc_620E7B: FLdRfVar var_F0
  loc_620E7E: ImpAdLdRf MemVar_74C760
  loc_620E81: NewIfNullPr Formx
  loc_620E84: from_stack_1v = Formx.global_4589716Get()
  loc_620E89: FLdPr var_F0
  loc_620E8C: Call 0.Method_arg_1AC ()
  loc_620E91: FLdRfVar var_CC
  loc_620E94: NotVar var_EC
  loc_620E98: CBoolVarNull
  loc_620E9A: FFree1Ad var_F0
  loc_620E9D: FFree1Var var_CC = ""
  loc_620EA0: BranchF loc_620ECF
  loc_620EA3: FLdRfVar var_CC
  loc_620EA6: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_620EAB: FLdRfVar var_CC
  loc_620EAE: CBoolVarNull
  loc_620EB0: FFree1Var var_CC = ""
  loc_620EB3: BranchF loc_620ECC
  loc_620EB6: ILdRf Me
  loc_620EB9: FStAdNoPop
  loc_620EBD: ImpAdLdRf MemVar_7520D4
  loc_620EC0: NewIfNullPr Global
  loc_620EC3: Global.Unload from_stack_1
  loc_620EC8: FFree1Ad var_F0
  loc_620ECB: ExitProcHresult
  loc_620ECC: Branch loc_620E75
  loc_620ECF: FLdRfVar var_88
  loc_620ED2: CVarRef
  loc_620ED7: FLdRfVar var_CC
  loc_620EDA: ImpAdCallFPR4  = Trim()
  loc_620EDF: FLdRfVar var_CC
  loc_620EE2: CStrVarTmp
  loc_620EE3: FStStr var_88
  loc_620EE6: FFree1Var var_CC = ""
  loc_620EE9: ILdRf var_88
  loc_620EEC: LitStr "0"
  loc_620EEF: EqStr
  loc_620EF1: BranchF loc_620F5E
  loc_620EF4: LitI4 &HD
  loc_620EF9: ImpAdCallI2 Chr$()
  loc_620EFE: FStStr var_11C
  loc_620F01: LitVar_Missing var_118
  loc_620F04: LitVar_Missing var_108
  loc_620F07: LitVar_Missing var_EC
  loc_620F0A: LitI4 &H40
  loc_620F0F: FLdPr Me
  loc_620F12: MemLdStr global_7396
  loc_620F15: FLdZeroAd var_11C
  loc_620F18: FStStrNoPop var_F4
  loc_620F1B: ConcatStr
  loc_620F1C: FStStrNoPop var_F8
  loc_620F1F: FLdPr Me
  loc_620F22: MemLdStr global_7400
  loc_620F25: ConcatStr
  loc_620F26: CVarStr var_CC
  loc_620F29: ImpAdCallFPR4 MsgBox(, , , , )
  loc_620F2E: FFreeStr var_F4 = "": var_F8 = ""
  loc_620F37: FFreeVar var_CC = "": var_EC = "": var_108 = ""
  loc_620F42: LitI2_Byte &HFF
  loc_620F44: ImpAdLdRf MemVar_74C760
  loc_620F47: NewIfNullPr Formx
  loc_620F4A: VCallAd Control_ID_AssertNewCodes
  loc_620F4D: FStAdFunc var_F0
  loc_620F50: FLdPr var_F0
  loc_620F53: Formx.Menu.Enabled = from_stack_1b
  loc_620F58: FFree1Ad var_F0
  loc_620F5B: Branch loc_620F77
  loc_620F5E: LitI2_Byte 0
  loc_620F60: ImpAdLdRf MemVar_74C760
  loc_620F63: NewIfNullPr Formx
  loc_620F66: VCallAd Control_ID_AssertNewCodes
  loc_620F69: FStAdFunc var_F0
  loc_620F6C: FLdPr var_F0
  loc_620F6F: Formx.Menu.Enabled = from_stack_1b
  loc_620F74: FFree1Ad var_F0
  loc_620F77: ExitProcHresult
End Sub

Private Sub Form_Load() '5E9400
  'Data Table: 460894
  loc_5E9388: from_stack_1v = Proc_162_212_690E38()
  loc_5E938D: ImpAdCallFPR4 Proc_167_21_5D31A4()
  loc_5E9392: FLdRfVar var_8C
  loc_5E9395: FLdRfVar var_88
  loc_5E9398: ImpAdLdRf MemVar_7520D4
  loc_5E939B: NewIfNullPr Global
  loc_5E939E:  = Global.App
  loc_5E93A3: FLdPr var_88
  loc_5E93A6:  = App.Path
  loc_5E93AB: ILdRf var_8C
  loc_5E93AE: LitStr "\reporte.mdb"
  loc_5E93B1: ConcatStr
  loc_5E93B2: FStStrNoPop var_90
  loc_5E93B5: FLdPrThis
  loc_5E93B6: VCallAd Control_ID_Data1
  loc_5E93B9: FStAdFunc var_94
  loc_5E93BC: FLdPr var_94
  loc_5E93BF: Me.DatabaseName = from_stack_1
  loc_5E93C4: FFreeStr var_8C = ""
  loc_5E93CB: FFreeAd var_88 = ""
  loc_5E93D2: LitStr "logo"
  loc_5E93D5: FLdPrThis
  loc_5E93D6: VCallAd Control_ID_Data1
  loc_5E93D9: FStAdFunc var_88
  loc_5E93DC: FLdPr var_88
  loc_5E93DF: Me.RecordSource = from_stack_1
  loc_5E93E4: FFree1Ad var_88
  loc_5E93E7: LitI2_Byte 0
  loc_5E93E9: FLdPr Me
  loc_5E93EC: MemStI2 sSeccionesSeleccionadas84
  loc_5E93EF: LitI2_Byte 0
  loc_5E93F1: FLdPr Me
  loc_5E93F4: MemStI2 global_88
  loc_5E93F7: from_stack_1v = Proc_162_238_5EF23C()
  loc_5E93FC: ExitProcHresult
  loc_5E93FD: FLdRfVar arg_7000
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '5F64A0
  'Data Table: 460894
  loc_5F640C: ImpAdCallI2 Proc_167_3_5E99D0()
  loc_5F6411: BranchF loc_5F649C
  loc_5F6414: LitI4 &H58
  loc_5F6419: FLdPr Me
  loc_5F641C: MemStI4 sSeccionesSeleccionadas92
  loc_5F641F: FLdRfVar var_8C
  loc_5F6422: FLdPrThis
  loc_5F6423: VCallAd Control_ID_Picture1
  loc_5F6426: FStAdFunc var_88
  loc_5F6429: FLdPr var_88
  loc_5F642C:  = Me.hWnd
  loc_5F6431: ILdRf var_8C
  loc_5F6434: FLdPr Me
  loc_5F6437: MemStI4 sSeccionesSeleccionadas96
  loc_5F643A: FFree1Ad var_88
  loc_5F643D: LitI4 1
  loc_5F6442: FLdPr Me
  loc_5F6445: MemStI4 global_7700
  loc_5F6448: FLdPr Me
  loc_5F644B: MemLdRfVar from_stack_1.sSeccionesSeleccionadas92
  loc_5F644E: FLdRfVar var_E4
  loc_5F6451: CRec2Ansi arg_1B9
  loc_5F6454: FLdRfVar var_E4
  loc_5F6457: LitI4 2
  loc_5F645C: ImpAdCallFPR4 Shell_NotifyIcon(, )
  loc_5F6461: SetLastSystemError
  loc_5F6462: FLdRfVar var_E4
  loc_5F6465: FLdPr Me
  loc_5F6468: MemLdRfVar from_stack_1.sSeccionesSeleccionadas92
  loc_5F646B: CRec2Uni arg_1B9
  loc_5F646E: LitVar_Missing var_164
  loc_5F6471: LitVar_Missing var_144
  loc_5F6474: LitVar_Missing var_124
  loc_5F6477: LitI4 0
  loc_5F647C: LitVarStr var_F4, "No se puede cerrar la aplicacion"
  loc_5F6481: FStVarCopyObj var_104
  loc_5F6484: FLdRfVar var_104
  loc_5F6487: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F648C: FFreeVar var_104 = "": var_124 = "": var_144 = ""
  loc_5F6497: LitI2_Byte 1
  loc_5F6499: IStI2 Cancel
  loc_5F649C: ExitProcHresult
End Sub

Private Sub Form_Activate() '5E5D3C
  'Data Table: 460894
  loc_5E5CD0: OnErrorGoto loc_5E5D39
  loc_5E5CD3: LitI2_Byte 0
  loc_5E5CD5: ImpAdStI2 MemVar_74C7B0
  loc_5E5CD8: from_stack_1v = Proc_162_196_6650BC()
  loc_5E5CDD: from_stack_1v = Proc_162_197_6B0634()
  loc_5E5CE2: LitVarI2 var_B4, 1
  loc_5E5CE7: LitI4 &HC
  loc_5E5CEC: ImpAdLdRf MemVar_74BEAC
  loc_5E5CEF: CVarRef
  loc_5E5CF4: FLdRfVar var_C4
  loc_5E5CF7: ImpAdCallFPR4  = Mid(, , )
  loc_5E5CFC: FLdRfVar var_C4
  loc_5E5CFF: LitVarStr var_D4, "1"
  loc_5E5D04: HardType
  loc_5E5D05: EqVar var_E4
  loc_5E5D09: FLdPr Me
  loc_5E5D0C: MemLdI2 sSeccionesSeleccionadas84
  loc_5E5D0F: NotI4
  loc_5E5D10: CVarBoolI2 var_F4
  loc_5E5D14: AndVar var_104
  loc_5E5D18: CBoolVarNull
  loc_5E5D1A: FFreeVar var_B4 = "": var_C4 = ""
  loc_5E5D23: BranchF loc_5E5D33
  loc_5E5D26: LitI2_Byte &HFF
  loc_5E5D28: FLdPr Me
  loc_5E5D2B: MemStI2 sSeccionesSeleccionadas84
  loc_5E5D2E: from_stack_1v = Proc_162_213_603728()
  loc_5E5D33: ImpAdCallFPR4 Proc_167_15_5DAA44()
  loc_5E5D38: ExitProcHresult
  loc_5E5D39: ExitProcHresult
End Sub

Private Sub Form_GotFocus() '5C9688
  'Data Table: 460894
  loc_5C9680: LitI2_Byte 0
  loc_5C9682: ImpAdStI2 MemVar_74C7B0
  loc_5C9685: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '6C8D24
  'Data Table: 460894
  loc_6C8444: FMemLdPr
  loc_6C8449: MemLdStr global_0
  loc_6C844C: CVarStr var_B0
  loc_6C844F: ILdI2 KeyAscii
  loc_6C8452: CI4UI1
  loc_6C8453: FLdRfVar var_A0
  loc_6C8456: ImpAdCallFPR4  = Chr()
  loc_6C845B: FLdRfVar var_A0
  loc_6C845E: ConcatVar var_C0
  loc_6C8462: CStrVarTmp
  loc_6C8463: FStStrNoPop var_C4
  loc_6C8466: FMemLdPr
  loc_6C846B: MemStStrCopy
  loc_6C846F: FFree1Str var_C4
  loc_6C8472: FFreeVar var_A0 = ""
  loc_6C8479: FMemLdPr
  loc_6C847E: MemLdStr global_0
  loc_6C8481: FnLenStr
  loc_6C8482: LitI4 1
  loc_6C8487: EqI4
  loc_6C8488: BranchF loc_6C84A6
  loc_6C848B: LitStr " "
  loc_6C848E: FMemLdPr
  loc_6C8493: MemLdStr global_0
  loc_6C8496: ConcatStr
  loc_6C8497: FStStrNoPop var_C4
  loc_6C849A: FMemLdPr
  loc_6C849F: MemStStrCopy
  loc_6C84A3: FFree1Str var_C4
  loc_6C84A6: FMemLdPr
  loc_6C84AB: MemLdStr global_0
  loc_6C84AE: FnLenStr
  loc_6C84AF: LitI4 8
  loc_6C84B4: EqI4
  loc_6C84B5: BranchF loc_6C8CDF
  loc_6C84B8: FMemLdPr
  loc_6C84BD: MemLdStr global_0
  loc_6C84C0: FnLenStr
  loc_6C84C1: LitI4 1
  loc_6C84C6: SubI4
  loc_6C84C7: FMemLdPr
  loc_6C84CC: MemLdRfVar from_stack_1.global_0
  loc_6C84CF: CVarRef
  loc_6C84D4: FLdRfVar var_A0
  loc_6C84D7: ImpAdCallFPR4  = Right(, )
  loc_6C84DC: FLdRfVar var_A0
  loc_6C84DF: CStrVarTmp
  loc_6C84E0: FStStrNoPop var_C4
  loc_6C84E3: FMemLdPr
  loc_6C84E8: MemStStrCopy
  loc_6C84EC: FFree1Str var_C4
  loc_6C84EF: FFree1Var var_A0 = ""
  loc_6C84F2: FMemLdPr
  loc_6C84F7: MemLdRfVar from_stack_1.global_0
  loc_6C84FA: CVarRef
  loc_6C84FF: FLdRfVar var_A0
  loc_6C8502: ImpAdCallFPR4  = Ucase()
  loc_6C8507: LitVarI2 var_F8, 2
  loc_6C850C: LitI4 6
  loc_6C8511: FMemLdPr
  loc_6C8516: MemLdStr global_0
  loc_6C8519: ImpAdCallI2 Mid$(, , )
  loc_6C851E: FStStrNoPop var_FC
  loc_6C8521: ImpAdCallFPR4 push Val()
  loc_6C8526: FStFPR8 var_108
  loc_6C8529: LitVarI2 var_C0, 5
  loc_6C852E: LitI4 1
  loc_6C8533: FLdRfVar var_A0
  loc_6C8536: CStrVarVal var_C4
  loc_6C853A: ImpAdCallI2 Mid$(, , )
  loc_6C853F: FStStrNoPop var_D8
  loc_6C8542: LitStr "MCSLA"
  loc_6C8545: EqStr
  loc_6C8547: FLdRfVar var_100
  loc_6C854A: FLdFPR8 var_108
  loc_6C854D: CI2R8
  loc_6C854E: PopTmpLdAd2 var_FE
  loc_6C8551: from_stack_2v = Proc_162_231_5ED8A0(from_stack_1v)
  loc_6C8556: FLdI2 var_100
  loc_6C8559: AndI4
  loc_6C855A: FFreeStr var_C4 = "": var_D8 = ""
  loc_6C8563: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C856C: BranchF loc_6C8596
  loc_6C856F: LitI4 3
  loc_6C8574: LitVarStr var_B0, "explorer"
  loc_6C8579: FStVarCopyObj var_A0
  loc_6C857C: FLdRfVar var_A0
  loc_6C857F: ImpAdCallFPR4 push Shell(, )
  loc_6C8584: FStFPR8 var_108
  loc_6C8587: FFree1Var var_A0 = ""
  loc_6C858A: LitStr vbNullString
  loc_6C858D: FMemLdPr
  loc_6C8592: MemStStrCopy
  loc_6C8596: FMemLdPr
  loc_6C859B: MemLdRfVar from_stack_1.global_0
  loc_6C859E: CVarRef
  loc_6C85A3: FLdRfVar var_A0
  loc_6C85A6: ImpAdCallFPR4  = Ucase()
  loc_6C85AB: FLdRfVar var_A0
  loc_6C85AE: FStVar var_118
  loc_6C85B2: FLdRfVar var_118
  loc_6C85B5: LitVarStr var_B0, "MCSLA44"
  loc_6C85BA: HardType
  loc_6C85BB: EqVarBool
  loc_6C85BD: BranchF loc_6C8654
  loc_6C85C0: LitI4 &HB
  loc_6C85C5: ImpAdLdRf MemVar_74A170
  loc_6C85C8: Ary1LdI2
  loc_6C85C9: NotI4
  loc_6C85CA: CVarBoolI2 var_138
  loc_6C85CE: LitVarI2 var_A0, 3
  loc_6C85D3: LitI4 1
  loc_6C85D8: ImpAdLdRf MemVar_74BF90
  loc_6C85DB: CVarRef
  loc_6C85E0: FLdRfVar var_C0
  loc_6C85E3: ImpAdCallFPR4  = Mid(, , )
  loc_6C85E8: FLdRfVar var_C0
  loc_6C85EB: LitVarStr var_E8, "\\."
  loc_6C85F0: HardType
  loc_6C85F1: EqVar var_F8
  loc_6C85F5: NotVar var_128
  loc_6C85F9: AndVar var_148
  loc_6C85FD: CBoolVarNull
  loc_6C85FF: FFreeVar var_A0 = "": var_C0 = ""
  loc_6C8608: BranchF loc_6C8611
  loc_6C860B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6C8610: ExitProcHresult
  loc_6C8611: LitVarI2 var_A0, 1
  loc_6C8616: LitI4 4
  loc_6C861B: ImpAdLdRf MemVar_74BEAC
  loc_6C861E: CVarRef
  loc_6C8623: FLdRfVar var_C0
  loc_6C8626: ImpAdCallFPR4  = Mid(, , )
  loc_6C862B: FLdRfVar var_C0
  loc_6C862E: LitVarStr var_E8, "1"
  loc_6C8633: HardType
  loc_6C8634: EqVarBool
  loc_6C8636: FFreeVar var_A0 = ""
  loc_6C863D: BranchF loc_6C864F
  loc_6C8640: LitI2_Byte &H51
  loc_6C8642: PopTmpLdAd2 var_FE
  loc_6C8645: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6C864A: NotI4
  loc_6C864B: BranchF loc_6C864F
  loc_6C864E: ExitProcHresult
  loc_6C864F: End
  loc_6C8651: Branch loc_6C8CDF
  loc_6C8654: FLdRfVar var_118
  loc_6C8657: LitVarStr var_B0, "PUMPINI"
  loc_6C865C: HardType
  loc_6C865D: EqVarBool
  loc_6C865F: BranchF loc_6C86B5
  loc_6C8662: LitI2_Byte &HA
  loc_6C8664: CUI1I2
  loc_6C8666: ImpAdLdRf MemVar_74DC58
  loc_6C8669: NewIfNullPr frmLogin
  loc_6C866C: Call frmLogin.NivelPut(from_stack_1v)
  loc_6C8671: LitVar_Missing var_D4
  loc_6C8674: PopAdLdVar
  loc_6C8675: LitVarI2 var_B0, 1
  loc_6C867A: PopAdLdVar
  loc_6C867B: ImpAdLdRf MemVar_74DC58
  loc_6C867E: NewIfNullPr frmLogin
  loc_6C8681: frmLogin.Show from_stack_1, from_stack_2
  loc_6C8686: FLdRfVar var_FE
  loc_6C8689: ImpAdLdRf MemVar_74DC58
  loc_6C868C: NewIfNullPr frmLogin
  loc_6C868F: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_6C8694: FLdI2 var_FE
  loc_6C8697: BranchF loc_6C86B2
  loc_6C869A: LitVar_Missing var_D4
  loc_6C869D: PopAdLdVar
  loc_6C869E: LitVarI4
  loc_6C86A6: PopAdLdVar
  loc_6C86A7: ImpAdLdRf MemVar_74D93C
  loc_6C86AA: NewIfNullPr frmInicializaSurtidores
  loc_6C86AD: frmInicializaSurtidores.Show from_stack_1, from_stack_2
  loc_6C86B2: Branch loc_6C8CDF
  loc_6C86B5: FLdRfVar var_118
  loc_6C86B8: LitVarStr var_B0, "CREDXXI"
  loc_6C86BD: HardType
  loc_6C86BE: EqVarBool
  loc_6C86C0: BranchF loc_6C8776
  loc_6C86C3: LitI2_Byte &HA
  loc_6C86C5: CUI1I2
  loc_6C86C7: ImpAdLdRf MemVar_74DC58
  loc_6C86CA: NewIfNullPr frmLogin
  loc_6C86CD: Call frmLogin.NivelPut(from_stack_1v)
  loc_6C86D2: LitVar_Missing var_D4
  loc_6C86D5: PopAdLdVar
  loc_6C86D6: LitVarI2 var_B0, 1
  loc_6C86DB: PopAdLdVar
  loc_6C86DC: ImpAdLdRf MemVar_74DC58
  loc_6C86DF: NewIfNullPr frmLogin
  loc_6C86E2: frmLogin.Show from_stack_1, from_stack_2
  loc_6C86E7: FLdRfVar var_FE
  loc_6C86EA: ImpAdLdRf MemVar_74DC58
  loc_6C86ED: NewIfNullPr frmLogin
  loc_6C86F0: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_6C86F5: FLdI2 var_FE
  loc_6C86F8: BranchF loc_6C8773
  loc_6C86FB: LitVar_Missing var_C0
  loc_6C86FE: LitVar_Missing var_A0
  loc_6C8701: FLdPr Me
  loc_6C8704: MemLdRfVar from_stack_1.global_7452
  loc_6C8707: CVarRef
  loc_6C870C: LitI4 &H24
  loc_6C8711: FLdPr Me
  loc_6C8714: MemLdRfVar from_stack_1.global_7448
  loc_6C8717: CVarRef
  loc_6C871C: ImpAdCallI2 MsgBox(, , , , )
  loc_6C8721: LitI4 6
  loc_6C8726: EqI4
  loc_6C8727: FFreeVar var_A0 = ""
  loc_6C872E: BranchF loc_6C8773
  loc_6C8731: FLdRfVar var_A0
  loc_6C8734: FLdRfVar var_14C
  loc_6C8737: ImpAdLdRf MemVar_74C760
  loc_6C873A: NewIfNullPr Formx
  loc_6C873D: from_stack_1v = Formx.global_4589716Get()
  loc_6C8742: FLdPr var_14C
  loc_6C8745:  = Formx.ClipControls
  loc_6C874A: FLdRfVar var_A0
  loc_6C874D: NotVar var_C0
  loc_6C8751: CBoolVarNull
  loc_6C8753: FFree1Ad var_14C
  loc_6C8756: FFree1Var var_A0 = ""
  loc_6C8759: BranchF loc_6C8773
  loc_6C875C: FLdRfVar var_A0
  loc_6C875F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C8764: FLdRfVar var_A0
  loc_6C8767: CBoolVarNull
  loc_6C8769: FFree1Var var_A0 = ""
  loc_6C876C: BranchF loc_6C8770
  loc_6C876F: ExitProcHresult
  loc_6C8770: Branch loc_6C8731
  loc_6C8773: Branch loc_6C8CDF
  loc_6C8776: FLdRfVar var_118
  loc_6C8779: LitVarStr var_B0, "TANQUES"
  loc_6C877E: HardType
  loc_6C877F: EqVarBool
  loc_6C8781: BranchF loc_6C880D
  loc_6C8784: FLdRfVar var_FE
  loc_6C8787: FLdRfVar var_14C
  loc_6C878A: ImpAdLdRf MemVar_74C760
  loc_6C878D: NewIfNullPr Formx
  loc_6C8790: from_stack_1v = Formx.global_4589716Get()
  loc_6C8795: FLdPr var_14C
  loc_6C8798: Call 0.Method_arg_240 ()
  loc_6C879D: FLdI2 var_FE
  loc_6C87A0: NotI4
  loc_6C87A1: FFree1Ad var_14C
  loc_6C87A4: BranchF loc_6C87BE
  loc_6C87A7: FLdRfVar var_A0
  loc_6C87AA: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C87AF: FLdRfVar var_A0
  loc_6C87B2: CBoolVarNull
  loc_6C87B4: FFree1Var var_A0 = ""
  loc_6C87B7: BranchF loc_6C87BB
  loc_6C87BA: ExitProcHresult
  loc_6C87BB: Branch loc_6C8784
  loc_6C87BE: LitI4 &HD
  loc_6C87C3: FLdRfVar var_A0
  loc_6C87C6: ImpAdCallFPR4  = Chr()
  loc_6C87CB: LitVar_Missing var_16C
  loc_6C87CE: LitVar_Missing var_148
  loc_6C87D1: LitVar_Missing var_128
  loc_6C87D4: LitI4 0
  loc_6C87D9: FLdPr Me
  loc_6C87DC: MemLdStr global_7456
  loc_6C87DF: CVarStr var_B0
  loc_6C87E2: FLdRfVar var_A0
  loc_6C87E5: ConcatVar var_C0
  loc_6C87E9: FLdPr Me
  loc_6C87EC: MemLdStr global_7460
  loc_6C87EF: CVarStr var_D4
  loc_6C87F2: ConcatVar var_F8
  loc_6C87F6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C87FB: FFreeVar var_A0 = "": var_C0 = "": var_F8 = "": var_128 = "": var_148 = ""
  loc_6C880A: Branch loc_6C8CDF
  loc_6C880D: FLdRfVar var_118
  loc_6C8810: LitVarStr var_B0, "INSTALA"
  loc_6C8815: HardType
  loc_6C8816: EqVarBool
  loc_6C8818: BranchF loc_6C8841
  loc_6C881B: LitStr "I"
  loc_6C881E: ImpAdLdRf MemVar_74D84C
  loc_6C8821: NewIfNullPr frmPuestaEnMarcha
  loc_6C8824: Call frmPuestaEnMarcha.sTipoPut(from_stack_1v)
  loc_6C8829: LitVar_Missing var_D4
  loc_6C882C: PopAdLdVar
  loc_6C882D: LitVarI2 var_B0, 1
  loc_6C8832: PopAdLdVar
  loc_6C8833: ImpAdLdRf MemVar_74D84C
  loc_6C8836: NewIfNullPr frmPuestaEnMarcha
  loc_6C8839: frmPuestaEnMarcha.Show from_stack_1, from_stack_2
  loc_6C883E: Branch loc_6C8CDF
  loc_6C8841: FLdRfVar var_118
  loc_6C8844: LitVarStr var_B0, "PRODUCC"
  loc_6C8849: HardType
  loc_6C884A: EqVarBool
  loc_6C884C: BranchF loc_6C8875
  loc_6C884F: LitStr "P"
  loc_6C8852: ImpAdLdRf MemVar_74D84C
  loc_6C8855: NewIfNullPr frmPuestaEnMarcha
  loc_6C8858: Call frmPuestaEnMarcha.sTipoPut(from_stack_1v)
  loc_6C885D: LitVar_Missing var_D4
  loc_6C8860: PopAdLdVar
  loc_6C8861: LitVarI2 var_B0, 1
  loc_6C8866: PopAdLdVar
  loc_6C8867: ImpAdLdRf MemVar_74D84C
  loc_6C886A: NewIfNullPr frmPuestaEnMarcha
  loc_6C886D: frmPuestaEnMarcha.Show from_stack_1, from_stack_2
  loc_6C8872: Branch loc_6C8CDF
  loc_6C8875: FLdRfVar var_118
  loc_6C8878: LitVarStr var_B0, "FASE II"
  loc_6C887D: HardType
  loc_6C887E: EqVarBool
  loc_6C8880: BranchF loc_6C8A57
  loc_6C8883: LitI2_Byte 5
  loc_6C8885: CUI1I2
  loc_6C8887: ImpAdLdRf MemVar_74DC58
  loc_6C888A: NewIfNullPr frmLogin
  loc_6C888D: Call frmLogin.NivelPut(from_stack_1v)
  loc_6C8892: LitI2_Byte &H67
  loc_6C8894: ImpAdLdRf MemVar_74DC58
  loc_6C8897: NewIfNullPr frmLogin
  loc_6C889A: Call frmLogin.ModuloPut(from_stack_1v)
  loc_6C889F: LitVar_Missing var_D4
  loc_6C88A2: PopAdLdVar
  loc_6C88A3: LitVarI2 var_B0, 1
  loc_6C88A8: PopAdLdVar
  loc_6C88A9: ImpAdLdRf MemVar_74DC58
  loc_6C88AC: NewIfNullPr frmLogin
  loc_6C88AF: frmLogin.Show from_stack_1, from_stack_2
  loc_6C88B4: FLdRfVar var_FE
  loc_6C88B7: ImpAdLdRf MemVar_74DC58
  loc_6C88BA: NewIfNullPr frmLogin
  loc_6C88BD: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_6C88C2: FLdI2 var_FE
  loc_6C88C5: BranchF loc_6C8A54
  loc_6C88C8: LitStr vbNullString
  loc_6C88CB: FStStrCopy var_88
  loc_6C88CE: FLdRfVar var_FE
  loc_6C88D1: FLdRfVar var_88
  loc_6C88D4: FLdRfVar var_14C
  loc_6C88D7: ImpAdLdRf MemVar_74C760
  loc_6C88DA: NewIfNullPr Formx
  loc_6C88DD: from_stack_1v = Formx.global_4589716Get()
  loc_6C88E2: FLdPr var_14C
  loc_6C88E5:  = Formx.Font
  loc_6C88EA: FLdI2 var_FE
  loc_6C88ED: NotI4
  loc_6C88EE: FFree1Ad var_14C
  loc_6C88F1: BranchF loc_6C890B
  loc_6C88F4: FLdRfVar var_A0
  loc_6C88F7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C88FC: FLdRfVar var_A0
  loc_6C88FF: CBoolVarNull
  loc_6C8901: FFree1Var var_A0 = ""
  loc_6C8904: BranchF loc_6C8908
  loc_6C8907: ExitProcHresult
  loc_6C8908: Branch loc_6C88CE
  loc_6C890B: ILdRf var_88
  loc_6C890E: LitStr "0"
  loc_6C8911: EqStr
  loc_6C8913: BranchF loc_6C894A
  loc_6C8916: LitVar_Missing var_128
  loc_6C8919: LitVar_Missing var_F8
  loc_6C891C: LitVarStr var_D4, "FASE II"
  loc_6C8921: FStVarCopyObj var_C0
  loc_6C8924: FLdRfVar var_C0
  loc_6C8927: LitI4 &H10
  loc_6C892C: LitVarStr var_B0, "No se pudo iniciar la FASE II."
  loc_6C8931: FStVarCopyObj var_A0
  loc_6C8934: FLdRfVar var_A0
  loc_6C8937: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C893C: FFreeVar var_A0 = "": var_C0 = "": var_F8 = ""
  loc_6C8947: Branch loc_6C8A54
  loc_6C894A: FLdRfVar var_88
  loc_6C894D: CVarRef
  loc_6C8952: FLdRfVar var_A0
  loc_6C8955: ImpAdCallFPR4  = Trim()
  loc_6C895A: FLdRfVar var_A0
  loc_6C895D: CStrVarTmp
  loc_6C895E: FStStr var_88
  loc_6C8961: FFree1Var var_A0 = ""
  loc_6C8964: LitVarI2 var_A0, 10
  loc_6C8969: LitI4 1
  loc_6C896E: FLdRfVar var_88
  loc_6C8971: CVarRef
  loc_6C8976: FLdRfVar var_C0
  loc_6C8979: ImpAdCallFPR4  = Mid(, , )
  loc_6C897E: FLdRfVar var_C0
  loc_6C8981: CStrVarTmp
  loc_6C8982: FStStr var_90
  loc_6C8985: FFreeVar var_A0 = ""
  loc_6C898C: ILdRf var_88
  loc_6C898F: FnLenStr
  loc_6C8990: CVarI4
  loc_6C8994: LitI4 &HB
  loc_6C8999: FLdRfVar var_88
  loc_6C899C: CVarRef
  loc_6C89A1: FLdRfVar var_C0
  loc_6C89A4: ImpAdCallFPR4  = Mid(, , )
  loc_6C89A9: FLdRfVar var_C0
  loc_6C89AC: CStrVarTmp
  loc_6C89AD: FStStr var_8C
  loc_6C89B0: FFreeVar var_A0 = ""
  loc_6C89B7: LitI4 &HD
  loc_6C89BC: FLdRfVar var_A0
  loc_6C89BF: ImpAdCallFPR4  = Chr()
  loc_6C89C4: LitI4 &HD
  loc_6C89C9: FLdRfVar var_128
  loc_6C89CC: ImpAdCallFPR4  = Chr()
  loc_6C89D1: LitVar_Missing var_22C
  loc_6C89D4: LitVar_Missing var_20C
  loc_6C89D7: LitVarStr var_1DC, "FASE II"
  loc_6C89DC: FStVarCopyObj var_1EC
  loc_6C89DF: FLdRfVar var_1EC
  loc_6C89E2: LitI4 &H30
  loc_6C89E7: LitVarStr var_B0, "                 Se inicio la FASE II con exito."
  loc_6C89EC: FLdRfVar var_A0
  loc_6C89EF: AddVar var_C0
  loc_6C89F3: LitVarStr var_D4, "El próximo cierre de Red XXI Normal será ejecutado el:"
  loc_6C89F8: AddVar var_F8
  loc_6C89FC: FLdRfVar var_128
  loc_6C89FF: AddVar var_148
  loc_6C8A03: LitVarStr var_E8, "                 "
  loc_6C8A08: AddVar var_16C
  loc_6C8A0C: ILdRf var_90
  loc_6C8A0F: CVarStr var_138
  loc_6C8A12: AddVar var_17C
  loc_6C8A16: LitVarStr var_15C, " a las "
  loc_6C8A1B: AddVar var_18C
  loc_6C8A1F: ILdRf var_8C
  loc_6C8A22: CVarStr var_19C
  loc_6C8A25: AddVar var_1AC
  loc_6C8A29: LitVarStr var_1BC, " hs."
  loc_6C8A2E: AddVar var_1CC
  loc_6C8A32: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C8A37: FFreeVar var_A0 = "": var_C0 = "": var_F8 = "": var_128 = "": var_148 = "": var_16C = "": var_17C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = ""
  loc_6C8A54: Branch loc_6C8CDF
  loc_6C8A57: FLdRfVar var_118
  loc_6C8A5A: LitVarStr var_B0, "MODULOS"
  loc_6C8A5F: HardType
  loc_6C8A60: EqVarBool
  loc_6C8A62: BranchF loc_6C8AD0
  loc_6C8A65: LitVarI2 var_A0, 1
  loc_6C8A6A: LitI4 4
  loc_6C8A6F: ImpAdLdRf MemVar_74BEAC
  loc_6C8A72: CVarRef
  loc_6C8A77: FLdRfVar var_C0
  loc_6C8A7A: ImpAdCallFPR4  = Mid(, , )
  loc_6C8A7F: FLdRfVar var_C0
  loc_6C8A82: LitVarStr var_E8, "1"
  loc_6C8A87: HardType
  loc_6C8A88: EqVarBool
  loc_6C8A8A: FFreeVar var_A0 = ""
  loc_6C8A91: BranchF loc_6C8AA6
  loc_6C8A94: LitI2_Byte &H69
  loc_6C8A96: PopTmpLdAd2 var_FE
  loc_6C8A99: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6C8A9E: NotI4
  loc_6C8A9F: BranchF loc_6C8AA3
  loc_6C8AA2: ExitProcHresult
  loc_6C8AA3: Branch loc_6C8AB5
  loc_6C8AA6: LitI2_Byte &H62
  loc_6C8AA8: PopTmpLdAd2 var_FE
  loc_6C8AAB: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6C8AB0: NotI4
  loc_6C8AB1: BranchF loc_6C8AB5
  loc_6C8AB4: ExitProcHresult
  loc_6C8AB5: LitVar_Missing var_D4
  loc_6C8AB8: PopAdLdVar
  loc_6C8AB9: LitVarI4
  loc_6C8AC1: PopAdLdVar
  loc_6C8AC2: ImpAdLdRf MemVar_74DCE4
  loc_6C8AC5: NewIfNullPr ModuleData
  loc_6C8AC8: ModuleData.Show from_stack_1, from_stack_2
  loc_6C8ACD: Branch loc_6C8CDF
  loc_6C8AD0: FLdRfVar var_118
  loc_6C8AD3: LitVarStr var_B0, "PICAFLO"
  loc_6C8AD8: HardType
  loc_6C8AD9: EqVarBool
  loc_6C8ADB: BranchF loc_6C8CB5
  loc_6C8ADE: FLdPr Me
  loc_6C8AE1: MemLdI2 global_92
  loc_6C8AE4: NotI4
  loc_6C8AE5: BranchF loc_6C8BA2
  loc_6C8AE8: LitI4 0
  loc_6C8AED: FLdRfVar var_C4
  loc_6C8AF0: FLdRfVar var_14C
  loc_6C8AF3: ImpAdLdRf MemVar_7520D4
  loc_6C8AF6: NewIfNullPr Global
  loc_6C8AF9:  = Global.App
  loc_6C8AFE: FLdPr var_14C
  loc_6C8B01:  = App.Path
  loc_6C8B06: ILdRf var_C4
  loc_6C8B09: LitStr "\pumps.ram"
  loc_6C8B0C: ConcatStr
  loc_6C8B0D: CVarStr var_A0
  loc_6C8B10: ImpAdCallI2 push Dir(, )
  loc_6C8B15: FStStrNoPop var_D8
  loc_6C8B18: LitStr vbNullString
  loc_6C8B1B: NeStr
  loc_6C8B1D: FFreeStr var_C4 = ""
  loc_6C8B24: FFree1Ad var_14C
  loc_6C8B27: FFree1Var var_A0 = ""
  loc_6C8B2A: BranchF loc_6C8B9F
  loc_6C8B2D: FLdRfVar var_230
  loc_6C8B30: FLdRfVar var_C4
  loc_6C8B33: FLdRfVar var_14C
  loc_6C8B36: ImpAdLdRf MemVar_7520D4
  loc_6C8B39: NewIfNullPr Global
  loc_6C8B3C:  = Global.App
  loc_6C8B41: FLdPr var_14C
  loc_6C8B44:  = App.Path
  loc_6C8B49: ILdRf var_C4
  loc_6C8B4C: LitStr "\pumps.ram"
  loc_6C8B4F: ConcatStr
  loc_6C8B50: CVarStr var_A0
  loc_6C8B53: PopAdLdVar
  loc_6C8B54: ImpAdLdRf MemVar_7520D4
  loc_6C8B57: NewIfNullPr Global
  loc_6C8B5A: Global.LoadPictureOld from_stack_1
  loc_6C8B5F: FLdZeroAd var_230
  loc_6C8B62: FStAdFuncNoPop
  loc_6C8B65: FLdPrThis
  loc_6C8B66: VCallAd Control_ID_Image1
  loc_6C8B69: FStAdFunc var_238
  loc_6C8B6C: FLdPr var_238
  loc_6C8B6F: Me.Picture = from_stack_1
  loc_6C8B74: FFree1Str var_C4
  loc_6C8B77: FFreeAd var_14C = "": var_234 = ""
  loc_6C8B80: FFree1Var var_A0 = ""
  loc_6C8B83: LitI2_Byte &HFF
  loc_6C8B85: FLdPrThis
  loc_6C8B86: VCallAd Control_ID_Image1
  loc_6C8B89: FStAdFunc var_14C
  loc_6C8B8C: FLdPr var_14C
  loc_6C8B8F: Me.Visible = from_stack_1b
  loc_6C8B94: FFree1Ad var_14C
  loc_6C8B97: LitI2_Byte &HFF
  loc_6C8B99: FLdPr Me
  loc_6C8B9C: MemStI2 global_92
  loc_6C8B9F: Branch loc_6C8CB2
  loc_6C8BA2: LitI4 0
  loc_6C8BA7: FLdRfVar var_C4
  loc_6C8BAA: FLdRfVar var_14C
  loc_6C8BAD: ImpAdLdRf MemVar_7520D4
  loc_6C8BB0: NewIfNullPr Global
  loc_6C8BB3:  = Global.App
  loc_6C8BB8: FLdPr var_14C
  loc_6C8BBB:  = App.Path
  loc_6C8BC0: ILdRf var_C4
  loc_6C8BC3: LitStr "\imagen.bmp"
  loc_6C8BC6: ConcatStr
  loc_6C8BC7: CVarStr var_A0
  loc_6C8BCA: ImpAdCallI2 push Dir(, )
  loc_6C8BCF: FStStrNoPop var_D8
  loc_6C8BD2: LitStr vbNullString
  loc_6C8BD5: NeStr
  loc_6C8BD7: FFreeStr var_C4 = ""
  loc_6C8BDE: FFree1Ad var_14C
  loc_6C8BE1: FFree1Var var_A0 = ""
  loc_6C8BE4: BranchF loc_6C8C96
  loc_6C8BE7: FLdRfVar var_230
  loc_6C8BEA: FLdRfVar var_C4
  loc_6C8BED: FLdRfVar var_14C
  loc_6C8BF0: ImpAdLdRf MemVar_7520D4
  loc_6C8BF3: NewIfNullPr Global
  loc_6C8BF6:  = Global.App
  loc_6C8BFB: FLdPr var_14C
  loc_6C8BFE:  = App.Path
  loc_6C8C03: ILdRf var_C4
  loc_6C8C06: LitStr "\imagen.bmp"
  loc_6C8C09: ConcatStr
  loc_6C8C0A: CVarStr var_A0
  loc_6C8C0D: PopAdLdVar
  loc_6C8C0E: ImpAdLdRf MemVar_7520D4
  loc_6C8C11: NewIfNullPr Global
  loc_6C8C14: Global.LoadPictureOld from_stack_1
  loc_6C8C19: FLdZeroAd var_230
  loc_6C8C1C: FStAdFuncNoPop
  loc_6C8C1F: FLdPrThis
  loc_6C8C20: VCallAd Control_ID_Image1
  loc_6C8C23: FStAdFunc var_238
  loc_6C8C26: FLdPr var_238
  loc_6C8C29: Me.Picture = from_stack_1
  loc_6C8C2E: FFree1Str var_C4
  loc_6C8C31: FFreeAd var_14C = "": var_234 = ""
  loc_6C8C3A: FFree1Var var_A0 = ""
  loc_6C8C3D: LitI2 11940
  loc_6C8C40: CR8I2
  loc_6C8C41: PopFPR4
  loc_6C8C42: FLdPrThis
  loc_6C8C43: VCallAd Control_ID_Image1
  loc_6C8C46: FStAdFunc var_14C
  loc_6C8C49: FLdPr var_14C
  loc_6C8C4C: Me.Width = from_stack_1s
  loc_6C8C51: FFree1Ad var_14C
  loc_6C8C54: LitI2 8295
  loc_6C8C57: CR8I2
  loc_6C8C58: PopFPR4
  loc_6C8C59: FLdPrThis
  loc_6C8C5A: VCallAd Control_ID_Image1
  loc_6C8C5D: FStAdFunc var_14C
  loc_6C8C60: FLdPr var_14C
  loc_6C8C63: Me.Height = from_stack_1s
  loc_6C8C68: FFree1Ad var_14C
  loc_6C8C6B: LitI2_Byte &HFF
  loc_6C8C6D: FLdPrThis
  loc_6C8C6E: VCallAd Control_ID_Image1
  loc_6C8C71: FStAdFunc var_14C
  loc_6C8C74: FLdPr var_14C
  loc_6C8C77: Me.Stretch = from_stack_1b
  loc_6C8C7C: FFree1Ad var_14C
  loc_6C8C7F: LitI2_Byte &HFF
  loc_6C8C81: FLdPrThis
  loc_6C8C82: VCallAd Control_ID_Image1
  loc_6C8C85: FStAdFunc var_14C
  loc_6C8C88: FLdPr var_14C
  loc_6C8C8B: Me.Visible = from_stack_1b
  loc_6C8C90: FFree1Ad var_14C
  loc_6C8C93: Branch loc_6C8CAA
  loc_6C8C96: LitI2_Byte 0
  loc_6C8C98: FLdPrThis
  loc_6C8C99: VCallAd Control_ID_Image1
  loc_6C8C9C: FStAdFunc var_14C
  loc_6C8C9F: FLdPr var_14C
  loc_6C8CA2: Me.Visible = from_stack_1b
  loc_6C8CA7: FFree1Ad var_14C
  loc_6C8CAA: LitI2_Byte 0
  loc_6C8CAC: FLdPr Me
  loc_6C8CAF: MemStI2 global_92
  loc_6C8CB2: Branch loc_6C8CDF
  loc_6C8CB5: FLdRfVar var_118
  loc_6C8CB8: LitVarStr var_B0, "NARIGON"
  loc_6C8CBD: HardType
  loc_6C8CBE: EqVarBool
  loc_6C8CC0: BranchF loc_6C8CDF
  loc_6C8CC3: FLdPr Me
  loc_6C8CC6: MemLdI2 global_88
  loc_6C8CC9: BranchF loc_6C8CD7
  loc_6C8CCC: LitI2_Byte 0
  loc_6C8CCE: FLdPr Me
  loc_6C8CD1: MemStI2 global_88
  loc_6C8CD4: Branch loc_6C8CDF
  loc_6C8CD7: LitI2_Byte &HFF
  loc_6C8CD9: FLdPr Me
  loc_6C8CDC: MemStI2 global_88
  loc_6C8CDF: FMemLdPr
  loc_6C8CE4: MemLdStr global_0
  loc_6C8CE7: FnLenStr
  loc_6C8CE8: LitI4 6
  loc_6C8CED: GtI4
  loc_6C8CEE: BranchF loc_6C8D21
  loc_6C8CF1: LitI4 8
  loc_6C8CF6: FMemLdPr
  loc_6C8CFB: MemLdRfVar from_stack_1.global_0
  loc_6C8CFE: CVarRef
  loc_6C8D03: FLdRfVar var_A0
  loc_6C8D06: ImpAdCallFPR4  = Left(, )
  loc_6C8D0B: FLdRfVar var_A0
  loc_6C8D0E: CStrVarTmp
  loc_6C8D0F: FStStrNoPop var_C4
  loc_6C8D12: FMemLdPr
  loc_6C8D17: MemStStrCopy
  loc_6C8D1B: FFree1Str var_C4
  loc_6C8D1E: FFree1Var var_A0 = ""
  loc_6C8D21: ExitProcHresult
End Sub

Private Sub Form_LostFocus() '5C92D0
  'Data Table: 460894
  loc_5C92C8: LitI2_Byte &HFF
  loc_5C92CA: ImpAdStI2 MemVar_74C7B0
  loc_5C92CD: ExitProcHresult
End Sub

Private Sub Reloj_Timer() '5EC944
  'Data Table: 460894
  loc_5EC8CC: FLdPrThis
  loc_5EC8CD: VCallAd Control_ID_Reloj
  loc_5EC8D0: FStAdFunc var_90
  loc_5EC8D3: ILdRf Me
  loc_5EC8D6: CastAd
  loc_5EC8D9: FStAdFunc var_8C
  loc_5EC8DC: FLdRfVar var_8C
  loc_5EC8DF: FLdZeroAd var_90
  loc_5EC8E2: FStAdFunc var_88
  loc_5EC8E5: FLdRfVar var_88
  loc_5EC8E8: ImpAdCallFPR4 Proc_53_8_709AA4(, )
  loc_5EC8ED: FFreeAd var_88 = "": var_8C = ""
  loc_5EC8F6: LitVarI2 var_C0, 1
  loc_5EC8FB: LitI4 &HC
  loc_5EC900: ImpAdLdRf MemVar_74BEAC
  loc_5EC903: CVarRef
  loc_5EC908: FLdRfVar var_D0
  loc_5EC90B: ImpAdCallFPR4  = Mid(, , )
  loc_5EC910: FLdRfVar var_D0
  loc_5EC913: LitVarStr var_E0, "1"
  loc_5EC918: HardType
  loc_5EC919: EqVar var_F0
  loc_5EC91D: ImpAdLdI2 MemVar_74C7B0
  loc_5EC920: LitI2_Byte 0
  loc_5EC922: EqI2
  loc_5EC923: CVarBoolI2 var_100
  loc_5EC927: AndVar var_110
  loc_5EC92B: CBoolVarNull
  loc_5EC92D: FFreeVar var_C0 = "": var_D0 = ""
  loc_5EC936: BranchF loc_5EC941
  loc_5EC939: ImpAdCallFPR4 Proc_167_10_6B89EC()
  loc_5EC93E: Branch loc_5EC942
  loc_5EC941: ExitProcHresult
  loc_5EC942: ExitProcHresult
End Sub

Private Sub Estadisticas_menu_Click() '5D8520
  'Data Table: 460894
  loc_5D84EC: LitI2_Byte &HB
  loc_5D84EE: PopTmpLdAd2 var_86
  loc_5D84F1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D84F6: NotI4
  loc_5D84F7: BranchF loc_5D84FB
  loc_5D84FA: ExitProcHresult
  loc_5D84FB: LitI2_Byte 0
  loc_5D84FD: PopTmpLdAd2 var_86
  loc_5D8500: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5D8505: BranchF loc_5D851D
  loc_5D8508: LitVar_Missing var_A8
  loc_5D850B: PopAdLdVar
  loc_5D850C: LitVarI2 var_98, 1
  loc_5D8511: PopAdLdVar
  loc_5D8512: ImpAdLdRf MemVar_74DB18
  loc_5D8515: NewIfNullPr CargaEstadisticas
  loc_5D8518: CargaEstadisticas.Show from_stack_1, from_stack_2
  loc_5D851D: ExitProcHresult
End Sub

Private Sub CLIENTES_Click() '5D56C4
  'Data Table: 460894
  loc_5D569C: LitI2_Byte &H16
  loc_5D569E: PopTmpLdAd2 var_86
  loc_5D56A1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D56A6: NotI4
  loc_5D56A7: BranchF loc_5D56AB
  loc_5D56AA: ExitProcHresult
  loc_5D56AB: LitVar_Missing var_A8
  loc_5D56AE: PopAdLdVar
  loc_5D56AF: LitVarI2 var_98, 1
  loc_5D56B4: PopAdLdVar
  loc_5D56B5: ImpAdLdRf MemVar_74D978
  loc_5D56B8: NewIfNullPr FormClientes
  loc_5D56BB: FormClientes.Show from_stack_1, from_stack_2
  loc_5D56C0: ExitProcHresult
End Sub

Private Sub mnuCamionCisterna_Click() '5D637C
  'Data Table: 460894
  loc_5D6354: LitI2_Byte &H36
  loc_5D6356: PopTmpLdAd2 var_86
  loc_5D6359: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D635E: NotI4
  loc_5D635F: BranchF loc_5D6363
  loc_5D6362: ExitProcHresult
  loc_5D6363: LitVar_Missing var_A8
  loc_5D6366: PopAdLdVar
  loc_5D6367: LitVarI4
  loc_5D636F: PopAdLdVar
  loc_5D6370: ImpAdLdRf MemVar_74D9B4
  loc_5D6373: NewIfNullPr frmCamionCisterna
  loc_5D6376: frmCamionCisterna.Show from_stack_1, from_stack_2
  loc_5D637B: ExitProcHresult
End Sub

Private Sub TANKS_Click() '5C9538
  'Data Table: 460894
  loc_5C9530: from_stack_1v = Proc_162_230_5EEC9C()
  loc_5C9535: ExitProcHresult
End Sub

Private Sub Menu_Seguridad_Click() '6118E8
  'Data Table: 460894
  loc_6117E0: LitI4 &H2F
  loc_6117E5: ImpAdLdRf MemVar_74A170
  loc_6117E8: Ary1LdI2
  loc_6117E9: NotI4
  loc_6117EA: CVarBoolI2 var_104
  loc_6117EE: LitVarI2 var_B4, 3
  loc_6117F3: LitI4 1
  loc_6117F8: ImpAdLdRf MemVar_74BF90
  loc_6117FB: CVarRef
  loc_611800: FLdRfVar var_C4
  loc_611803: ImpAdCallFPR4  = Mid(, , )
  loc_611808: FLdRfVar var_C4
  loc_61180B: LitVarStr var_D4, "\\."
  loc_611810: HardType
  loc_611811: EqVar var_E4
  loc_611815: NotVar var_F4
  loc_611819: AndVar var_114
  loc_61181D: CBoolVarNull
  loc_61181F: FFreeVar var_B4 = "": var_C4 = ""
  loc_611828: BranchF loc_611831
  loc_61182B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_611830: ExitProcHresult
  loc_611831: FLdRfVar var_118
  loc_611834: LitI2_Byte &H20
  loc_611836: PopTmpLdAd2 var_116
  loc_611839: ImpAdLdRf MemVar_74A21C
  loc_61183C: NewIfNullPr clsSecurity
  loc_611844: FLdRfVar var_11C
  loc_611847: LitI2_Byte &H20
  loc_611849: PopTmpLdAd2 var_11A
  loc_61184C: ImpAdLdRf MemVar_74A21C
  loc_61184F: NewIfNullPr clsSecurity
  loc_611857: FLdUI1
  loc_61185B: CVarUI1
  loc_61185F: LitVarI2 var_B4, 1
  loc_611864: FLdUI1
  loc_611868: CI2UI1
  loc_61186A: LitI2_Byte 0
  loc_61186C: EqI2
  loc_61186D: CVarBoolI2 var_94
  loc_611871: FLdRfVar var_E4
  loc_611874: ImpAdCallFPR4  = IIf(, , )
  loc_611879: FLdRfVar var_E4
  loc_61187C: CUI1Var
  loc_61187E: ImpAdLdRf MemVar_74DC58
  loc_611881: NewIfNullPr frmLogin
  loc_611884: Call frmLogin.NivelPut(from_stack_1v)
  loc_611889: FFreeVar var_94 = "": var_B4 = "": var_C4 = ""
  loc_611894: LitI2_Byte &H20
  loc_611896: ImpAdLdRf MemVar_74DC58
  loc_611899: NewIfNullPr frmLogin
  loc_61189C: Call frmLogin.ModuloPut(from_stack_1v)
  loc_6118A1: LitVar_Missing var_A4
  loc_6118A4: PopAdLdVar
  loc_6118A5: LitVarI2 var_94, 1
  loc_6118AA: PopAdLdVar
  loc_6118AB: ImpAdLdRf MemVar_74DC58
  loc_6118AE: NewIfNullPr frmLogin
  loc_6118B1: frmLogin.Show from_stack_1, from_stack_2
  loc_6118B6: FLdRfVar var_116
  loc_6118B9: ImpAdLdRf MemVar_74DC58
  loc_6118BC: NewIfNullPr frmLogin
  loc_6118BF: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_6118C4: FLdI2 var_116
  loc_6118C7: NotI4
  loc_6118C8: BranchF loc_6118CF
  loc_6118CB: ExitProcHresult
  loc_6118CC: Branch loc_6118E7
  loc_6118CF: LitVar_Missing var_A4
  loc_6118D2: PopAdLdVar
  loc_6118D3: LitVarI4
  loc_6118DB: PopAdLdVar
  loc_6118DC: ImpAdLdRf MemVar_74DCD0
  loc_6118DF: NewIfNullPr FSeguridad
  loc_6118E2: FSeguridad.Show from_stack_1, from_stack_2
  loc_6118E7: ExitProcHresult
End Sub

Private Sub CambiodeClave_Click() '5EA7F8
  'Data Table: 460894
  loc_5EA77C: LitI4 8
  loc_5EA781: ImpAdLdRf MemVar_74A170
  loc_5EA784: Ary1LdI2
  loc_5EA785: NotI4
  loc_5EA786: CVarBoolI2 var_104
  loc_5EA78A: LitVarI2 var_B4, 3
  loc_5EA78F: LitI4 1
  loc_5EA794: ImpAdLdRf MemVar_74BF90
  loc_5EA797: CVarRef
  loc_5EA79C: FLdRfVar var_C4
  loc_5EA79F: ImpAdCallFPR4  = Mid(, , )
  loc_5EA7A4: FLdRfVar var_C4
  loc_5EA7A7: LitVarStr var_D4, "\\."
  loc_5EA7AC: HardType
  loc_5EA7AD: EqVar var_E4
  loc_5EA7B1: NotVar var_F4
  loc_5EA7B5: AndVar var_114
  loc_5EA7B9: CBoolVarNull
  loc_5EA7BB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EA7C4: BranchF loc_5EA7CD
  loc_5EA7C7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EA7CC: ExitProcHresult
  loc_5EA7CD: LitI2_Byte &H2B
  loc_5EA7CF: PopTmpLdAd2 var_116
  loc_5EA7D2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EA7D7: NotI4
  loc_5EA7D8: BranchF loc_5EA7DC
  loc_5EA7DB: ExitProcHresult
  loc_5EA7DC: LitVar_Missing var_A4
  loc_5EA7DF: PopAdLdVar
  loc_5EA7E0: LitVarI4
  loc_5EA7E8: PopAdLdVar
  loc_5EA7E9: ImpAdLdRf MemVar_74C83C
  loc_5EA7EC: NewIfNullPr frmChangePassword
  loc_5EA7EF: frmChangePassword.Show from_stack_1, from_stack_2
  loc_5EA7F4: ExitProcHresult
End Sub

Private Sub TarjetadeCredito_Click() '5D50EC
  'Data Table: 460894
  loc_5D50C4: LitI2_Byte &H2E
  loc_5D50C6: PopTmpLdAd2 var_86
  loc_5D50C9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D50CE: NotI4
  loc_5D50CF: BranchF loc_5D50D3
  loc_5D50D2: ExitProcHresult
  loc_5D50D3: LitVar_Missing var_A8
  loc_5D50D6: PopAdLdVar
  loc_5D50D7: LitVarI2 var_98, 1
  loc_5D50DC: PopAdLdVar
  loc_5D50DD: ImpAdLdRf MemVar_74DAF0
  loc_5D50E0: NewIfNullPr tarjetas
  loc_5D50E3: tarjetas.Show from_stack_1, from_stack_2
  loc_5D50E8: ExitProcHresult
End Sub

Private Sub mnuSeccionesReporte_Click() '5EA438
  'Data Table: 460894
  loc_5EA3BC: LitI4 &H2E
  loc_5EA3C1: ImpAdLdRf MemVar_74A170
  loc_5EA3C4: Ary1LdI2
  loc_5EA3C5: NotI4
  loc_5EA3C6: CVarBoolI2 var_104
  loc_5EA3CA: LitVarI2 var_B4, 3
  loc_5EA3CF: LitI4 1
  loc_5EA3D4: ImpAdLdRf MemVar_74BF90
  loc_5EA3D7: CVarRef
  loc_5EA3DC: FLdRfVar var_C4
  loc_5EA3DF: ImpAdCallFPR4  = Mid(, , )
  loc_5EA3E4: FLdRfVar var_C4
  loc_5EA3E7: LitVarStr var_D4, "\\."
  loc_5EA3EC: HardType
  loc_5EA3ED: EqVar var_E4
  loc_5EA3F1: NotVar var_F4
  loc_5EA3F5: AndVar var_114
  loc_5EA3F9: CBoolVarNull
  loc_5EA3FB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EA404: BranchF loc_5EA40D
  loc_5EA407: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EA40C: ExitProcHresult
  loc_5EA40D: LitI2_Byte &H46
  loc_5EA40F: PopTmpLdAd2 var_116
  loc_5EA412: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EA417: NotI4
  loc_5EA418: BranchF loc_5EA41C
  loc_5EA41B: ExitProcHresult
  loc_5EA41C: LitVar_Missing var_A4
  loc_5EA41F: PopAdLdVar
  loc_5EA420: LitVarI4
  loc_5EA428: PopAdLdVar
  loc_5EA429: ImpAdLdRf MemVar_74CAD8
  loc_5EA42C: NewIfNullPr frmSeccionesReporte
  loc_5EA42F: frmSeccionesReporte.Show from_stack_1, from_stack_2
  loc_5EA434: ExitProcHresult
End Sub

Private Sub IMPORTA_37_Click() '5F4D34
  'Data Table: 460894
  loc_5F4C8C: LitI4 &H1B
  loc_5F4C91: ImpAdLdRf MemVar_74A170
  loc_5F4C94: Ary1LdI2
  loc_5F4C95: NotI4
  loc_5F4C96: CVarBoolI2 var_104
  loc_5F4C9A: LitVarI2 var_B4, 3
  loc_5F4C9F: LitI4 1
  loc_5F4CA4: ImpAdLdRf MemVar_74BF90
  loc_5F4CA7: CVarRef
  loc_5F4CAC: FLdRfVar var_C4
  loc_5F4CAF: ImpAdCallFPR4  = Mid(, , )
  loc_5F4CB4: FLdRfVar var_C4
  loc_5F4CB7: LitVarStr var_D4, "\\."
  loc_5F4CBC: HardType
  loc_5F4CBD: EqVar var_E4
  loc_5F4CC1: NotVar var_F4
  loc_5F4CC5: AndVar var_114
  loc_5F4CC9: CBoolVarNull
  loc_5F4CCB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5F4CD4: BranchF loc_5F4CDD
  loc_5F4CD7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5F4CDC: ExitProcHresult
  loc_5F4CDD: LitI2_Byte &H1C
  loc_5F4CDF: PopTmpLdAd2 var_116
  loc_5F4CE2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5F4CE7: NotI4
  loc_5F4CE8: BranchF loc_5F4CEC
  loc_5F4CEB: ExitProcHresult
  loc_5F4CEC: LitVar_Missing var_E4
  loc_5F4CEF: LitVar_Missing var_C4
  loc_5F4CF2: LitVar_Missing var_B4
  loc_5F4CF5: LitI4 1
  loc_5F4CFA: FLdPr Me
  loc_5F4CFD: MemLdRfVar from_stack_1.global_7492
  loc_5F4D00: CVarRef
  loc_5F4D05: ImpAdCallI2 MsgBox(, , , , )
  loc_5F4D0A: LitI4 1
  loc_5F4D0F: EqI4
  loc_5F4D10: FFreeVar var_B4 = "": var_C4 = ""
  loc_5F4D19: BranchF loc_5F4D31
  loc_5F4D1C: LitVar_Missing var_A4
  loc_5F4D1F: PopAdLdVar
  loc_5F4D20: LitVarI2 var_94, 1
  loc_5F4D25: PopAdLdVar
  loc_5F4D26: ImpAdLdRf MemVar_74C88C
  loc_5F4D29: NewIfNullPr Importacion37
  loc_5F4D2C: Importacion37.Show from_stack_1, from_stack_2
  loc_5F4D31: ExitProcHresult
End Sub

Private Sub mnuPumpIni_Click() '5EB338
  'Data Table: 460894
  loc_5EB2BC: LitI4 &H20
  loc_5EB2C1: ImpAdLdRf MemVar_74A170
  loc_5EB2C4: Ary1LdI2
  loc_5EB2C5: NotI4
  loc_5EB2C6: CVarBoolI2 var_104
  loc_5EB2CA: LitVarI2 var_B4, 3
  loc_5EB2CF: LitI4 1
  loc_5EB2D4: ImpAdLdRf MemVar_74BF90
  loc_5EB2D7: CVarRef
  loc_5EB2DC: FLdRfVar var_C4
  loc_5EB2DF: ImpAdCallFPR4  = Mid(, , )
  loc_5EB2E4: FLdRfVar var_C4
  loc_5EB2E7: LitVarStr var_D4, "\\."
  loc_5EB2EC: HardType
  loc_5EB2ED: EqVar var_E4
  loc_5EB2F1: NotVar var_F4
  loc_5EB2F5: AndVar var_114
  loc_5EB2F9: CBoolVarNull
  loc_5EB2FB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EB304: BranchF loc_5EB30D
  loc_5EB307: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EB30C: ExitProcHresult
  loc_5EB30D: LitI2_Byte &H5A
  loc_5EB30F: PopTmpLdAd2 var_116
  loc_5EB312: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EB317: NotI4
  loc_5EB318: BranchF loc_5EB31C
  loc_5EB31B: ExitProcHresult
  loc_5EB31C: LitVar_Missing var_A4
  loc_5EB31F: PopAdLdVar
  loc_5EB320: LitVarI4
  loc_5EB328: PopAdLdVar
  loc_5EB329: ImpAdLdRf MemVar_74D93C
  loc_5EB32C: NewIfNullPr frmInicializaSurtidores
  loc_5EB32F: frmInicializaSurtidores.Show from_stack_1, from_stack_2
  loc_5EB334: ExitProcHresult
End Sub

Private Sub SETUP_CONSOLA_Click() '5DEF7C
  'Data Table: 460894
  loc_5DEF2C: LitI2_Byte &H15
  loc_5DEF2E: PopTmpLdAd2 var_86
  loc_5DEF31: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5DEF36: NotI4
  loc_5DEF37: BranchF loc_5DEF3B
  loc_5DEF3A: ExitProcHresult
  loc_5DEF3B: from_stack_1v = Proc_162_229_63F80C()
  loc_5DEF40: LitI2_Byte &HFF
  loc_5DEF42: FLdPrThis
  loc_5DEF43: VCallAd Control_ID_Text1
  loc_5DEF46: FStAdFunc var_8C
  loc_5DEF49: FLdPr var_8C
  loc_5DEF4C: Me.Visible = from_stack_1b
  loc_5DEF51: FFree1Ad var_8C
  loc_5DEF54: LitVar_Missing var_9C
  loc_5DEF57: PopAdLdVar
  loc_5DEF58: LitI2_Byte &HFF
  loc_5DEF5A: ImpAdLdRf MemVar_74E2E0
  loc_5DEF5D: NewIfNullPr frmPipeConnection
  loc_5DEF60: Call frmPipeConnection.ShowMe(from_stack_1v, from_stack_2v)
  loc_5DEF65: LitI2_Byte 0
  loc_5DEF67: FLdPrThis
  loc_5DEF68: VCallAd Control_ID_lblUbic
  loc_5DEF6B: FStAdFunc var_8C
  loc_5DEF6E: FLdPr var_8C
  loc_5DEF71: frmPipeConnection.TextBox.Visible = from_stack_1b
  loc_5DEF76: FFree1Ad var_8C
  loc_5DEF79: ExitProcHresult
  loc_5DEF7A: ExitProcR8
End Sub

Private Sub DATOS_REGIONALES_Click() '5EAD38
  'Data Table: 460894
  loc_5EACBC: LitI4 &H13
  loc_5EACC1: ImpAdLdRf MemVar_74A170
  loc_5EACC4: Ary1LdI2
  loc_5EACC5: NotI4
  loc_5EACC6: CVarBoolI2 var_104
  loc_5EACCA: LitVarI2 var_B4, 3
  loc_5EACCF: LitI4 1
  loc_5EACD4: ImpAdLdRf MemVar_74BF90
  loc_5EACD7: CVarRef
  loc_5EACDC: FLdRfVar var_C4
  loc_5EACDF: ImpAdCallFPR4  = Mid(, , )
  loc_5EACE4: FLdRfVar var_C4
  loc_5EACE7: LitVarStr var_D4, "\\."
  loc_5EACEC: HardType
  loc_5EACED: EqVar var_E4
  loc_5EACF1: NotVar var_F4
  loc_5EACF5: AndVar var_114
  loc_5EACF9: CBoolVarNull
  loc_5EACFB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EAD04: BranchF loc_5EAD0D
  loc_5EAD07: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EAD0C: ExitProcHresult
  loc_5EAD0D: LitI2_Byte &H21
  loc_5EAD0F: PopTmpLdAd2 var_116
  loc_5EAD12: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EAD17: NotI4
  loc_5EAD18: BranchF loc_5EAD1C
  loc_5EAD1B: ExitProcHresult
  loc_5EAD1C: LitVar_Missing var_A4
  loc_5EAD1F: PopAdLdVar
  loc_5EAD20: LitVarI4
  loc_5EAD28: PopAdLdVar
  loc_5EAD29: ImpAdLdRf MemVar_74DB54
  loc_5EAD2C: NewIfNullPr Country
  loc_5EAD2F: Country.Show from_stack_1, from_stack_2
  loc_5EAD34: ExitProcHresult
End Sub

Private Sub LOG_Event_Click() '610BF0
  'Data Table: 460894
  loc_610AE8: LitI4 &H16
  loc_610AED: ImpAdLdRf MemVar_74A170
  loc_610AF0: Ary1LdI2
  loc_610AF1: NotI4
  loc_610AF2: CVarBoolI2 var_104
  loc_610AF6: LitVarI2 var_B4, 3
  loc_610AFB: LitI4 1
  loc_610B00: ImpAdLdRf MemVar_74BF90
  loc_610B03: CVarRef
  loc_610B08: FLdRfVar var_C4
  loc_610B0B: ImpAdCallFPR4  = Mid(, , )
  loc_610B10: FLdRfVar var_C4
  loc_610B13: LitVarStr var_D4, "\\."
  loc_610B18: HardType
  loc_610B19: EqVar var_E4
  loc_610B1D: NotVar var_F4
  loc_610B21: AndVar var_114
  loc_610B25: CBoolVarNull
  loc_610B27: FFreeVar var_B4 = "": var_C4 = ""
  loc_610B30: BranchF loc_610B39
  loc_610B33: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_610B38: ExitProcHresult
  loc_610B39: FLdRfVar var_118
  loc_610B3C: LitI2_Byte &H2A
  loc_610B3E: PopTmpLdAd2 var_116
  loc_610B41: ImpAdLdRf MemVar_74A21C
  loc_610B44: NewIfNullPr clsSecurity
  loc_610B4C: FLdRfVar var_11C
  loc_610B4F: LitI2_Byte &H2A
  loc_610B51: PopTmpLdAd2 var_11A
  loc_610B54: ImpAdLdRf MemVar_74A21C
  loc_610B57: NewIfNullPr clsSecurity
  loc_610B5F: FLdUI1
  loc_610B63: CVarUI1
  loc_610B67: LitVarI2 var_B4, 1
  loc_610B6C: FLdUI1
  loc_610B70: CI2UI1
  loc_610B72: LitI2_Byte 0
  loc_610B74: EqI2
  loc_610B75: CVarBoolI2 var_94
  loc_610B79: FLdRfVar var_E4
  loc_610B7C: ImpAdCallFPR4  = IIf(, , )
  loc_610B81: FLdRfVar var_E4
  loc_610B84: CUI1Var
  loc_610B86: ImpAdLdRf MemVar_74DC58
  loc_610B89: NewIfNullPr frmLogin
  loc_610B8C: Call frmLogin.NivelPut(from_stack_1v)
  loc_610B91: FFreeVar var_94 = "": var_B4 = "": var_C4 = ""
  loc_610B9C: LitI2_Byte &H2A
  loc_610B9E: ImpAdLdRf MemVar_74DC58
  loc_610BA1: NewIfNullPr frmLogin
  loc_610BA4: Call frmLogin.ModuloPut(from_stack_1v)
  loc_610BA9: LitVar_Missing var_A4
  loc_610BAC: PopAdLdVar
  loc_610BAD: LitVarI2 var_94, 1
  loc_610BB2: PopAdLdVar
  loc_610BB3: ImpAdLdRf MemVar_74DC58
  loc_610BB6: NewIfNullPr frmLogin
  loc_610BB9: frmLogin.Show from_stack_1, from_stack_2
  loc_610BBE: FLdRfVar var_116
  loc_610BC1: ImpAdLdRf MemVar_74DC58
  loc_610BC4: NewIfNullPr frmLogin
  loc_610BC7: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_610BCC: FLdI2 var_116
  loc_610BCF: NotI4
  loc_610BD0: BranchF loc_610BD7
  loc_610BD3: ExitProcHresult
  loc_610BD4: Branch loc_610BEF
  loc_610BD7: LitVar_Missing var_A4
  loc_610BDA: PopAdLdVar
  loc_610BDB: LitVarI4
  loc_610BE3: PopAdLdVar
  loc_610BE4: ImpAdLdRf MemVar_74DC30
  loc_610BE7: NewIfNullPr LogEventos
  loc_610BEA: LogEventos.Show from_stack_1, from_stack_2
  loc_610BEF: ExitProcHresult
End Sub

Private Sub SETUP_STORE_Click() '6048E8
  'Data Table: 460894
  loc_604814: LitI4 1
  loc_604819: ImpAdLdRf MemVar_74A170
  loc_60481C: Ary1LdI2
  loc_60481D: NotI4
  loc_60481E: CVarBoolI2 var_104
  loc_604822: LitVarI2 var_B4, 3
  loc_604827: LitI4 1
  loc_60482C: ImpAdLdRf MemVar_74BF90
  loc_60482F: CVarRef
  loc_604834: FLdRfVar var_C4
  loc_604837: ImpAdCallFPR4  = Mid(, , )
  loc_60483C: FLdRfVar var_C4
  loc_60483F: LitVarStr var_D4, "\\."
  loc_604844: HardType
  loc_604845: EqVar var_E4
  loc_604849: NotVar var_F4
  loc_60484D: AndVar var_114
  loc_604851: CBoolVarNull
  loc_604853: FFreeVar var_B4 = "": var_C4 = ""
  loc_60485C: BranchF loc_604865
  loc_60485F: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_604864: ExitProcHresult
  loc_604865: LitI2_Byte &H1D
  loc_604867: PopTmpLdAd2 var_116
  loc_60486A: ImpAdCallI2 Proc_94_7_603DD0()
  loc_60486F: NotI4
  loc_604870: BranchF loc_604874
  loc_604873: ExitProcHresult
  loc_604874: OnErrorGoto loc_6048CC
  loc_604877: from_stack_1v = Proc_162_229_63F80C()
  loc_60487C: LitI2_Byte &HFF
  loc_60487E: FLdPrThis
  loc_60487F: VCallAd Control_ID_Text2
  loc_604882: FStAdFunc var_11C
  loc_604885: FLdPr var_11C
  loc_604888: Me.Visible = from_stack_1b
  loc_60488D: FFree1Ad var_11C
  loc_604890: LitStr "A:\SETUP.CFG"
  loc_604893: ImpAdLdUI1
  loc_604897: CI2UI1
  loc_604899: LitI2_Byte &HFF
  loc_60489B: OpenFile
  loc_60489F: CloseAll
  loc_6048A1: LitStr "A:\SETUP.CFG"
  loc_6048A4: ImpAdLdUI1
  loc_6048A8: CI2UI1
  loc_6048AA: LitI2_Byte &HFF
  loc_6048AC: OpenFile
  loc_6048B0: ImpAdCallFPR4 Proc_167_23_698938()
  loc_6048B5: CloseAll
  loc_6048B7: LitI2_Byte 0
  loc_6048B9: FLdPrThis
  loc_6048BA: VCallAd Control_ID_Text2
  loc_6048BD: FStAdFunc var_11C
  loc_6048C0: FLdPr var_11C
  loc_6048C3: Me.Visible = from_stack_1b
  loc_6048C8: FFree1Ad var_11C
  loc_6048CB: ExitProcHresult
  loc_6048CC: ImpAdCallFPR4 Proc_167_24_6719D8()
  loc_6048D1: LitI2_Byte 0
  loc_6048D3: FLdPrThis
  loc_6048D4: VCallAd Control_ID_Text2
  loc_6048D7: FStAdFunc var_11C
  loc_6048DA: FLdPr var_11C
  loc_6048DD: Me.Visible = from_stack_1b
  loc_6048E2: FFree1Ad var_11C
  loc_6048E5: ExitProcHresult
End Sub

Private Sub SETUP_RESTORE_Click() '6236C4
  'Data Table: 460894
  loc_623564: LitI4 &H2C
  loc_623569: ImpAdLdRf MemVar_74A170
  loc_62356C: Ary1LdI2
  loc_62356D: NotI4
  loc_62356E: CVarBoolI2 var_104
  loc_623572: LitVarI2 var_B4, 3
  loc_623577: LitI4 1
  loc_62357C: ImpAdLdRf MemVar_74BF90
  loc_62357F: CVarRef
  loc_623584: FLdRfVar var_C4
  loc_623587: ImpAdCallFPR4  = Mid(, , )
  loc_62358C: FLdRfVar var_C4
  loc_62358F: LitVarStr var_D4, "\\."
  loc_623594: HardType
  loc_623595: EqVar var_E4
  loc_623599: NotVar var_F4
  loc_62359D: AndVar var_114
  loc_6235A1: CBoolVarNull
  loc_6235A3: FFreeVar var_B4 = "": var_C4 = ""
  loc_6235AC: BranchF loc_6235B5
  loc_6235AF: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6235B4: ExitProcHresult
  loc_6235B5: LitI2_Byte &H1E
  loc_6235B7: PopTmpLdAd2 var_116
  loc_6235BA: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6235BF: NotI4
  loc_6235C0: BranchF loc_6235C4
  loc_6235C3: ExitProcHresult
  loc_6235C4: OnErrorGoto loc_6236AA
  loc_6235C7: from_stack_1v = Proc_162_229_63F80C()
  loc_6235CC: LitI2_Byte &HFF
  loc_6235CE: FLdPrThis
  loc_6235CF: VCallAd Control_ID_Text3
  loc_6235D2: FStAdFunc var_11C
  loc_6235D5: FLdPr var_11C
  loc_6235D8: Me.Visible = from_stack_1b
  loc_6235DD: FFree1Ad var_11C
  loc_6235E0: LitStr "A:\SETUP.CFG"
  loc_6235E3: ImpAdLdUI1
  loc_6235E7: CI2UI1
  loc_6235E9: LitI2_Byte &HFF
  loc_6235EB: OpenFile
  loc_6235EF: ImpAdLdUI1
  loc_6235F3: CI2UI1
  loc_6235F5: ImpAdCallI2 push LOF()
  loc_6235FA: LitI4 0
  loc_6235FF: EqI4
  loc_623600: BranchF loc_623678
  loc_623603: ImpAdCallFPR4 Beep()
  loc_623608: LitI2_Byte 0
  loc_62360A: FLdPrThis
  loc_62360B: VCallAd Control_ID_Text3
  loc_62360E: FStAdFunc var_11C
  loc_623611: FLdPr var_11C
  loc_623614: Me.Visible = from_stack_1b
  loc_623619: FFree1Ad var_11C
  loc_62361C: LitI4 &HD
  loc_623621: FLdRfVar var_B4
  loc_623624: ImpAdCallFPR4  = Chr()
  loc_623629: LitI4 &HA
  loc_62362E: FLdRfVar var_E4
  loc_623631: ImpAdCallFPR4  = Chr()
  loc_623636: LitVar_Missing var_12C
  loc_623639: LitVar_Missing var_114
  loc_62363C: FLdPr Me
  loc_62363F: MemLdRfVar from_stack_1.global_7508
  loc_623642: CVarRef
  loc_623647: LitI4 &H10
  loc_62364C: FLdPr Me
  loc_62364F: MemLdStr global_7512
  loc_623652: CVarStr var_94
  loc_623655: FLdRfVar var_B4
  loc_623658: ConcatVar var_C4
  loc_62365C: FLdRfVar var_E4
  loc_62365F: ConcatVar var_F4
  loc_623663: ImpAdCallFPR4 MsgBox(, , , , )
  loc_623668: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_F4 = "": var_114 = ""
  loc_623677: ExitProcHresult
  loc_623678: CloseAll
  loc_62367A: LitStr "A:\SETUP.CFG"
  loc_62367D: ImpAdLdUI1
  loc_623681: CI2UI1
  loc_623683: LitI2_Byte &HFF
  loc_623685: OpenFile
  loc_623689: ImpAdCallFPR4 Proc_167_14_6AB0C4()
  loc_62368E: CloseAll
  loc_623690: ImpAdCallFPR4 Proc_87_17_729AA4()
  loc_623695: LitI2_Byte 0
  loc_623697: FLdPrThis
  loc_623698: VCallAd Control_ID_Text3
  loc_62369B: FStAdFunc var_11C
  loc_62369E: FLdPr var_11C
  loc_6236A1: Me.Visible = from_stack_1b
  loc_6236A6: FFree1Ad var_11C
  loc_6236A9: ExitProcHresult
  loc_6236AA: ImpAdCallFPR4 Proc_167_25_6703EC()
  loc_6236AF: LitI2_Byte 0
  loc_6236B1: FLdPrThis
  loc_6236B2: VCallAd Control_ID_Text3
  loc_6236B5: FStAdFunc var_11C
  loc_6236B8: FLdPr var_11C
  loc_6236BB: Me.Visible = from_stack_1b
  loc_6236C0: FFree1Ad var_11C
  loc_6236C3: ExitProcHresult
End Sub

Private Sub mnuControlTanques_Click() '624440
  'Data Table: 460894
  loc_6242E0: LitI4 &H10
  loc_6242E5: ImpAdLdRf MemVar_74A170
  loc_6242E8: Ary1LdI2
  loc_6242E9: NotI4
  loc_6242EA: CVarBoolI2 var_104
  loc_6242EE: LitVarI2 var_B4, 3
  loc_6242F3: LitI4 1
  loc_6242F8: ImpAdLdRf MemVar_74BF90
  loc_6242FB: CVarRef
  loc_624300: FLdRfVar var_C4
  loc_624303: ImpAdCallFPR4  = Mid(, , )
  loc_624308: FLdRfVar var_C4
  loc_62430B: LitVarStr var_D4, "\\."
  loc_624310: HardType
  loc_624311: EqVar var_E4
  loc_624315: NotVar var_F4
  loc_624319: AndVar var_114
  loc_62431D: CBoolVarNull
  loc_62431F: FFreeVar var_B4 = "": var_C4 = ""
  loc_624328: BranchF loc_624331
  loc_62432B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_624330: ExitProcHresult
  loc_624331: LitI2_Byte &H2C
  loc_624333: PopTmpLdAd2 var_116
  loc_624336: ImpAdCallI2 Proc_94_7_603DD0()
  loc_62433B: NotI4
  loc_62433C: BranchF loc_624354
  loc_62433F: LitI2_Byte 0
  loc_624341: FLdPrThis
  loc_624342: VCallAd Control_ID_Text1
  loc_624345: FStAdFunc var_11C
  loc_624348: FLdPr var_11C
  loc_62434B: Me.Visible = from_stack_1b
  loc_624350: FFree1Ad var_11C
  loc_624353: ExitProcHresult
  loc_624354: FLdRfVar var_128
  loc_624357: FLdPrThis
  loc_624358: VCallAd Control_ID_Text1
  loc_62435B: FStAdFunc var_124
  loc_62435E: FLdPr var_124
  loc_624361:  = Me.Width
  loc_624366: FLdRfVar var_120
  loc_624369: FLdRfVar var_11C
  loc_62436C: ImpAdLdRf MemVar_7520D4
  loc_62436F: NewIfNullPr Global
  loc_624372:  = Global.Screen
  loc_624377: FLdPr var_11C
  loc_62437A:  = Screen.Width
  loc_62437F: FLdFPR4 var_120
  loc_624382: FLdFPR4 var_128
  loc_624385: SubR4
  loc_624386: FnAbsR4
  loc_624387: CI4R8
  loc_624388: LitI4 2
  loc_62438D: IDvI4
  loc_62438E: CR8I4
  loc_62438F: PopFPR4
  loc_624390: FLdPrThis
  loc_624391: VCallAd Control_ID_Text1
  loc_624394: FStAdFunc var_12C
  loc_624397: FLdPr var_12C
  loc_62439A: Me.Left = from_stack_1s
  loc_62439F: FFreeAd var_11C = "": var_124 = ""
  loc_6243A8: FLdRfVar var_128
  loc_6243AB: FLdPrThis
  loc_6243AC: VCallAd Control_ID_Text1
  loc_6243AF: FStAdFunc var_124
  loc_6243B2: FLdPr var_124
  loc_6243B5:  = Me.Height
  loc_6243BA: FLdRfVar var_120
  loc_6243BD: FLdRfVar var_11C
  loc_6243C0: ImpAdLdRf MemVar_7520D4
  loc_6243C3: NewIfNullPr Global
  loc_6243C6:  = Global.Screen
  loc_6243CB: FLdPr var_11C
  loc_6243CE:  = Screen.Height
  loc_6243D3: FLdFPR4 var_120
  loc_6243D6: FLdFPR4 var_128
  loc_6243D9: SubR4
  loc_6243DA: FnAbsR4
  loc_6243DB: CI4R8
  loc_6243DC: LitI4 2
  loc_6243E1: IDvI4
  loc_6243E2: CR8I4
  loc_6243E3: PopFPR4
  loc_6243E4: FLdPrThis
  loc_6243E5: VCallAd Control_ID_Text1
  loc_6243E8: FStAdFunc var_12C
  loc_6243EB: FLdPr var_12C
  loc_6243EE: Me.Top = from_stack_1s
  loc_6243F3: FFreeAd var_11C = "": var_124 = ""
  loc_6243FC: LitI2_Byte &HFF
  loc_6243FE: FLdPrThis
  loc_6243FF: VCallAd Control_ID_Text1
  loc_624402: FStAdFunc var_11C
  loc_624405: FLdPr var_11C
  loc_624408: Me.Visible = from_stack_1b
  loc_62440D: FFree1Ad var_11C
  loc_624410: LitVar_Missing var_A4
  loc_624413: PopAdLdVar
  loc_624414: LitVarI4
  loc_62441C: PopAdLdVar
  loc_62441D: ImpAdLdRf MemVar_74D8EC
  loc_624420: NewIfNullPr frmControlTanques
  loc_624423: frmControlTanques.Show from_stack_1, from_stack_2
  loc_624428: LitI2_Byte 0
  loc_62442A: FLdPrThis
  loc_62442B: VCallAd Control_ID_Text1
  loc_62442E: FStAdFunc var_11C
  loc_624431: FLdPr var_11C
  loc_624434: Me.Visible = from_stack_1b
  loc_624439: FFree1Ad var_11C
  loc_62443C: ExitProcHresult
End Sub

Private Sub MnuConvert_Click() '5E72E8
  'Data Table: 460894
  loc_5E727C: LitI4 &H11
  loc_5E7281: ImpAdLdRf MemVar_74A170
  loc_5E7284: Ary1LdI2
  loc_5E7285: NotI4
  loc_5E7286: CVarBoolI2 var_104
  loc_5E728A: LitVarI2 var_B4, 3
  loc_5E728F: LitI4 1
  loc_5E7294: ImpAdLdRf MemVar_74BF90
  loc_5E7297: CVarRef
  loc_5E729C: FLdRfVar var_C4
  loc_5E729F: ImpAdCallFPR4  = Mid(, , )
  loc_5E72A4: FLdRfVar var_C4
  loc_5E72A7: LitVarStr var_D4, "\\."
  loc_5E72AC: HardType
  loc_5E72AD: EqVar var_E4
  loc_5E72B1: NotVar var_F4
  loc_5E72B5: AndVar var_114
  loc_5E72B9: CBoolVarNull
  loc_5E72BB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5E72C4: BranchF loc_5E72CD
  loc_5E72C7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5E72CC: ExitProcHresult
  loc_5E72CD: LitVar_Missing var_A4
  loc_5E72D0: PopAdLdVar
  loc_5E72D1: LitVarI4
  loc_5E72D9: PopAdLdVar
  loc_5E72DA: ImpAdLdRf MemVar_74E22C
  loc_5E72DD: NewIfNullPr frmTablaTanques
  loc_5E72E0: frmTablaTanques.Show from_stack_1, from_stack_2
  loc_5E72E5: ExitProcHresult
End Sub

Private Sub mnuGruposSurtidores_Click() '5EAC78
  'Data Table: 460894
  loc_5EABFC: LitI4 &H1A
  loc_5EAC01: ImpAdLdRf MemVar_74A170
  loc_5EAC04: Ary1LdI2
  loc_5EAC05: NotI4
  loc_5EAC06: CVarBoolI2 var_104
  loc_5EAC0A: LitVarI2 var_B4, 3
  loc_5EAC0F: LitI4 1
  loc_5EAC14: ImpAdLdRf MemVar_74BF90
  loc_5EAC17: CVarRef
  loc_5EAC1C: FLdRfVar var_C4
  loc_5EAC1F: ImpAdCallFPR4  = Mid(, , )
  loc_5EAC24: FLdRfVar var_C4
  loc_5EAC27: LitVarStr var_D4, "\\."
  loc_5EAC2C: HardType
  loc_5EAC2D: EqVar var_E4
  loc_5EAC31: NotVar var_F4
  loc_5EAC35: AndVar var_114
  loc_5EAC39: CBoolVarNull
  loc_5EAC3B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EAC44: BranchF loc_5EAC4D
  loc_5EAC47: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EAC4C: ExitProcHresult
  loc_5EAC4D: LitI2_Byte &H49
  loc_5EAC4F: PopTmpLdAd2 var_116
  loc_5EAC52: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EAC57: NotI4
  loc_5EAC58: BranchF loc_5EAC5C
  loc_5EAC5B: ExitProcHresult
  loc_5EAC5C: LitVar_Missing var_A4
  loc_5EAC5F: PopAdLdVar
  loc_5EAC60: LitVarI4
  loc_5EAC68: PopAdLdVar
  loc_5EAC69: ImpAdLdRf MemVar_74D928
  loc_5EAC6C: NewIfNullPr frmGruposSurtidores
  loc_5EAC6F: frmGruposSurtidores.Show from_stack_1, from_stack_2
  loc_5EAC74: ExitProcHresult
End Sub

Private Sub mnuPrintConfig_Click() '625E18
  'Data Table: 460894
  loc_625CAC: LitI4 &H1E
  loc_625CB1: ImpAdLdRf MemVar_74A170
  loc_625CB4: Ary1LdI2
  loc_625CB5: NotI4
  loc_625CB6: CVarBoolI2 var_104
  loc_625CBA: LitVarI2 var_B4, 3
  loc_625CBF: LitI4 1
  loc_625CC4: ImpAdLdRf MemVar_74BF90
  loc_625CC7: CVarRef
  loc_625CCC: FLdRfVar var_C4
  loc_625CCF: ImpAdCallFPR4  = Mid(, , )
  loc_625CD4: FLdRfVar var_C4
  loc_625CD7: LitVarStr var_D4, "\\."
  loc_625CDC: HardType
  loc_625CDD: EqVar var_E4
  loc_625CE1: NotVar var_F4
  loc_625CE5: AndVar var_114
  loc_625CE9: CBoolVarNull
  loc_625CEB: FFreeVar var_B4 = "": var_C4 = ""
  loc_625CF4: BranchF loc_625CFD
  loc_625CF7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_625CFC: ExitProcHresult
  loc_625CFD: LitI2_Byte &H34
  loc_625CFF: PopTmpLdAd2 var_116
  loc_625D02: ImpAdCallI2 Proc_94_7_603DD0()
  loc_625D07: NotI4
  loc_625D08: BranchF loc_625D0C
  loc_625D0B: ExitProcHresult
  loc_625D0C: LitVar_Missing var_E4
  loc_625D0F: LitVar_Missing var_C4
  loc_625D12: LitVar_Missing var_B4
  loc_625D15: LitI4 &H24
  loc_625D1A: FLdPr Me
  loc_625D1D: MemLdRfVar from_stack_1.global_7496
  loc_625D20: CVarRef
  loc_625D25: ImpAdCallI2 MsgBox(, , , , )
  loc_625D2A: LitI4 6
  loc_625D2F: EqI4
  loc_625D30: FFreeVar var_B4 = "": var_C4 = ""
  loc_625D39: BranchF loc_625E14
  loc_625D3C: FLdRfVar var_128
  loc_625D3F: FLdPrThis
  loc_625D40: VCallAd Control_ID_Text4
  loc_625D43: FStAdFunc var_124
  loc_625D46: FLdPr var_124
  loc_625D49:  = Me.Height
  loc_625D4E: FLdRfVar var_120
  loc_625D51: FLdRfVar var_11C
  loc_625D54: ImpAdLdRf MemVar_7520D4
  loc_625D57: NewIfNullPr Global
  loc_625D5A:  = Global.Screen
  loc_625D5F: FLdPr var_11C
  loc_625D62:  = Screen.Height
  loc_625D67: FLdFPR4 var_120
  loc_625D6A: FLdFPR4 var_128
  loc_625D6D: SubR4
  loc_625D6E: CI4R8
  loc_625D6F: LitI4 2
  loc_625D74: IDvI4
  loc_625D75: CR8I4
  loc_625D76: PopFPR4
  loc_625D77: FLdPrThis
  loc_625D78: VCallAd Control_ID_Text4
  loc_625D7B: FStAdFunc var_12C
  loc_625D7E: FLdPr var_12C
  loc_625D81: Me.Top = from_stack_1s
  loc_625D86: FFreeAd var_11C = "": var_124 = ""
  loc_625D8F: FLdRfVar var_128
  loc_625D92: FLdPrThis
  loc_625D93: VCallAd Control_ID_Text4
  loc_625D96: FStAdFunc var_124
  loc_625D99: FLdPr var_124
  loc_625D9C:  = Me.Width
  loc_625DA1: FLdRfVar var_120
  loc_625DA4: FLdRfVar var_11C
  loc_625DA7: ImpAdLdRf MemVar_7520D4
  loc_625DAA: NewIfNullPr Global
  loc_625DAD:  = Global.Screen
  loc_625DB2: FLdPr var_11C
  loc_625DB5:  = Screen.Width
  loc_625DBA: FLdFPR4 var_120
  loc_625DBD: FLdFPR4 var_128
  loc_625DC0: SubR4
  loc_625DC1: CI4R8
  loc_625DC2: LitI4 2
  loc_625DC7: IDvI4
  loc_625DC8: CR8I4
  loc_625DC9: PopFPR4
  loc_625DCA: FLdPrThis
  loc_625DCB: VCallAd Control_ID_Text4
  loc_625DCE: FStAdFunc var_12C
  loc_625DD1: FLdPr var_12C
  loc_625DD4: Me.Left = from_stack_1s
  loc_625DD9: FFreeAd var_11C = "": var_124 = ""
  loc_625DE2: LitI2_Byte &HFF
  loc_625DE4: FLdPrThis
  loc_625DE5: VCallAd Control_ID_Text4
  loc_625DE8: FStAdFunc var_11C
  loc_625DEB: FLdPr var_11C
  loc_625DEE: Me.Visible = from_stack_1b
  loc_625DF3: FFree1Ad var_11C
  loc_625DF6: LitI2_Byte &HFF
  loc_625DF8: ImpAdStI2 MemVar_74BF74
  loc_625DFB: ImpAdCallFPR4 Proc_166_10_693A48()
  loc_625E00: LitI2_Byte 0
  loc_625E02: FLdPrThis
  loc_625E03: VCallAd Control_ID_Text4
  loc_625E06: FStAdFunc var_11C
  loc_625E09: FLdPr var_11C
  loc_625E0C: Me.Visible = from_stack_1b
  loc_625E11: FFree1Ad var_11C
  loc_625E14: ExitProcHresult
End Sub

Private Sub SETUP_STATION_Click() '5E9B54
  'Data Table: 460894
  loc_5E9ADC: LitI4 &H12
  loc_5E9AE1: ImpAdLdRf MemVar_74A170
  loc_5E9AE4: Ary1LdI2
  loc_5E9AE5: NotI4
  loc_5E9AE6: CVarBoolI2 var_104
  loc_5E9AEA: LitVarI2 var_B4, 3
  loc_5E9AEF: LitI4 1
  loc_5E9AF4: ImpAdLdRf MemVar_74BF90
  loc_5E9AF7: CVarRef
  loc_5E9AFC: FLdRfVar var_C4
  loc_5E9AFF: ImpAdCallFPR4  = Mid(, , )
  loc_5E9B04: FLdRfVar var_C4
  loc_5E9B07: LitVarStr var_D4, "\\."
  loc_5E9B0C: HardType
  loc_5E9B0D: EqVar var_E4
  loc_5E9B11: NotVar var_F4
  loc_5E9B15: AndVar var_114
  loc_5E9B19: CBoolVarNull
  loc_5E9B1B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5E9B24: BranchF loc_5E9B2D
  loc_5E9B27: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5E9B2C: ExitProcHresult
  loc_5E9B2D: LitI2_Byte &H22
  loc_5E9B2F: PopTmpLdAd2 var_116
  loc_5E9B32: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E9B37: NotI4
  loc_5E9B38: BranchF loc_5E9B3C
  loc_5E9B3B: ExitProcHresult
  loc_5E9B3C: LitVar_Missing var_A4
  loc_5E9B3F: PopAdLdVar
  loc_5E9B40: LitVarI2 var_94, 1
  loc_5E9B45: PopAdLdVar
  loc_5E9B46: ImpAdLdRf MemVar_74C8C4
  loc_5E9B49: NewIfNullPr Station
  loc_5E9B4C: Station.Show from_stack_1, from_stack_2
  loc_5E9B51: ExitProcHresult
  loc_5E9B52: ExitProc
End Sub

Private Sub FORECOURT_Click() '6363D4
  'Data Table: 460894
  loc_6361D0: LitI2_Byte 1
  loc_6361D2: PopTmpLdAd2 var_90
  loc_6361D5: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6361DA: NotI4
  loc_6361DB: BranchF loc_6361DF
  loc_6361DE: ExitProcHresult
  loc_6361DF: from_stack_1v = Proc_162_229_63F80C()
  loc_6361E4: LitI2_Byte &HFF
  loc_6361E6: FLdPrThis
  loc_6361E7: VCallAd Control_ID_Text1
  loc_6361EA: FStAdFunc var_94
  loc_6361ED: FLdPr var_94
  loc_6361F0: Me.Visible = from_stack_1b
  loc_6361F5: FFree1Ad var_94
  loc_6361F8: ImpAdLdI2 MemVar_74C7C2
  loc_6361FB: NotI4
  loc_6361FC: BranchF loc_636368
  loc_6361FF: LitI2_Byte 0
  loc_636201: PopTmpLdAd2 var_90
  loc_636204: ImpAdCallI2 Proc_53_4_718EF4()
  loc_636209: BranchF loc_636249
  loc_63620C: FLdRfVar var_90
  loc_63620F: FLdRfVar var_88
  loc_636212: FLdRfVar var_94
  loc_636215: ImpAdLdRf MemVar_74C760
  loc_636218: NewIfNullPr Formx
  loc_63621B: from_stack_1v = Formx.global_4589716Get()
  loc_636220: FLdPr var_94
  loc_636223:  = Formx.FontUnderline
  loc_636228: FLdI2 var_90
  loc_63622B: NotI4
  loc_63622C: FFree1Ad var_94
  loc_63622F: BranchF loc_636249
  loc_636232: FLdRfVar var_A4
  loc_636235: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_63623A: FLdRfVar var_A4
  loc_63623D: CBoolVarNull
  loc_63623F: FFree1Var var_A4 = ""
  loc_636242: BranchF loc_636246
  loc_636245: ExitProcHresult
  loc_636246: Branch loc_63620C
  loc_636249: LitI2_Byte 1
  loc_63624B: FStI2 var_8A
  loc_63624E: LitI2_Byte 1
  loc_636250: CUI1I2
  loc_636252: FLdRfVar var_8E
  loc_636255: LitI2_Byte 5
  loc_636257: CUI1I2
  loc_636259: ForUI1 var_A8
  loc_63625F: LitI2_Byte 1
  loc_636261: CUI1I2
  loc_636263: FLdRfVar var_8C
  loc_636266: LitI2_Byte &HA
  loc_636268: CUI1I2
  loc_63626A: ForUI1 var_AC
  loc_636270: LitVarI2 var_A4, 6
  loc_636275: FLdI2 var_8A
  loc_636278: CI4UI1
  loc_636279: FLdRfVar var_88
  loc_63627C: CVarRef
  loc_636281: FLdRfVar var_DC
  loc_636284: ImpAdCallFPR4  = Mid(, , )
  loc_636289: FLdRfVar var_DC
  loc_63628C: FnCCurVar
  loc_63628E: CR8Cy
  loc_63628F: ImpAdLdFPR4 MemVar_74C2DC
  loc_636292: DivR8
  loc_636293: CCyR4
  loc_636294: FLdUI1
  loc_636298: CI4UI1
  loc_636299: FLdUI1
  loc_63629D: CI4UI1
  loc_63629E: ImpAdLdRf MemVar_74C074
  loc_6362A1: AryLdPr
  loc_6362A4: MemStR8 global_0
  loc_6362A7: FFreeVar var_A4 = "": var_DC = ""
  loc_6362B0: FLdI2 var_8A
  loc_6362B3: LitI2_Byte 6
  loc_6362B5: AddI2
  loc_6362B6: FStI2 var_8A
  loc_6362B9: FLdRfVar var_8C
  loc_6362BC: NextUI1
  loc_6362C2: FLdRfVar var_8E
  loc_6362C5: NextUI1
  loc_6362CB: LitI2_Byte 1
  loc_6362CD: CUI1I2
  loc_6362CF: FLdRfVar var_8C
  loc_6362D2: LitI2_Byte &HA
  loc_6362D4: CUI1I2
  loc_6362D6: ForUI1 var_E0
  loc_6362DC: LitVarI2 var_A4, 8
  loc_6362E1: FLdI2 var_8A
  loc_6362E4: CI4UI1
  loc_6362E5: FLdRfVar var_88
  loc_6362E8: CVarRef
  loc_6362ED: FLdRfVar var_DC
  loc_6362F0: ImpAdCallFPR4  = Mid(, , )
  loc_6362F5: FLdRfVar var_DC
  loc_6362F8: FnCCurVar
  loc_6362FA: CR8Cy
  loc_6362FB: LitI2 10000
  loc_6362FE: CR8I2
  loc_6362FF: DivR8
  loc_636300: CCyR4
  loc_636301: FLdUI1
  loc_636305: CI4UI1
  loc_636306: ImpAdLdRf MemVar_74C094
  loc_636309: Ary1StCy
  loc_63630A: FFreeVar var_A4 = "": var_DC = ""
  loc_636313: FLdI2 var_8A
  loc_636316: LitI2_Byte 8
  loc_636318: AddI2
  loc_636319: FStI2 var_8A
  loc_63631C: FLdRfVar var_8C
  loc_63631F: NextUI1
  loc_636325: LitI2_Byte 0
  loc_636327: FLdPrThis
  loc_636328: VCallAd Control_ID_Reloj
  loc_63632B: FStAdFunc var_94
  loc_63632E: FLdPr var_94
  loc_636331: Me.Enabled = from_stack_1b
  loc_636336: FFree1Ad var_94
  loc_636339: LitVar_Missing var_CC
  loc_63633C: PopAdLdVar
  loc_63633D: LitVarI4
  loc_636345: PopAdLdVar
  loc_636346: ImpAdLdRf MemVar_74D8B0
  loc_636349: NewIfNullPr Consola
  loc_63634C: Consola.Show from_stack_1, from_stack_2
  loc_636351: LitI2_Byte &HFF
  loc_636353: FLdPrThis
  loc_636354: VCallAd Control_ID_Reloj
  loc_636357: FStAdFunc var_94
  loc_63635A: FLdPr var_94
  loc_63635D: Me.Enabled = from_stack_1b
  loc_636362: FFree1Ad var_94
  loc_636365: Branch loc_636380
  loc_636368: LitVar_Missing var_CC
  loc_63636B: PopAdLdVar
  loc_63636C: LitVarI4
  loc_636374: PopAdLdVar
  loc_636375: ImpAdLdRf MemVar_74D8B0
  loc_636378: NewIfNullPr Consola
  loc_63637B: Consola.Show from_stack_1, from_stack_2
  loc_636380: LitI2_Byte 0
  loc_636382: FLdPrThis
  loc_636383: VCallAd Control_ID_Text1
  loc_636386: FStAdFunc var_94
  loc_636389: FLdPr var_94
  loc_63638C: Me.Visible = from_stack_1b
  loc_636391: FFree1Ad var_94
  loc_636394: LitI2_Byte &HFF
  loc_636396: FLdPrThis
  loc_636397: VCallAd Control_ID_Text2
  loc_63639A: FStAdFunc var_94
  loc_63639D: FLdPr var_94
  loc_6363A0: Me.Visible = from_stack_1b
  loc_6363A5: FFree1Ad var_94
  loc_6363A8: LitI2_Byte 0
  loc_6363AA: FLdPrThis
  loc_6363AB: VCallAd Control_ID_Text4
  loc_6363AE: FStAdFunc var_94
  loc_6363B1: FLdPr var_94
  loc_6363B4: Me.Visible = from_stack_1b
  loc_6363B9: FFree1Ad var_94
  loc_6363BC: LitI2_Byte 0
  loc_6363BE: FLdPrThis
  loc_6363BF: VCallAd Control_ID_Text2
  loc_6363C2: FStAdFunc var_94
  loc_6363C5: FLdPr var_94
  loc_6363C8: Me.Visible = from_stack_1b
  loc_6363CD: FFree1Ad var_94
  loc_6363D0: ExitProcHresult
End Sub

Private Sub mnuReporteGrupo_Click() '5DB1B4
  'Data Table: 460894
  loc_5DB174: LitI2_Byte &H4A
  loc_5DB176: PopTmpLdAd2 var_86
  loc_5DB179: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5DB17E: NotI4
  loc_5DB17F: BranchF loc_5DB183
  loc_5DB182: ExitProcHresult
  loc_5DB183: LitStr "G"
  loc_5DB186: ImpAdLdRf MemVar_74DC6C
  loc_5DB189: NewIfNullPr Reportes_Anteriores
  loc_5DB18C: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5DB191: LitI2_Byte 0
  loc_5DB193: ImpAdLdRf MemVar_74DC6C
  loc_5DB196: NewIfNullPr Reportes_Anteriores
  loc_5DB199: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5DB19E: LitVar_Missing var_A8
  loc_5DB1A1: PopAdLdVar
  loc_5DB1A2: LitVarI2 var_98, 1
  loc_5DB1A7: PopAdLdVar
  loc_5DB1A8: ImpAdLdRf MemVar_74DC6C
  loc_5DB1AB: NewIfNullPr Reportes_Anteriores
  loc_5DB1AE: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5DB1B3: ExitProcHresult
End Sub

Private Sub mnuReporteDeSeguridad_Click() '62DB94
  'Data Table: 460894
  loc_62DA44: LitI2_Byte 1
  loc_62DA46: FLdPr Me
  loc_62DA49: MemStI2 global_130
  loc_62DA4C: FLdRfVar var_278
  loc_62DA4F: LitVar_Missing var_274
  loc_62DA52: LitVar_Missing var_254
  loc_62DA55: LitVar_Missing var_234
  loc_62DA58: LitVar_Missing var_214
  loc_62DA5B: LitVar_Missing var_1F4
  loc_62DA5E: LitVar_Missing var_1D4
  loc_62DA61: LitVar_Missing var_1B4
  loc_62DA64: LitVar_Missing var_194
  loc_62DA67: LitVar_Missing var_174
  loc_62DA6A: LitVar_Missing var_154
  loc_62DA6D: LitStr "¿Desea imprimir el reporte?"
  loc_62DA70: FStStrCopy var_134
  loc_62DA73: FLdRfVar var_134
  loc_62DA76: LitI4 &H94
  loc_62DA7B: PopTmpLdAdStr var_130
  loc_62DA7E: LitI2_Byte &HA
  loc_62DA80: PopTmpLdAd2 var_12A
  loc_62DA83: ImpAdLdRf MemVar_74C7D0
  loc_62DA86: NewIfNullPr clsMsg
  loc_62DA89: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62DA8E: ILdRf var_278
  loc_62DA91: FLdPr Me
  loc_62DA94: MemStStrCopy
  loc_62DA98: FFreeStr var_134 = ""
  loc_62DA9F: FFreeVar var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = ""
  loc_62DAB6: FLdRfVar var_278
  loc_62DAB9: LitVar_Missing var_274
  loc_62DABC: LitVar_Missing var_254
  loc_62DABF: LitVar_Missing var_234
  loc_62DAC2: LitVar_Missing var_214
  loc_62DAC5: LitVar_Missing var_1F4
  loc_62DAC8: LitVar_Missing var_1D4
  loc_62DACB: LitVar_Missing var_1B4
  loc_62DACE: LitVar_Missing var_194
  loc_62DAD1: LitVar_Missing var_174
  loc_62DAD4: LitVar_Missing var_154
  loc_62DAD7: LitStr "Reporte de configuración de seguridad."
  loc_62DADA: FStStrCopy var_134
  loc_62DADD: FLdRfVar var_134
  loc_62DAE0: LitI4 &H95
  loc_62DAE5: PopTmpLdAdStr var_130
  loc_62DAE8: LitI2_Byte &HA
  loc_62DAEA: PopTmpLdAd2 var_12A
  loc_62DAED: ImpAdLdRf MemVar_74C7D0
  loc_62DAF0: NewIfNullPr clsMsg
  loc_62DAF3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62DAF8: ILdRf var_278
  loc_62DAFB: FLdPr Me
  loc_62DAFE: MemStStrCopy
  loc_62DB02: FFreeStr var_134 = ""
  loc_62DB09: FFreeVar var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = ""
  loc_62DB20: LitVar_Missing var_174
  loc_62DB23: LitVar_Missing var_154
  loc_62DB26: FLdPr Me
  loc_62DB29: MemLdRfVar from_stack_1.global_7588
  loc_62DB2C: CVarRef
  loc_62DB31: LitI4 &H44
  loc_62DB36: FLdPr Me
  loc_62DB39: MemLdRfVar from_stack_1.global_7584
  loc_62DB3C: CVarRef
  loc_62DB41: ImpAdCallI2 MsgBox(, , , , )
  loc_62DB46: FStR4 var_118
  loc_62DB49: FFreeVar var_154 = ""
  loc_62DB50: ILdRf var_118
  loc_62DB53: LitI4 7
  loc_62DB58: EqI4
  loc_62DB59: BranchF loc_62DB5D
  loc_62DB5C: ExitProcHresult
  loc_62DB5D: FLdRfVar var_12A
  loc_62DB60: FLdRfVar var_88
  loc_62DB63: NewIfNullPr CReporte
  loc_62DB66: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62DB6B: FLdI2 var_12A
  loc_62DB6E: NotI4
  loc_62DB6F: BranchF loc_62DB92
  loc_62DB72: FLdRfVar var_8C
  loc_62DB75: NewIfNullRf
  loc_62DB79: FLdRfVar var_88
  loc_62DB7C: NewIfNullRf
  loc_62DB80: LitI2_Byte 0
  loc_62DB82: PopTmpLdAd2 var_12A
  loc_62DB85: LitI4 1
  loc_62DB8A: PopTmpLdAdStr var_130
  loc_62DB8D: from_stack_2v = Proc_162_237_6D3630(from_stack_1v)
  loc_62DB92: ExitProcHresult
End Sub

Private Sub mnuForzarCierreRedXXI_Click() '5EF57C
  'Data Table: 460894
  loc_5EF4F0: LitI2_Byte &H30
  loc_5EF4F2: PopTmpLdAd2 var_86
  loc_5EF4F5: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EF4FA: NotI4
  loc_5EF4FB: BranchF loc_5EF4FF
  loc_5EF4FE: ExitProcHresult
  loc_5EF4FF: LitVar_Missing var_108
  loc_5EF502: LitVar_Missing var_E8
  loc_5EF505: LitVarStr var_B8, "Forzar Cierre Red XXI"
  loc_5EF50A: FStVarCopyObj var_C8
  loc_5EF50D: FLdRfVar var_C8
  loc_5EF510: LitI4 &H24
  loc_5EF515: LitVarStr var_98, "Esta seguro de forzar Cierre Red XXI?"
  loc_5EF51A: FStVarCopyObj var_A8
  loc_5EF51D: FLdRfVar var_A8
  loc_5EF520: ImpAdCallI2 MsgBox(, , , , )
  loc_5EF525: LitI4 6
  loc_5EF52A: EqI4
  loc_5EF52B: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_5EF536: BranchF loc_5EF57B
  loc_5EF539: FLdRfVar var_A8
  loc_5EF53C: FLdRfVar var_10C
  loc_5EF53F: ImpAdLdRf MemVar_74C760
  loc_5EF542: NewIfNullPr Formx
  loc_5EF545: from_stack_1v = Formx.global_4589716Get()
  loc_5EF54A: FLdPr var_10C
  loc_5EF54D:  = Formx.ClipControls
  loc_5EF552: FLdRfVar var_A8
  loc_5EF555: NotVar var_C8
  loc_5EF559: CBoolVarNull
  loc_5EF55B: FFree1Ad var_10C
  loc_5EF55E: FFree1Var var_A8 = ""
  loc_5EF561: BranchF loc_5EF57B
  loc_5EF564: FLdRfVar var_A8
  loc_5EF567: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5EF56C: FLdRfVar var_A8
  loc_5EF56F: CBoolVarNull
  loc_5EF571: FFree1Var var_A8 = ""
  loc_5EF574: BranchF loc_5EF578
  loc_5EF577: ExitProcHresult
  loc_5EF578: Branch loc_5EF539
  loc_5EF57B: ExitProcHresult
End Sub

Private Sub StockEx_Click() '5D9A9C
  'Data Table: 460894
  loc_5D9A6C: LitI2_Byte &H65
  loc_5D9A6E: PopTmpLdAd2 var_86
  loc_5D9A71: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D9A76: NotI4
  loc_5D9A77: BranchF loc_5D9A7B
  loc_5D9A7A: ExitProcHresult
  loc_5D9A7B: LitStr "Por Excepción"
  loc_5D9A7E: FStStrCopy var_90
  loc_5D9A81: FLdRfVar var_90
  loc_5D9A84: LitStr "07"
  loc_5D9A87: FStStrCopy var_8C
  loc_5D9A8A: FLdRfVar var_8C
  loc_5D9A8D: from_stack_3v = Proc_162_217_61F318(from_stack_1v, from_stack_2v)
  loc_5D9A92: FFreeStr var_8C = ""
  loc_5D9A99: ExitProcHresult
End Sub

Private Sub StockProg_Click() '5D9624
  'Data Table: 460894
  loc_5D95F4: LitI2_Byte &H64
  loc_5D95F6: PopTmpLdAd2 var_86
  loc_5D95F9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D95FE: NotI4
  loc_5D95FF: BranchF loc_5D9603
  loc_5D9602: ExitProcHresult
  loc_5D9603: LitStr "Programado"
  loc_5D9606: FStStrCopy var_90
  loc_5D9609: FLdRfVar var_90
  loc_5D960C: LitStr "06"
  loc_5D960F: FStStrCopy var_8C
  loc_5D9612: FLdRfVar var_8C
  loc_5D9615: from_stack_3v = Proc_162_217_61F318(from_stack_1v, from_stack_2v)
  loc_5D961A: FFreeStr var_8C = ""
  loc_5D9621: ExitProcHresult
End Sub

Private Sub mnuCerrarConsola_Click() '5C8078
  'Data Table: 460894
  loc_5C8074: End
  loc_5C8076: ExitProcHresult
End Sub

Private Sub mnuAdministraciónDeServicios_Click() '5F52D0
  'Data Table: 460894
  loc_5F521C: FLdRfVar var_88
  loc_5F521F: LitI2_Byte &H52
  loc_5F5221: PopTmpLdAd2 var_86
  loc_5F5224: ImpAdLdRf MemVar_74A21C
  loc_5F5227: NewIfNullPr clsSecurity
  loc_5F522F: FLdRfVar var_8C
  loc_5F5232: LitI2_Byte &H52
  loc_5F5234: PopTmpLdAd2 var_8A
  loc_5F5237: ImpAdLdRf MemVar_74A21C
  loc_5F523A: NewIfNullPr clsSecurity
  loc_5F5242: FLdUI1
  loc_5F5246: CVarUI1
  loc_5F524A: LitVarI2 var_BC, 1
  loc_5F524F: FLdUI1
  loc_5F5253: CI2UI1
  loc_5F5255: LitI2_Byte 0
  loc_5F5257: EqI2
  loc_5F5258: CVarBoolI2 var_9C
  loc_5F525C: FLdRfVar var_EC
  loc_5F525F: ImpAdCallFPR4  = IIf(, , )
  loc_5F5264: FLdRfVar var_EC
  loc_5F5267: CUI1Var
  loc_5F5269: ImpAdLdRf MemVar_74DC58
  loc_5F526C: NewIfNullPr frmLogin
  loc_5F526F: Call frmLogin.NivelPut(from_stack_1v)
  loc_5F5274: FFreeVar var_9C = "": var_BC = "": var_DC = ""
  loc_5F527F: LitI2_Byte &H52
  loc_5F5281: ImpAdLdRf MemVar_74DC58
  loc_5F5284: NewIfNullPr frmLogin
  loc_5F5287: Call frmLogin.ModuloPut(from_stack_1v)
  loc_5F528C: LitVar_Missing var_AC
  loc_5F528F: PopAdLdVar
  loc_5F5290: LitVarI2 var_9C, 1
  loc_5F5295: PopAdLdVar
  loc_5F5296: ImpAdLdRf MemVar_74DC58
  loc_5F5299: NewIfNullPr frmLogin
  loc_5F529C: frmLogin.Show from_stack_1, from_stack_2
  loc_5F52A1: FLdRfVar var_86
  loc_5F52A4: ImpAdLdRf MemVar_74DC58
  loc_5F52A7: NewIfNullPr frmLogin
  loc_5F52AA: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_5F52AF: FLdI2 var_86
  loc_5F52B2: NotI4
  loc_5F52B3: BranchF loc_5F52BA
  loc_5F52B6: ExitProcHresult
  loc_5F52B7: Branch loc_5F52CF
  loc_5F52BA: LitVar_Missing var_AC
  loc_5F52BD: PopAdLdVar
  loc_5F52BE: LitVarI2 var_9C, 1
  loc_5F52C3: PopAdLdVar
  loc_5F52C4: ImpAdLdRf MemVar_74DBE0
  loc_5F52C7: NewIfNullPr frmAdministraciónDeServicios
  loc_5F52CA: frmAdministraciónDeServicios.Show from_stack_1, from_stack_2
  loc_5F52CF: ExitProcHresult
End Sub

Private Sub MnuBaja_Click() '5F0C90
  'Data Table: 460894
  loc_5F0C00: LitI4 6
  loc_5F0C05: ImpAdLdRf MemVar_74A170
  loc_5F0C08: Ary1LdI2
  loc_5F0C09: NotI4
  loc_5F0C0A: CVarBoolI2 var_104
  loc_5F0C0E: LitVarI2 var_B4, 3
  loc_5F0C13: LitI4 1
  loc_5F0C18: ImpAdLdRf MemVar_74BF90
  loc_5F0C1B: CVarRef
  loc_5F0C20: FLdRfVar var_C4
  loc_5F0C23: ImpAdCallFPR4  = Mid(, , )
  loc_5F0C28: FLdRfVar var_C4
  loc_5F0C2B: LitVarStr var_D4, "\\."
  loc_5F0C30: HardType
  loc_5F0C31: EqVar var_E4
  loc_5F0C35: NotVar var_F4
  loc_5F0C39: AndVar var_114
  loc_5F0C3D: CBoolVarNull
  loc_5F0C3F: FFreeVar var_B4 = "": var_C4 = ""
  loc_5F0C48: BranchF loc_5F0C51
  loc_5F0C4B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5F0C50: ExitProcHresult
  loc_5F0C51: LitI2_Byte &H56
  loc_5F0C53: PopTmpLdAd2 var_116
  loc_5F0C56: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5F0C5B: NotI4
  loc_5F0C5C: BranchF loc_5F0C60
  loc_5F0C5F: ExitProcHresult
  loc_5F0C60: FLdRfVar var_B4
  loc_5F0C63: LitI2_Byte 0
  loc_5F0C65: PopTmpLdAd2 var_116
  loc_5F0C68: ImpAdLdRf MemVar_74E114
  loc_5F0C6B: NewIfNullPr ConsignadosPendientes
  loc_5F0C6E: from_stack_2v = ConsignadosPendientes.SetAltaConsig(from_stack_1v)
  loc_5F0C73: FFree1Var var_B4 = ""
  loc_5F0C76: LitVar_Missing var_A4
  loc_5F0C79: PopAdLdVar
  loc_5F0C7A: LitVarI4
  loc_5F0C82: PopAdLdVar
  loc_5F0C83: ImpAdLdRf MemVar_74E114
  loc_5F0C86: NewIfNullPr ConsignadosPendientes
  loc_5F0C89: ConsignadosPendientes.Show from_stack_1, from_stack_2
  loc_5F0C8E: ExitProcHresult
End Sub

Private Sub MnuAltaconsig_Click() '5F0940
  'Data Table: 460894
  loc_5F08B0: LitI4 2
  loc_5F08B5: ImpAdLdRf MemVar_74A170
  loc_5F08B8: Ary1LdI2
  loc_5F08B9: NotI4
  loc_5F08BA: CVarBoolI2 var_104
  loc_5F08BE: LitVarI2 var_B4, 3
  loc_5F08C3: LitI4 1
  loc_5F08C8: ImpAdLdRf MemVar_74BF90
  loc_5F08CB: CVarRef
  loc_5F08D0: FLdRfVar var_C4
  loc_5F08D3: ImpAdCallFPR4  = Mid(, , )
  loc_5F08D8: FLdRfVar var_C4
  loc_5F08DB: LitVarStr var_D4, "\\."
  loc_5F08E0: HardType
  loc_5F08E1: EqVar var_E4
  loc_5F08E5: NotVar var_F4
  loc_5F08E9: AndVar var_114
  loc_5F08ED: CBoolVarNull
  loc_5F08EF: FFreeVar var_B4 = "": var_C4 = ""
  loc_5F08F8: BranchF loc_5F0901
  loc_5F08FB: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5F0900: ExitProcHresult
  loc_5F0901: LitI2_Byte &H56
  loc_5F0903: PopTmpLdAd2 var_116
  loc_5F0906: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5F090B: NotI4
  loc_5F090C: BranchF loc_5F0910
  loc_5F090F: ExitProcHresult
  loc_5F0910: FLdRfVar var_B4
  loc_5F0913: LitI2_Byte &HFF
  loc_5F0915: PopTmpLdAd2 var_116
  loc_5F0918: ImpAdLdRf MemVar_74E114
  loc_5F091B: NewIfNullPr ConsignadosPendientes
  loc_5F091E: from_stack_2v = ConsignadosPendientes.SetAltaConsig(from_stack_1v)
  loc_5F0923: FFree1Var var_B4 = ""
  loc_5F0926: LitVar_Missing var_A4
  loc_5F0929: PopAdLdVar
  loc_5F092A: LitVarI4
  loc_5F0932: PopAdLdVar
  loc_5F0933: ImpAdLdRf MemVar_74E114
  loc_5F0936: NewIfNullPr ConsignadosPendientes
  loc_5F0939: ConsignadosPendientes.Show from_stack_1, from_stack_2
  loc_5F093E: ExitProcHresult
End Sub

Private Sub MnuTotalizadores_Click() '5EAF78
  'Data Table: 460894
  loc_5EAEFC: LitI4 &H1F
  loc_5EAF01: ImpAdLdRf MemVar_74A170
  loc_5EAF04: Ary1LdI2
  loc_5EAF05: NotI4
  loc_5EAF06: CVarBoolI2 var_104
  loc_5EAF0A: LitVarI2 var_B4, 3
  loc_5EAF0F: LitI4 1
  loc_5EAF14: ImpAdLdRf MemVar_74BF90
  loc_5EAF17: CVarRef
  loc_5EAF1C: FLdRfVar var_C4
  loc_5EAF1F: ImpAdCallFPR4  = Mid(, , )
  loc_5EAF24: FLdRfVar var_C4
  loc_5EAF27: LitVarStr var_D4, "\\."
  loc_5EAF2C: HardType
  loc_5EAF2D: EqVar var_E4
  loc_5EAF31: NotVar var_F4
  loc_5EAF35: AndVar var_114
  loc_5EAF39: CBoolVarNull
  loc_5EAF3B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EAF44: BranchF loc_5EAF4D
  loc_5EAF47: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EAF4C: ExitProcHresult
  loc_5EAF4D: LitI2_Byte &H57
  loc_5EAF4F: PopTmpLdAd2 var_116
  loc_5EAF52: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EAF57: NotI4
  loc_5EAF58: BranchF loc_5EAF5C
  loc_5EAF5B: ExitProcHresult
  loc_5EAF5C: LitVar_Missing var_A4
  loc_5EAF5F: PopAdLdVar
  loc_5EAF60: LitVarI4
  loc_5EAF68: PopAdLdVar
  loc_5EAF69: ImpAdLdRf MemVar_74E1DC
  loc_5EAF6C: NewIfNullPr frmTotalizadores
  loc_5EAF6F: frmTotalizadores.Show from_stack_1, from_stack_2
  loc_5EAF74: ExitProcHresult
End Sub

Private Sub mnuTanques_Click(arg_1C) '5EABB8
  'Data Table: 460894
  loc_5EAB3C: LitI4 &H17
  loc_5EAB41: ImpAdLdRf MemVar_74A170
  loc_5EAB44: Ary1LdI2
  loc_5EAB45: NotI4
  loc_5EAB46: CVarBoolI2 var_104
  loc_5EAB4A: LitVarI2 var_B4, 3
  loc_5EAB4F: LitI4 1
  loc_5EAB54: ImpAdLdRf MemVar_74BF90
  loc_5EAB57: CVarRef
  loc_5EAB5C: FLdRfVar var_C4
  loc_5EAB5F: ImpAdCallFPR4  = Mid(, , )
  loc_5EAB64: FLdRfVar var_C4
  loc_5EAB67: LitVarStr var_D4, "\\."
  loc_5EAB6C: HardType
  loc_5EAB6D: EqVar var_E4
  loc_5EAB71: NotVar var_F4
  loc_5EAB75: AndVar var_114
  loc_5EAB79: CBoolVarNull
  loc_5EAB7B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EAB84: BranchF loc_5EAB8D
  loc_5EAB87: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EAB8C: ExitProcHresult
  loc_5EAB8D: LitI2_Byte &H58
  loc_5EAB8F: PopTmpLdAd2 var_116
  loc_5EAB92: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EAB97: NotI4
  loc_5EAB98: BranchF loc_5EAB9C
  loc_5EAB9B: ExitProcHresult
  loc_5EAB9C: LitVar_Missing var_A4
  loc_5EAB9F: PopAdLdVar
  loc_5EABA0: LitVarI4
  loc_5EABA8: PopAdLdVar
  loc_5EABA9: ImpAdLdRf MemVar_74C7E0
  loc_5EABAC: NewIfNullPr frmTanquesInf
  loc_5EABAF: frmTanquesInf.Show from_stack_1, from_stack_2
  loc_5EABB4: ExitProcHresult
  loc_5EABB5: CCyI4
  loc_5EABB6: PopTmpLdAd8 arg_1C02
End Sub

Private Sub mnuComisiones_Click() '5D9694
  'Data Table: 460894
  loc_5D965C: LitI2_Byte &H1F
  loc_5D965E: PopTmpLdAd2 var_86
  loc_5D9661: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D9666: NotI4
  loc_5D9667: BranchF loc_5D966B
  loc_5D966A: ExitProcHresult
  loc_5D966B: LitStr "C"
  loc_5D966E: ImpAdLdRf MemVar_74DD94
  loc_5D9671: NewIfNullPr FrmFechas
  loc_5D9674: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D9679: LitVar_Missing var_A8
  loc_5D967C: PopAdLdVar
  loc_5D967D: LitVarI4
  loc_5D9685: PopAdLdVar
  loc_5D9686: ImpAdLdRf MemVar_74DD94
  loc_5D9689: NewIfNullPr FrmFechas
  loc_5D968C: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D9691: ExitProcHresult
End Sub

Private Sub mnuForzarCierreConectividad_Click() '5EA4F8
  'Data Table: 460894
  loc_5EA47C: LitI4 &H18
  loc_5EA481: ImpAdLdRf MemVar_74A170
  loc_5EA484: Ary1LdI2
  loc_5EA485: NotI4
  loc_5EA486: CVarBoolI2 var_104
  loc_5EA48A: LitVarI2 var_B4, 3
  loc_5EA48F: LitI4 1
  loc_5EA494: ImpAdLdRf MemVar_74BF90
  loc_5EA497: CVarRef
  loc_5EA49C: FLdRfVar var_C4
  loc_5EA49F: ImpAdCallFPR4  = Mid(, , )
  loc_5EA4A4: FLdRfVar var_C4
  loc_5EA4A7: LitVarStr var_D4, "\\."
  loc_5EA4AC: HardType
  loc_5EA4AD: EqVar var_E4
  loc_5EA4B1: NotVar var_F4
  loc_5EA4B5: AndVar var_114
  loc_5EA4B9: CBoolVarNull
  loc_5EA4BB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EA4C4: BranchF loc_5EA4CD
  loc_5EA4C7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EA4CC: ExitProcHresult
  loc_5EA4CD: LitI2_Byte &H30
  loc_5EA4CF: PopTmpLdAd2 var_116
  loc_5EA4D2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EA4D7: NotI4
  loc_5EA4D8: BranchF loc_5EA4DC
  loc_5EA4DB: ExitProcHresult
  loc_5EA4DC: LitVar_Missing var_A4
  loc_5EA4DF: PopAdLdVar
  loc_5EA4E0: LitVarI4
  loc_5EA4E8: PopAdLdVar
  loc_5EA4E9: ImpAdLdRf MemVar_74DC94
  loc_5EA4EC: NewIfNullPr frmCierresEssoConectividad
  loc_5EA4EF: frmCierresEssoConectividad.Show from_stack_1, from_stack_2
  loc_5EA4F4: ExitProcHresult
End Sub

Private Sub MnuLogUsuarios_Click() '5EB6F8
  'Data Table: 460894
  loc_5EB67C: LitI4 &H21
  loc_5EB681: ImpAdLdRf MemVar_74A170
  loc_5EB684: Ary1LdI2
  loc_5EB685: NotI4
  loc_5EB686: CVarBoolI2 var_104
  loc_5EB68A: LitVarI2 var_B4, 3
  loc_5EB68F: LitI4 1
  loc_5EB694: ImpAdLdRf MemVar_74BF90
  loc_5EB697: CVarRef
  loc_5EB69C: FLdRfVar var_C4
  loc_5EB69F: ImpAdCallFPR4  = Mid(, , )
  loc_5EB6A4: FLdRfVar var_C4
  loc_5EB6A7: LitVarStr var_D4, "\\."
  loc_5EB6AC: HardType
  loc_5EB6AD: EqVar var_E4
  loc_5EB6B1: NotVar var_F4
  loc_5EB6B5: AndVar var_114
  loc_5EB6B9: CBoolVarNull
  loc_5EB6BB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EB6C4: BranchF loc_5EB6CD
  loc_5EB6C7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EB6CC: ExitProcHresult
  loc_5EB6CD: LitI2_Byte &H59
  loc_5EB6CF: PopTmpLdAd2 var_116
  loc_5EB6D2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EB6D7: NotI4
  loc_5EB6D8: BranchF loc_5EB6DC
  loc_5EB6DB: ExitProcHresult
  loc_5EB6DC: LitVar_Missing var_A4
  loc_5EB6DF: PopAdLdVar
  loc_5EB6E0: LitVarI4
  loc_5EB6E8: PopAdLdVar
  loc_5EB6E9: ImpAdLdRf MemVar_74DCBC
  loc_5EB6EC: NewIfNullPr LogUsuarios
  loc_5EB6EF: LogUsuarios.Show from_stack_1, from_stack_2
  loc_5EB6F4: ExitProcHresult
End Sub

Private Sub Cuenta_Liquido_Producto_Click() '5E7198
  'Data Table: 460894
  loc_5E711C: LitI2_Byte 0
  loc_5E711E: FLdPrThis
  loc_5E711F: VCallAd Control_ID_Reloj
  loc_5E7122: FStAdFunc var_88
  loc_5E7125: FLdPr var_88
  loc_5E7128: Me.Enabled = from_stack_1b
  loc_5E712D: FFree1Ad var_88
  loc_5E7130: LitI2_Byte &HC
  loc_5E7132: PopTmpLdAd2 var_8A
  loc_5E7135: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E713A: NotI4
  loc_5E713B: BranchF loc_5E7153
  loc_5E713E: LitI2_Byte &HFF
  loc_5E7140: FLdPrThis
  loc_5E7141: VCallAd Control_ID_Reloj
  loc_5E7144: FStAdFunc var_88
  loc_5E7147: FLdPr var_88
  loc_5E714A: Me.Enabled = from_stack_1b
  loc_5E714F: FFree1Ad var_88
  loc_5E7152: ExitProcHresult
  loc_5E7153: LitI2_Byte 0
  loc_5E7155: ImpAdLdRf MemVar_74DC6C
  loc_5E7158: NewIfNullPr Reportes_Anteriores
  loc_5E715B: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5E7160: LitStr "C"
  loc_5E7163: ImpAdLdRf MemVar_74DC6C
  loc_5E7166: NewIfNullPr Reportes_Anteriores
  loc_5E7169: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E716E: LitVar_Missing var_AC
  loc_5E7171: PopAdLdVar
  loc_5E7172: LitVarI2 var_9C, 1
  loc_5E7177: PopAdLdVar
  loc_5E7178: ImpAdLdRf MemVar_74DC6C
  loc_5E717B: NewIfNullPr Reportes_Anteriores
  loc_5E717E: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E7183: LitI2_Byte &HFF
  loc_5E7185: FLdPrThis
  loc_5E7186: VCallAd Control_ID_Reloj
  loc_5E7189: FStAdFunc var_88
  loc_5E718C: FLdPr var_88
  loc_5E718F: Me.Enabled = from_stack_1b
  loc_5E7194: FFree1Ad var_88
  loc_5E7197: ExitProcHresult
End Sub

Private Sub mnuCierresRed21Mensuales_Click() '5D6484
  'Data Table: 460894
  loc_5D645C: LitI2_Byte &H4B
  loc_5D645E: PopTmpLdAd2 var_86
  loc_5D6461: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D6466: NotI4
  loc_5D6467: BranchF loc_5D646B
  loc_5D646A: ExitProcHresult
  loc_5D646B: LitVar_Missing var_A8
  loc_5D646E: PopAdLdVar
  loc_5D646F: LitVarI2 var_98, 1
  loc_5D6474: PopAdLdVar
  loc_5D6475: ImpAdLdRf MemVar_74D9DC
  loc_5D6478: NewIfNullPr frmCierresRed21Mensuales
  loc_5D647B: frmCierresRed21Mensuales.Show from_stack_1, from_stack_2
  loc_5D6480: ExitProcHresult
End Sub

Private Sub mnuExistecias_Click() '5D587C
  'Data Table: 460894
  loc_5D5854: LitI2_Byte &H2F
  loc_5D5856: PopTmpLdAd2 var_86
  loc_5D5859: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D585E: NotI4
  loc_5D585F: BranchF loc_5D5863
  loc_5D5862: ExitProcHresult
  loc_5D5863: LitVar_Missing var_A8
  loc_5D5866: PopAdLdVar
  loc_5D5867: LitVarI4
  loc_5D586F: PopAdLdVar
  loc_5D5870: ImpAdLdRf MemVar_74DA2C
  loc_5D5873: NewIfNullPr frmExistenciasProductos
  loc_5D5876: frmExistenciasProductos.Show from_stack_1, from_stack_2
  loc_5D587B: ExitProcHresult
End Sub

Private Sub NotaComb_Click() '5D524C
  'Data Table: 460894
  loc_5D5224: LitI2_Byte &H27
  loc_5D5226: PopTmpLdAd2 var_86
  loc_5D5229: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D522E: NotI4
  loc_5D522F: BranchF loc_5D5233
  loc_5D5232: ExitProcHresult
  loc_5D5233: LitVar_Missing var_A8
  loc_5D5236: PopAdLdVar
  loc_5D5237: LitVarI4
  loc_5D523F: PopAdLdVar
  loc_5D5240: ImpAdLdRf MemVar_74E1B4
  loc_5D5243: NewIfNullPr NotaLiquidoProducto
  loc_5D5246: NotaLiquidoProducto.Show from_stack_1, from_stack_2
  loc_5D524B: ExitProcHresult
End Sub

Private Sub MnuLevel1_Click(Index As Integer) '6029F8
  'Data Table: 460894
  loc_602940: ImpAdCallFPR4 Proc_87_23_619080()
  loc_602945: LitI2_Byte 1
  loc_602947: FLdRfVar var_86
  loc_60294A: LitI2 250
  loc_60294D: ForI2 var_8C
  loc_602953: FLdRfVar var_98
  loc_602956: FLdRfVar var_94
  loc_602959: ILdI2 Index
  loc_60295C: FLdPrThis
  loc_60295D: VCallAd Control_ID_MnuLevel1
  loc_602960: FStAdFunc var_90
  loc_602963: FLdPr var_90
  loc_602966: Set from_stack_2 = Me(from_stack_1)
  loc_60296B: FLdPr var_94
  loc_60296E:  = Me.Caption
  loc_602973: FLdZeroAd var_98
  loc_602976: CVarStr var_A8
  loc_602979: FLdRfVar var_B8
  loc_60297C: ImpAdCallFPR4  = Trim()
  loc_602981: FLdRfVar var_B8
  loc_602984: ImpAdLdRf MemVar_74C7B4
  loc_602987: LitStr "titulo"
  loc_60298A: FStStrCopy var_C4
  loc_60298D: FLdRfVar var_C4
  loc_602990: LitStr "Comando"
  loc_602993: FLdI2 var_86
  loc_602996: CStrUI1
  loc_602998: FStStrNoPop var_BC
  loc_60299B: ConcatStr
  loc_60299C: PopTmpLdAdStr
  loc_6029A0: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6029A5: CVarStr var_D4
  loc_6029A8: FLdRfVar var_E4
  loc_6029AB: ImpAdCallFPR4  = Trim()
  loc_6029B0: FLdRfVar var_E4
  loc_6029B3: EqVarBool
  loc_6029B5: FFreeStr var_BC = "": var_C0 = ""
  loc_6029BE: FFreeAd var_90 = ""
  loc_6029C5: FFreeVar var_A8 = "": var_D4 = "": var_B8 = ""
  loc_6029D0: BranchF loc_6029DC
  loc_6029D3: FLdI2 var_86
  loc_6029D6: FStI2 var_88
  loc_6029D9: Branch loc_6029E4
  loc_6029DC: FLdRfVar var_86
  loc_6029DF: NextI2 var_8C, loc_602953
  loc_6029E4: ImpAdCallFPR4 Proc_87_22_5DF6D8()
  loc_6029E9: FLdRfVar var_88
  loc_6029EC: ImpAdCallI2 Proc_94_3_650144()
  loc_6029F1: FStStr var_98
  loc_6029F4: FFree1Str var_98
  loc_6029F7: ExitProcHresult
End Sub

Private Sub PriceLevel_Click() '5EDC98
  'Data Table: 460894
  loc_5EDC14: LitI4 &H24
  loc_5EDC19: ImpAdLdRf MemVar_74A170
  loc_5EDC1C: Ary1LdI2
  loc_5EDC1D: NotI4
  loc_5EDC1E: CVarBoolI2 var_104
  loc_5EDC22: LitVarI2 var_B4, 3
  loc_5EDC27: LitI4 1
  loc_5EDC2C: ImpAdLdRf MemVar_74BF90
  loc_5EDC2F: CVarRef
  loc_5EDC34: FLdRfVar var_C4
  loc_5EDC37: ImpAdCallFPR4  = Mid(, , )
  loc_5EDC3C: FLdRfVar var_C4
  loc_5EDC3F: LitVarStr var_D4, "\\."
  loc_5EDC44: HardType
  loc_5EDC45: EqVar var_E4
  loc_5EDC49: NotVar var_F4
  loc_5EDC4D: AndVar var_114
  loc_5EDC51: CBoolVarNull
  loc_5EDC53: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EDC5C: BranchF loc_5EDC65
  loc_5EDC5F: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EDC64: ExitProcHresult
  loc_5EDC65: LitI2_Byte &H23
  loc_5EDC67: PopTmpLdAd2 var_116
  loc_5EDC6A: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EDC6F: NotI4
  loc_5EDC70: BranchF loc_5EDC74
  loc_5EDC73: ExitProcHresult
  loc_5EDC74: LitI2_Byte 0
  loc_5EDC76: PopTmpLdAd2 var_116
  loc_5EDC79: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5EDC7E: BranchF loc_5EDC96
  loc_5EDC81: LitVar_Missing var_A4
  loc_5EDC84: PopAdLdVar
  loc_5EDC85: LitVarI2 var_94, 1
  loc_5EDC8A: PopAdLdVar
  loc_5EDC8B: ImpAdLdRf MemVar_74E358
  loc_5EDC8E: NewIfNullPr NivelDePrecios
  loc_5EDC91: NivelDePrecios.Show from_stack_1, from_stack_2
  loc_5EDC96: ExitProcHresult
End Sub

Private Sub mnuAdministracionRemota_Click() '5D6324
  'Data Table: 460894
  loc_5D62FC: LitI2_Byte &H4F
  loc_5D62FE: PopTmpLdAd2 var_86
  loc_5D6301: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D6306: NotI4
  loc_5D6307: BranchF loc_5D630B
  loc_5D630A: ExitProcHresult
  loc_5D630B: LitVar_Missing var_A8
  loc_5D630E: PopAdLdVar
  loc_5D630F: LitVarI4
  loc_5D6317: PopAdLdVar
  loc_5D6318: ImpAdLdRf MemVar_74D950
  loc_5D631B: NewIfNullPr frmRemoteAdministration
  loc_5D631E: frmRemoteAdministration.Show from_stack_1, from_stack_2
  loc_5D6323: ExitProcHresult
End Sub

Private Sub mnuDesity_Click() '5D6C58
  'Data Table: 460894
  loc_5D6C30: LitI2_Byte &H6A
  loc_5D6C32: PopTmpLdAd2 var_8A
  loc_5D6C35: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D6C3A: NotI4
  loc_5D6C3B: BranchF loc_5D6C3F
  loc_5D6C3E: ExitProcHresult
  loc_5D6C3F: LitVar_Missing var_AC
  loc_5D6C42: PopAdLdVar
  loc_5D6C43: LitVarI4
  loc_5D6C4B: PopAdLdVar
  loc_5D6C4C: FLdRfVar var_88
  loc_5D6C4F: NewIfNullPr frmDensity
  loc_5D6C52: frmDensity.Show from_stack_1, from_stack_2
  loc_5D6C57: ExitProcHresult
End Sub

Private Sub mnuABM_Click() '5D8BC0
  'Data Table: 460894
  loc_5D8B90: LitI2_Byte &H6E
  loc_5D8B92: PopTmpLdAd2 var_86
  loc_5D8B95: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D8B9A: NotI4
  loc_5D8B9B: BranchF loc_5D8B9F
  loc_5D8B9E: ExitProcHresult
  loc_5D8B9F: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_5D8BA4: FLdRfVar var_86
  loc_5D8BA7: LitVarI2 var_A8, 1
  loc_5D8BAC: LitStr "ClickButton"
  loc_5D8BAF: ImpAdLdPr unk_4608E6
  loc_5D8BB2: MemLdPr global_0
  loc_5D8BB5: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5D8BBA: FFree1Var var_A8 = ""
  loc_5D8BBD: ExitProcHresult
End Sub

Private Sub Despachos_Click() '5D84BC
  'Data Table: 460894
  loc_5D8488: LitI2_Byte &H31
  loc_5D848A: PopTmpLdAd2 var_86
  loc_5D848D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D8492: NotI4
  loc_5D8493: BranchF loc_5D8497
  loc_5D8496: ExitProcHresult
  loc_5D8497: LitI2_Byte 0
  loc_5D8499: PopTmpLdAd2 var_86
  loc_5D849C: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5D84A1: BranchF loc_5D84B9
  loc_5D84A4: LitVar_Missing var_A8
  loc_5D84A7: PopAdLdVar
  loc_5D84A8: LitVarI2 var_98, 1
  loc_5D84AD: PopAdLdVar
  loc_5D84AE: ImpAdLdRf MemVar_74E254
  loc_5D84B1: NewIfNullPr DespachosAnteriores
  loc_5D84B4: DespachosAnteriores.Show from_stack_1, from_stack_2
  loc_5D84B9: ExitProcHresult
End Sub

Private Sub PCLOSE_DAY_Click() '6C0430
  'Data Table: 460894
  loc_6BFBDC: OnErrorGoto loc_6C03D8
  loc_6BFBDF: LitI4 &HC
  loc_6BFBE4: ImpAdLdRf MemVar_74A170
  loc_6BFBE7: Ary1LdI2
  loc_6BFBE8: NotI4
  loc_6BFBE9: CVarBoolI2 var_13C
  loc_6BFBED: LitVarI2 var_EC, 3
  loc_6BFBF2: LitI4 1
  loc_6BFBF7: ImpAdLdRf MemVar_74BF90
  loc_6BFBFA: CVarRef
  loc_6BFBFF: FLdRfVar var_FC
  loc_6BFC02: ImpAdCallFPR4  = Mid(, , )
  loc_6BFC07: FLdRfVar var_FC
  loc_6BFC0A: LitVarStr var_10C, "\\."
  loc_6BFC0F: HardType
  loc_6BFC10: EqVar var_11C
  loc_6BFC14: NotVar var_12C
  loc_6BFC18: AndVar var_14C
  loc_6BFC1C: CBoolVarNull
  loc_6BFC1E: FFreeVar var_EC = "": var_FC = ""
  loc_6BFC27: BranchF loc_6BFC30
  loc_6BFC2A: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6BFC2F: ExitProcHresult
  loc_6BFC30: LitI2_Byte 3
  loc_6BFC32: PopTmpLdAd2 var_14E
  loc_6BFC35: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6BFC3A: NotI4
  loc_6BFC3B: BranchF loc_6BFC3F
  loc_6BFC3E: ExitProcHresult
  loc_6BFC3F: LitVar_Missing var_11C
  loc_6BFC42: LitVar_Missing var_FC
  loc_6BFC45: LitVar_Missing var_EC
  loc_6BFC48: LitI4 &H44
  loc_6BFC4D: FLdPr Me
  loc_6BFC50: MemLdRfVar from_stack_1.global_7504
  loc_6BFC53: CVarRef
  loc_6BFC58: ImpAdCallI2 MsgBox(, , , , )
  loc_6BFC5D: LitI4 7
  loc_6BFC62: EqI4
  loc_6BFC63: FFreeVar var_EC = "": var_FC = ""
  loc_6BFC6C: BranchF loc_6BFC70
  loc_6BFC6F: ExitProcHresult
  loc_6BFC70: LitI2_Byte 0
  loc_6BFC72: FLdPrThis
  loc_6BFC73: VCallAd Control_ID_Reloj
  loc_6BFC76: FStAdFunc var_154
  loc_6BFC79: FLdPr var_154
  loc_6BFC7C: Me.Enabled = from_stack_1b
  loc_6BFC81: FFree1Ad var_154
  loc_6BFC84: FLdRfVar var_156
  loc_6BFC87: FLdRfVar var_A2
  loc_6BFC8A: LitI2_Byte &HFF
  loc_6BFC8C: PopTmpLdAd2 var_14E
  loc_6BFC8F: FLdRfVar var_154
  loc_6BFC92: ImpAdLdRf MemVar_74C760
  loc_6BFC95: NewIfNullPr Formx
  loc_6BFC98: from_stack_1v = Formx.global_4589716Get()
  loc_6BFC9D: FLdPr var_154
  loc_6BFCA0: Formx.Enabled = from_stack_1b
  loc_6BFCA5: FLdI2 var_156
  loc_6BFCA8: NotI4
  loc_6BFCA9: FFree1Ad var_154
  loc_6BFCAC: BranchF loc_6BFCDA
  loc_6BFCAF: FLdRfVar var_EC
  loc_6BFCB2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BFCB7: FLdRfVar var_EC
  loc_6BFCBA: CBoolVarNull
  loc_6BFCBC: FFree1Var var_EC = ""
  loc_6BFCBF: BranchF loc_6BFCD7
  loc_6BFCC2: LitI2_Byte &HFF
  loc_6BFCC4: FLdPrThis
  loc_6BFCC5: VCallAd Control_ID_Reloj
  loc_6BFCC8: FStAdFunc var_154
  loc_6BFCCB: FLdPr var_154
  loc_6BFCCE: Me.Enabled = from_stack_1b
  loc_6BFCD3: FFree1Ad var_154
  loc_6BFCD6: ExitProcHresult
  loc_6BFCD7: Branch loc_6BFC84
  loc_6BFCDA: FLdUI1
  loc_6BFCDE: CI2UI1
  loc_6BFCE0: LitI2_Byte 0
  loc_6BFCE2: GtI2
  loc_6BFCE3: BranchF loc_6BFD2C
  loc_6BFCE6: LitVar_FALSE
  loc_6BFCEA: PopAdLdVar
  loc_6BFCEB: FLdPrThis
  loc_6BFCEC: VCallAd Control_ID_PanelCierres
  loc_6BFCEF: FStAdFunc var_154
  loc_6BFCF2: FLdPr var_154
  loc_6BFCF5: LateIdSt
  loc_6BFCFA: FFree1Ad var_154
  loc_6BFCFD: FLdRfVar var_EC
  loc_6BFD00: FLdRfVar var_A2
  loc_6BFD03: LitStr "D"
  loc_6BFD06: FStStrCopy var_15C
  loc_6BFD09: FLdRfVar var_15C
  loc_6BFD0C: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_6BFD11: FFree1Str var_15C
  loc_6BFD14: FFree1Var var_EC = ""
  loc_6BFD17: LitI2_Byte &HFF
  loc_6BFD19: FLdPrThis
  loc_6BFD1A: VCallAd Control_ID_Reloj
  loc_6BFD1D: FStAdFunc var_154
  loc_6BFD20: FLdPr var_154
  loc_6BFD23: Me.Enabled = from_stack_1b
  loc_6BFD28: FFree1Ad var_154
  loc_6BFD2B: ExitProcHresult
  loc_6BFD2C: FLdRfVar var_14E
  loc_6BFD2F: ImpAdLdRf MemVar_74C6D8
  loc_6BFD32: NewIfNullPr CCEMLicence
  loc_6BFD35:  = CCEMLicence.Width
  loc_6BFD3A: FLdI2 var_14E
  loc_6BFD3D: LitI2_Byte 0
  loc_6BFD3F: EqI2
  loc_6BFD40: BranchF loc_6BFD75
  loc_6BFD43: LitVar_TRUE var_CC
  loc_6BFD46: PopAdLdVar
  loc_6BFD47: FLdPrThis
  loc_6BFD48: VCallAd Control_ID_PanelCierres
  loc_6BFD4B: FStAdFunc var_154
  loc_6BFD4E: FLdPr var_154
  loc_6BFD51: LateIdSt
  loc_6BFD56: FFree1Ad var_154
  loc_6BFD59: FLdPr Me
  loc_6BFD5C: MemLdStr global_7440
  loc_6BFD5F: CVarStr var_CC
  loc_6BFD62: PopAdLdVar
  loc_6BFD63: FLdPrThis
  loc_6BFD64: VCallAd Control_ID_PanelCierres
  loc_6BFD67: FStAdFunc var_154
  loc_6BFD6A: FLdPr var_154
  loc_6BFD6D: LateIdSt
  loc_6BFD72: FFree1Ad var_154
  loc_6BFD75: FLdRfVar var_156
  loc_6BFD78: FLdRfVar var_A0
  loc_6BFD7B: CVarRef
  loc_6BFD80: LitI2_Byte &HFF
  loc_6BFD82: PopTmpLdAd2 var_14E
  loc_6BFD85: LitStr "D"
  loc_6BFD88: FStStrCopy var_15C
  loc_6BFD8B: FLdRfVar var_15C
  loc_6BFD8E: FLdRfVar var_154
  loc_6BFD91: ImpAdLdRf MemVar_74C760
  loc_6BFD94: NewIfNullPr Formx
  loc_6BFD97: from_stack_1v = Formx.global_4589716Get()
  loc_6BFD9C: FLdPr var_154
  loc_6BFD9F: Formx.WindowState = from_stack_1
  loc_6BFDA4: FLdI2 var_156
  loc_6BFDA7: NotI4
  loc_6BFDA8: FFree1Str var_15C
  loc_6BFDAB: FFree1Ad var_154
  loc_6BFDAE: BranchF loc_6BFDF3
  loc_6BFDB1: FLdRfVar var_EC
  loc_6BFDB4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BFDB9: FLdRfVar var_EC
  loc_6BFDBC: CBoolVarNull
  loc_6BFDBE: FFree1Var var_EC = ""
  loc_6BFDC1: BranchF loc_6BFDF0
  loc_6BFDC4: LitVar_FALSE
  loc_6BFDC8: PopAdLdVar
  loc_6BFDC9: FLdPrThis
  loc_6BFDCA: VCallAd Control_ID_PanelCierres
  loc_6BFDCD: FStAdFunc var_154
  loc_6BFDD0: FLdPr var_154
  loc_6BFDD3: LateIdSt
  loc_6BFDD8: FFree1Ad var_154
  loc_6BFDDB: LitI2_Byte &HFF
  loc_6BFDDD: FLdPrThis
  loc_6BFDDE: VCallAd Control_ID_Reloj
  loc_6BFDE1: FStAdFunc var_154
  loc_6BFDE4: FLdPr var_154
  loc_6BFDE7: Me.Enabled = from_stack_1b
  loc_6BFDEC: FFree1Ad var_154
  loc_6BFDEF: ExitProcHresult
  loc_6BFDF0: Branch loc_6BFD75
  loc_6BFDF3: FLdRfVar var_A0
  loc_6BFDF6: CVarRef
  loc_6BFDFB: FLdRfVar var_EC
  loc_6BFDFE: ImpAdCallFPR4  = Trim()
  loc_6BFE03: FLdRfVar var_EC
  loc_6BFE06: CStrVarTmp
  loc_6BFE07: FStStr var_A0
  loc_6BFE0A: FFree1Var var_EC = ""
  loc_6BFE0D: ILdRf var_A0
  loc_6BFE10: FnLenStr
  loc_6BFE11: LitI4 2
  loc_6BFE16: LtI4
  loc_6BFE17: BranchF loc_6BFE77
  loc_6BFE1A: LitVar_Missing var_11C
  loc_6BFE1D: LitVar_Missing var_FC
  loc_6BFE20: ImpAdLdRf MemVar_74BF24
  loc_6BFE23: CVarRef
  loc_6BFE28: LitI4 0
  loc_6BFE2D: LitVarStr var_CC, "El día no contiene ventas"
  loc_6BFE32: FStVarCopyObj var_EC
  loc_6BFE35: FLdRfVar var_EC
  loc_6BFE38: ImpAdCallI2 MsgBox(, , , , )
  loc_6BFE3D: CBoolI4
  loc_6BFE3F: FFreeVar var_EC = "": var_FC = ""
  loc_6BFE48: BranchF loc_6BFE77
  loc_6BFE4B: LitVar_FALSE
  loc_6BFE4F: PopAdLdVar
  loc_6BFE50: FLdPrThis
  loc_6BFE51: VCallAd Control_ID_PanelCierres
  loc_6BFE54: FStAdFunc var_154
  loc_6BFE57: FLdPr var_154
  loc_6BFE5A: LateIdSt
  loc_6BFE5F: FFree1Ad var_154
  loc_6BFE62: LitI2_Byte &HFF
  loc_6BFE64: FLdPrThis
  loc_6BFE65: VCallAd Control_ID_Reloj
  loc_6BFE68: FStAdFunc var_154
  loc_6BFE6B: FLdPr var_154
  loc_6BFE6E: Me.Enabled = from_stack_1b
  loc_6BFE73: FFree1Ad var_154
  loc_6BFE76: ExitProcHresult
  loc_6BFE77: FLdRfVar var_B4
  loc_6BFE7A: FLdRfVar var_A0
  loc_6BFE7D: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_6BFE82: FLdRfVar var_156
  loc_6BFE85: FLdRfVar var_A0
  loc_6BFE88: CVarRef
  loc_6BFE8D: LitI2_Byte 0
  loc_6BFE8F: PopTmpLdAd2 var_14E
  loc_6BFE92: LitStr "D"
  loc_6BFE95: FStStrCopy var_15C
  loc_6BFE98: FLdRfVar var_15C
  loc_6BFE9B: FLdRfVar var_154
  loc_6BFE9E: ImpAdLdRf MemVar_74C760
  loc_6BFEA1: NewIfNullPr Formx
  loc_6BFEA4: from_stack_1v = Formx.global_4589716Get()
  loc_6BFEA9: FLdPr var_154
  loc_6BFEAC: Formx.WindowState = from_stack_1
  loc_6BFEB1: FLdI2 var_156
  loc_6BFEB4: NotI4
  loc_6BFEB5: FFree1Str var_15C
  loc_6BFEB8: FFree1Ad var_154
  loc_6BFEBB: BranchF loc_6BFF00
  loc_6BFEBE: FLdRfVar var_EC
  loc_6BFEC1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6BFEC6: FLdRfVar var_EC
  loc_6BFEC9: CBoolVarNull
  loc_6BFECB: FFree1Var var_EC = ""
  loc_6BFECE: BranchF loc_6BFEFD
  loc_6BFED1: LitVar_FALSE
  loc_6BFED5: PopAdLdVar
  loc_6BFED6: FLdPrThis
  loc_6BFED7: VCallAd Control_ID_PanelCierres
  loc_6BFEDA: FStAdFunc var_154
  loc_6BFEDD: FLdPr var_154
  loc_6BFEE0: LateIdSt
  loc_6BFEE5: FFree1Ad var_154
  loc_6BFEE8: LitI2_Byte &HFF
  loc_6BFEEA: FLdPrThis
  loc_6BFEEB: VCallAd Control_ID_Reloj
  loc_6BFEEE: FStAdFunc var_154
  loc_6BFEF1: FLdPr var_154
  loc_6BFEF4: Me.Enabled = from_stack_1b
  loc_6BFEF9: FFree1Ad var_154
  loc_6BFEFC: ExitProcHresult
  loc_6BFEFD: Branch loc_6BFE82
  loc_6BFF00: FLdRfVar var_B8
  loc_6BFF03: FLdRfVar var_A0
  loc_6BFF06: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_6BFF0B: LitVar_FALSE
  loc_6BFF0F: PopAdLdVar
  loc_6BFF10: FLdPrThis
  loc_6BFF11: VCallAd Control_ID_PanelCierres
  loc_6BFF14: FStAdFunc var_154
  loc_6BFF17: FLdPr var_154
  loc_6BFF1A: LateIdSt
  loc_6BFF1F: FFree1Ad var_154
  loc_6BFF22: FLdRfVar var_15C
  loc_6BFF25: FLdRfVar var_154
  loc_6BFF28: ImpAdLdRf MemVar_7520D4
  loc_6BFF2B: NewIfNullPr Global
  loc_6BFF2E:  = Global.App
  loc_6BFF33: FLdPr var_154
  loc_6BFF36:  = App.Path
  loc_6BFF3B: FLdRfVar var_A8
  loc_6BFF3E: FLdRfVar var_AC
  loc_6BFF41: LitI2_Byte &HFF
  loc_6BFF43: PopTmpLdAd2 var_14E
  loc_6BFF46: ILdRf var_15C
  loc_6BFF49: LitStr "\reporte.mdb"
  loc_6BFF4C: ConcatStr
  loc_6BFF4D: PopTmpLdAdStr
  loc_6BFF51: FLdRfVar var_B4
  loc_6BFF54: LitStr "D"
  loc_6BFF57: FStStrCopy var_160
  loc_6BFF5A: FLdRfVar var_160
  loc_6BFF5D: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_6BFF62: NotI4
  loc_6BFF63: FFreeStr var_15C = "": var_160 = ""
  loc_6BFF6C: FFree1Ad var_154
  loc_6BFF6F: BranchF loc_6BFFEC
  loc_6BFF72: FLdRfVar var_14E
  loc_6BFF75: ImpAdLdRf MemVar_74C6D8
  loc_6BFF78: NewIfNullPr CCEMLicence
  loc_6BFF7B:  = CCEMLicence.Width
  loc_6BFF80: FLdI2 var_14E
  loc_6BFF83: LitI2_Byte &HFF
  loc_6BFF85: EqI2
  loc_6BFF86: BranchF loc_6BFF8A
  loc_6BFF89: ExitProcHresult
  loc_6BFF8A: LitVar_Missing var_FC
  loc_6BFF8D: LitVar_Missing var_EC
  loc_6BFF90: ImpAdLdRf MemVar_74BF24
  loc_6BFF93: CVarRef
  loc_6BFF98: LitI4 5
  loc_6BFF9D: FLdPr Me
  loc_6BFFA0: MemLdRfVar from_stack_1.global_7344
  loc_6BFFA3: CVarRef
  loc_6BFFA8: ImpAdCallI2 MsgBox(, , , , )
  loc_6BFFAD: LitI4 2
  loc_6BFFB2: EqI4
  loc_6BFFB3: FFreeVar var_EC = ""
  loc_6BFFBA: BranchF loc_6BFFE9
  loc_6BFFBD: LitVar_FALSE
  loc_6BFFC1: PopAdLdVar
  loc_6BFFC2: FLdPrThis
  loc_6BFFC3: VCallAd Control_ID_PanelCierres
  loc_6BFFC6: FStAdFunc var_154
  loc_6BFFC9: FLdPr var_154
  loc_6BFFCC: LateIdSt
  loc_6BFFD1: FFree1Ad var_154
  loc_6BFFD4: LitI2_Byte &HFF
  loc_6BFFD6: FLdPrThis
  loc_6BFFD7: VCallAd Control_ID_Reloj
  loc_6BFFDA: FStAdFunc var_154
  loc_6BFFDD: FLdPr var_154
  loc_6BFFE0: Me.Enabled = from_stack_1b
  loc_6BFFE5: FFree1Ad var_154
  loc_6BFFE8: ExitProcHresult
  loc_6BFFE9: Branch loc_6BFF22
  loc_6BFFEC: FLdRfVar var_15C
  loc_6BFFEF: FLdRfVar var_154
  loc_6BFFF2: ImpAdLdRf MemVar_7520D4
  loc_6BFFF5: NewIfNullPr Global
  loc_6BFFF8:  = Global.App
  loc_6BFFFD: FLdPr var_154
  loc_6C0000:  = App.Path
  loc_6C0005: FLdRfVar var_A8
  loc_6C0008: FLdRfVar var_AC
  loc_6C000B: LitI2_Byte 0
  loc_6C000D: PopTmpLdAd2 var_14E
  loc_6C0010: ILdRf var_15C
  loc_6C0013: LitStr "\reporte.mdb"
  loc_6C0016: ConcatStr
  loc_6C0017: PopTmpLdAdStr
  loc_6C001B: FLdRfVar var_B8
  loc_6C001E: LitStr "D"
  loc_6C0021: FStStrCopy var_160
  loc_6C0024: FLdRfVar var_160
  loc_6C0027: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_6C002C: NotI4
  loc_6C002D: FFreeStr var_15C = "": var_160 = ""
  loc_6C0036: FFree1Ad var_154
  loc_6C0039: BranchF loc_6C00B6
  loc_6C003C: FLdRfVar var_14E
  loc_6C003F: ImpAdLdRf MemVar_74C6D8
  loc_6C0042: NewIfNullPr CCEMLicence
  loc_6C0045:  = CCEMLicence.Width
  loc_6C004A: FLdI2 var_14E
  loc_6C004D: LitI2_Byte &HFF
  loc_6C004F: EqI2
  loc_6C0050: BranchF loc_6C0054
  loc_6C0053: ExitProcHresult
  loc_6C0054: LitVar_Missing var_FC
  loc_6C0057: LitVar_Missing var_EC
  loc_6C005A: ImpAdLdRf MemVar_74BF24
  loc_6C005D: CVarRef
  loc_6C0062: LitI4 5
  loc_6C0067: FLdPr Me
  loc_6C006A: MemLdRfVar from_stack_1.global_7344
  loc_6C006D: CVarRef
  loc_6C0072: ImpAdCallI2 MsgBox(, , , , )
  loc_6C0077: LitI4 2
  loc_6C007C: EqI4
  loc_6C007D: FFreeVar var_EC = ""
  loc_6C0084: BranchF loc_6C00B3
  loc_6C0087: LitVar_FALSE
  loc_6C008B: PopAdLdVar
  loc_6C008C: FLdPrThis
  loc_6C008D: VCallAd Control_ID_PanelCierres
  loc_6C0090: FStAdFunc var_154
  loc_6C0093: FLdPr var_154
  loc_6C0096: LateIdSt
  loc_6C009B: FFree1Ad var_154
  loc_6C009E: LitI2_Byte &HFF
  loc_6C00A0: FLdPrThis
  loc_6C00A1: VCallAd Control_ID_Reloj
  loc_6C00A4: FStAdFunc var_154
  loc_6C00A7: FLdPr var_154
  loc_6C00AA: Me.Enabled = from_stack_1b
  loc_6C00AF: FFree1Ad var_154
  loc_6C00B2: ExitProcHresult
  loc_6C00B3: Branch loc_6BFFEC
  loc_6C00B6: LitI2_Byte &HFF
  loc_6C00B8: FStI2 var_BA
  loc_6C00BB: LitStr "CEM44.INI"
  loc_6C00BE: FStStrCopy var_164
  loc_6C00C1: FLdRfVar var_164
  loc_6C00C4: LitStr "AVISO_DE_IMPRESION"
  loc_6C00C7: FStStrCopy var_160
  loc_6C00CA: FLdRfVar var_160
  loc_6C00CD: LitStr "GENERAL"
  loc_6C00D0: FStStrCopy var_15C
  loc_6C00D3: FLdRfVar var_15C
  loc_6C00D6: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6C00DB: FStStrNoPop var_168
  loc_6C00DE: LitStr "1"
  loc_6C00E1: EqStr
  loc_6C00E3: FFreeStr var_15C = "": var_160 = "": var_164 = ""
  loc_6C00EE: BranchF loc_6C012B
  loc_6C00F1: LitVar_Missing var_12C
  loc_6C00F4: LitVar_Missing var_11C
  loc_6C00F7: LitVar_Missing var_FC
  loc_6C00FA: LitI4 &H24
  loc_6C00FF: LitVarStr var_CC, "Desea Imprimir el reporte?"
  loc_6C0104: FStVarCopyObj var_EC
  loc_6C0107: FLdRfVar var_EC
  loc_6C010A: ImpAdCallI2 MsgBox(, , , , )
  loc_6C010F: LitI4 7
  loc_6C0114: EqI4
  loc_6C0115: FFreeVar var_EC = "": var_FC = "": var_11C = ""
  loc_6C0120: BranchF loc_6C0128
  loc_6C0123: LitI2_Byte 0
  loc_6C0125: FStI2 var_BA
  loc_6C0128: Branch loc_6C01A7
  loc_6C012B: LitStr "CEM44.INI"
  loc_6C012E: FStStrCopy var_164
  loc_6C0131: FLdRfVar var_164
  loc_6C0134: LitStr "AVISO_DE_IMPRESION"
  loc_6C0137: FStStrCopy var_160
  loc_6C013A: FLdRfVar var_160
  loc_6C013D: LitStr "GENERAL"
  loc_6C0140: FStStrCopy var_15C
  loc_6C0143: FLdRfVar var_15C
  loc_6C0146: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6C014B: FStStrNoPop var_168
  loc_6C014E: LitStr "2"
  loc_6C0151: EqStr
  loc_6C0153: FFreeStr var_15C = "": var_160 = "": var_164 = ""
  loc_6C015E: BranchF loc_6C0169
  loc_6C0161: LitI2_Byte 0
  loc_6C0163: FStI2 var_BA
  loc_6C0166: Branch loc_6C01A7
  loc_6C0169: FLdRfVar var_14E
  loc_6C016C: ImpAdLdRf MemVar_74C6D8
  loc_6C016F: NewIfNullPr CCEMLicence
  loc_6C0172:  = CCEMLicence.Width
  loc_6C0177: FLdI2 var_14E
  loc_6C017A: LitI2_Byte 0
  loc_6C017C: EqI2
  loc_6C017D: BranchF loc_6C01A7
  loc_6C0180: LitVar_Missing var_11C
  loc_6C0183: LitVar_Missing var_FC
  loc_6C0186: LitVar_Missing var_EC
  loc_6C0189: LitI4 0
  loc_6C018E: FLdPr Me
  loc_6C0191: MemLdRfVar from_stack_1.global_7552
  loc_6C0194: CVarRef
  loc_6C0199: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C019E: FFreeVar var_EC = "": var_FC = ""
  loc_6C01A7: FLdRfVar var_14E
  loc_6C01AA: ImpAdLdRf MemVar_74C6D8
  loc_6C01AD: NewIfNullPr CCEMLicence
  loc_6C01B0:  = CCEMLicence.Width
  loc_6C01B5: FLdI2 var_14E
  loc_6C01B8: LitI2_Byte 0
  loc_6C01BA: EqI2
  loc_6C01BB: BranchF loc_6C0378
  loc_6C01BE: FLdPr Me
  loc_6C01C1: MemLdStr global_7348
  loc_6C01C4: CVarStr var_CC
  loc_6C01C7: PopAdLdVar
  loc_6C01C8: FLdPrThis
  loc_6C01C9: VCallAd Control_ID_PanelCierres
  loc_6C01CC: FStAdFunc var_154
  loc_6C01CF: FLdPr var_154
  loc_6C01D2: LateIdSt
  loc_6C01D7: FFree1Ad var_154
  loc_6C01DA: LitVarI4
  loc_6C01E2: PopAdLdVar
  loc_6C01E3: FLdPrThis
  loc_6C01E4: VCallAd Control_ID_CrystalReport1
  loc_6C01E7: FStAdFunc var_154
  loc_6C01EA: FLdPr var_154
  loc_6C01ED: LateIdSt
  loc_6C01F2: FFree1Ad var_154
  loc_6C01F5: LitVarI2 var_CC, 1
  loc_6C01FA: PopAdLdVar
  loc_6C01FB: FLdPrThis
  loc_6C01FC: VCallAd Control_ID_CrystalReport1
  loc_6C01FF: FStAdFunc var_154
  loc_6C0202: FLdPr var_154
  loc_6C0205: LateIdSt
  loc_6C020A: FFree1Ad var_154
  loc_6C020D: FLdRfVar var_15C
  loc_6C0210: FLdRfVar var_154
  loc_6C0213: ImpAdLdRf MemVar_7520D4
  loc_6C0216: NewIfNullPr Global
  loc_6C0219:  = Global.App
  loc_6C021E: FLdPr var_154
  loc_6C0221:  = App.Path
  loc_6C0226: FLdRfVar var_16C
  loc_6C0229: LitVar_Missing var_10C
  loc_6C022C: PopAdLdVar
  loc_6C022D: LitVar_Missing var_DC
  loc_6C0230: PopAdLdVar
  loc_6C0231: LitVar_TRUE var_CC
  loc_6C0234: PopAdLdVar
  loc_6C0235: ILdRf var_15C
  loc_6C0238: LitStr "\reporte.mdb"
  loc_6C023B: ConcatStr
  loc_6C023C: FStStrNoPop var_160
  loc_6C023F: ImpAdLdRf MemVar_752164
  loc_6C0242: NewIfNullPr Me
  loc_6C0245: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6C024A: FLdZeroAd var_16C
  loc_6C024D: FStAdFunc var_88
  loc_6C0250: FFreeStr var_15C = ""
  loc_6C0257: FFree1Ad var_154
  loc_6C025A: FLdRfVar var_154
  loc_6C025D: LitVar_Missing var_10C
  loc_6C0260: PopAdLdVar
  loc_6C0261: LitVar_Missing var_DC
  loc_6C0264: PopAdLdVar
  loc_6C0265: LitVar_Missing var_CC
  loc_6C0268: PopAdLdVar
  loc_6C0269: LitStr "select ReportVer from Header"
  loc_6C026C: FLdPr var_88
  loc_6C026F: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6C0274: FLdZeroAd var_154
  loc_6C0277: FStAdFunc var_8C
  loc_6C027A: FLdRfVar var_EC
  loc_6C027D: FLdRfVar var_16C
  loc_6C0280: LitVarStr var_CC, "ReportVer"
  loc_6C0285: PopAdLdVar
  loc_6C0286: FLdRfVar var_154
  loc_6C0289: FLdPr var_8C
  loc_6C028C:  = Me.Fields
  loc_6C0291: FLdPr var_154
  loc_6C0294: from_stack_2 = Me.Item(from_stack_1)
  loc_6C0299: FLdPr var_16C
  loc_6C029C:  = Me.Value
  loc_6C02A1: FLdRfVar var_EC
  loc_6C02A4: LitVarStr var_DC, vbNullString
  loc_6C02A9: ConcatVar var_FC
  loc_6C02AD: CStrVarTmp
  loc_6C02AE: FStStr var_90
  loc_6C02B1: FFreeAd var_154 = ""
  loc_6C02B8: FFreeVar var_EC = ""
  loc_6C02BF: FLdPr var_8C
  loc_6C02C2: Me.Close
  loc_6C02C7: LitNothing
  loc_6C02C9: CastAd
  loc_6C02CC: FStAdFunc var_8C
  loc_6C02CF: FLdPr var_88
  loc_6C02D2: Me.Close
  loc_6C02D7: LitNothing
  loc_6C02D9: CastAd
  loc_6C02DC: FStAdFunc var_88
  loc_6C02DF: ILdRf var_90
  loc_6C02E2: LitStr vbNullString
  loc_6C02E5: EqStr
  loc_6C02E7: BranchF loc_6C032D
  loc_6C02EA: FLdRfVar var_15C
  loc_6C02ED: FLdRfVar var_154
  loc_6C02F0: ImpAdLdRf MemVar_7520D4
  loc_6C02F3: NewIfNullPr Global
  loc_6C02F6:  = Global.App
  loc_6C02FB: FLdPr var_154
  loc_6C02FE:  = App.Path
  loc_6C0303: ILdRf var_15C
  loc_6C0306: LitStr "\repo1.rpt"
  loc_6C0309: ConcatStr
  loc_6C030A: CVarStr var_EC
  loc_6C030D: PopAdLdVar
  loc_6C030E: FLdPrThis
  loc_6C030F: VCallAd Control_ID_CrystalReport1
  loc_6C0312: FStAdFunc var_16C
  loc_6C0315: FLdPr var_16C
  loc_6C0318: LateIdSt
  loc_6C031D: FFree1Str var_15C
  loc_6C0320: FFreeAd var_154 = ""
  loc_6C0327: FFree1Var var_EC = ""
  loc_6C032A: Branch loc_6C0378
  loc_6C032D: FLdRfVar var_15C
  loc_6C0330: FLdRfVar var_154
  loc_6C0333: ImpAdLdRf MemVar_7520D4
  loc_6C0336: NewIfNullPr Global
  loc_6C0339:  = Global.App
  loc_6C033E: FLdPr var_154
  loc_6C0341:  = App.Path
  loc_6C0346: ILdRf var_15C
  loc_6C0349: LitStr "\"
  loc_6C034C: ConcatStr
  loc_6C034D: FStStrNoPop var_160
  loc_6C0350: ILdRf var_90
  loc_6C0353: ConcatStr
  loc_6C0354: CVarStr var_EC
  loc_6C0357: PopAdLdVar
  loc_6C0358: FLdPrThis
  loc_6C0359: VCallAd Control_ID_CrystalReport1
  loc_6C035C: FStAdFunc var_16C
  loc_6C035F: FLdPr var_16C
  loc_6C0362: LateIdSt
  loc_6C0367: FFreeStr var_15C = ""
  loc_6C036E: FFreeAd var_154 = ""
  loc_6C0375: FFree1Var var_EC = ""
  loc_6C0378: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6C037D: from_stack_1v = Proc_162_193_5DCDA0()
  loc_6C0382: ImpAdLdI4 MemVar_74BEB4
  loc_6C0385: FLdPr Me
  loc_6C0388: MemStStrCopy
  loc_6C038C: FLdPr Me
  loc_6C038F: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_6C0392: ImpAdCallFPR4 Proc_101_3_662098()
  loc_6C0397: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_6C039C: FLdI2 var_BA
  loc_6C039F: BranchF loc_6C03A7
  loc_6C03A2: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6C03A7: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6C03AC: LitVar_FALSE
  loc_6C03B0: PopAdLdVar
  loc_6C03B1: FLdPrThis
  loc_6C03B2: VCallAd Control_ID_PanelCierres
  loc_6C03B5: FStAdFunc var_154
  loc_6C03B8: FLdPr var_154
  loc_6C03BB: LateIdSt
  loc_6C03C0: FFree1Ad var_154
  loc_6C03C3: LitI2_Byte &HFF
  loc_6C03C5: FLdPrThis
  loc_6C03C6: VCallAd Control_ID_Reloj
  loc_6C03C9: FStAdFunc var_154
  loc_6C03CC: FLdPr var_154
  loc_6C03CF: Me.Enabled = from_stack_1b
  loc_6C03D4: FFree1Ad var_154
  loc_6C03D7: ExitProcHresult
  loc_6C03D8: FLdRfVar var_170
  loc_6C03DB: ImpAdCallI2 Err 'rtcErrObj
  loc_6C03E0: FStAdFunc var_154
  loc_6C03E3: FLdPr var_154
  loc_6C03E6:  = Err.Number
  loc_6C03EB: ILdRf var_170
  loc_6C03EE: FStR4 var_174
  loc_6C03F1: FFree1Ad var_154
  loc_6C03F4: ILdRf var_174
  loc_6C03F7: LitI4 &H5041
  loc_6C03FC: EqI4
  loc_6C03FD: BranchF loc_6C0418
  loc_6C0400: LitI2_Byte &HFF
  loc_6C0402: FLdPrThis
  loc_6C0403: VCallAd Control_ID_Reloj
  loc_6C0406: FStAdFunc var_154
  loc_6C0409: FLdPr var_154
  loc_6C040C: Me.Enabled = from_stack_1b
  loc_6C0411: FFree1Ad var_154
  loc_6C0414: ExitProcHresult
  loc_6C0415: Branch loc_6C042D
  loc_6C0418: LitI2_Byte &HFF
  loc_6C041A: FLdPrThis
  loc_6C041B: VCallAd Control_ID_Reloj
  loc_6C041E: FStAdFunc var_154
  loc_6C0421: FLdPr var_154
  loc_6C0424: Me.Enabled = from_stack_1b
  loc_6C0429: FFree1Ad var_154
  loc_6C042C: ExitProcHresult
  loc_6C042D: ExitProcHresult
End Sub

Private Sub CLOSE_MONTH_Click() '6C1604
  'Data Table: 460894
  loc_6C0DA4: OnErrorGoto loc_6C15AD
  loc_6C0DA7: LitI4 &HD
  loc_6C0DAC: ImpAdLdRf MemVar_74A170
  loc_6C0DAF: Ary1LdI2
  loc_6C0DB0: NotI4
  loc_6C0DB1: CVarBoolI2 var_13C
  loc_6C0DB5: LitVarI2 var_EC, 3
  loc_6C0DBA: LitI4 1
  loc_6C0DBF: ImpAdLdRf MemVar_74BF90
  loc_6C0DC2: CVarRef
  loc_6C0DC7: FLdRfVar var_FC
  loc_6C0DCA: ImpAdCallFPR4  = Mid(, , )
  loc_6C0DCF: FLdRfVar var_FC
  loc_6C0DD2: LitVarStr var_10C, "\\."
  loc_6C0DD7: HardType
  loc_6C0DD8: EqVar var_11C
  loc_6C0DDC: NotVar var_12C
  loc_6C0DE0: AndVar var_14C
  loc_6C0DE4: CBoolVarNull
  loc_6C0DE6: FFreeVar var_EC = "": var_FC = ""
  loc_6C0DEF: BranchF loc_6C0DF8
  loc_6C0DF2: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6C0DF7: ExitProcHresult
  loc_6C0DF8: LitI2_Byte 4
  loc_6C0DFA: PopTmpLdAd2 var_14E
  loc_6C0DFD: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6C0E02: NotI4
  loc_6C0E03: BranchF loc_6C0E07
  loc_6C0E06: ExitProcHresult
  loc_6C0E07: LitVar_Missing var_11C
  loc_6C0E0A: LitVar_Missing var_FC
  loc_6C0E0D: LitVar_Missing var_EC
  loc_6C0E10: LitI4 &H44
  loc_6C0E15: FLdPr Me
  loc_6C0E18: MemLdRfVar from_stack_1.global_7404
  loc_6C0E1B: CVarRef
  loc_6C0E20: ImpAdCallI2 MsgBox(, , , , )
  loc_6C0E25: LitI4 7
  loc_6C0E2A: EqI4
  loc_6C0E2B: FFreeVar var_EC = "": var_FC = ""
  loc_6C0E34: BranchF loc_6C0E38
  loc_6C0E37: ExitProcHresult
  loc_6C0E38: LitI2_Byte 0
  loc_6C0E3A: FLdPrThis
  loc_6C0E3B: VCallAd Control_ID_Reloj
  loc_6C0E3E: FStAdFunc var_154
  loc_6C0E41: FLdPr var_154
  loc_6C0E44: Me.Enabled = from_stack_1b
  loc_6C0E49: FFree1Ad var_154
  loc_6C0E4C: FLdRfVar var_156
  loc_6C0E4F: FLdRfVar var_A2
  loc_6C0E52: LitI2_Byte &HFF
  loc_6C0E54: PopTmpLdAd2 var_14E
  loc_6C0E57: FLdRfVar var_154
  loc_6C0E5A: ImpAdLdRf MemVar_74C760
  loc_6C0E5D: NewIfNullPr Formx
  loc_6C0E60: from_stack_1v = Formx.global_4589716Get()
  loc_6C0E65: FLdPr var_154
  loc_6C0E68:  = Formx.WindowState
  loc_6C0E6D: FLdI2 var_156
  loc_6C0E70: NotI4
  loc_6C0E71: FFree1Ad var_154
  loc_6C0E74: BranchF loc_6C0EA2
  loc_6C0E77: FLdRfVar var_EC
  loc_6C0E7A: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C0E7F: FLdRfVar var_EC
  loc_6C0E82: CBoolVarNull
  loc_6C0E84: FFree1Var var_EC = ""
  loc_6C0E87: BranchF loc_6C0E9F
  loc_6C0E8A: LitI2_Byte &HFF
  loc_6C0E8C: FLdPrThis
  loc_6C0E8D: VCallAd Control_ID_Reloj
  loc_6C0E90: FStAdFunc var_154
  loc_6C0E93: FLdPr var_154
  loc_6C0E96: Me.Enabled = from_stack_1b
  loc_6C0E9B: FFree1Ad var_154
  loc_6C0E9E: ExitProcHresult
  loc_6C0E9F: Branch loc_6C0E4C
  loc_6C0EA2: FLdUI1
  loc_6C0EA6: CI2UI1
  loc_6C0EA8: LitI2_Byte 0
  loc_6C0EAA: GtI2
  loc_6C0EAB: BranchF loc_6C0EF4
  loc_6C0EAE: LitVar_FALSE
  loc_6C0EB2: PopAdLdVar
  loc_6C0EB3: FLdPrThis
  loc_6C0EB4: VCallAd Control_ID_PanelCierres
  loc_6C0EB7: FStAdFunc var_154
  loc_6C0EBA: FLdPr var_154
  loc_6C0EBD: LateIdSt
  loc_6C0EC2: FFree1Ad var_154
  loc_6C0EC5: FLdRfVar var_EC
  loc_6C0EC8: FLdRfVar var_A2
  loc_6C0ECB: LitStr "M"
  loc_6C0ECE: FStStrCopy var_15C
  loc_6C0ED1: FLdRfVar var_15C
  loc_6C0ED4: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_6C0ED9: FFree1Str var_15C
  loc_6C0EDC: FFree1Var var_EC = ""
  loc_6C0EDF: LitI2_Byte &HFF
  loc_6C0EE1: FLdPrThis
  loc_6C0EE2: VCallAd Control_ID_Reloj
  loc_6C0EE5: FStAdFunc var_154
  loc_6C0EE8: FLdPr var_154
  loc_6C0EEB: Me.Enabled = from_stack_1b
  loc_6C0EF0: FFree1Ad var_154
  loc_6C0EF3: ExitProcHresult
  loc_6C0EF4: FLdRfVar var_14E
  loc_6C0EF7: ImpAdLdRf MemVar_74C6D8
  loc_6C0EFA: NewIfNullPr CCEMLicence
  loc_6C0EFD:  = CCEMLicence.Width
  loc_6C0F02: FLdI2 var_14E
  loc_6C0F05: LitI2_Byte 0
  loc_6C0F07: EqI2
  loc_6C0F08: BranchF loc_6C0F3D
  loc_6C0F0B: LitVar_TRUE var_CC
  loc_6C0F0E: PopAdLdVar
  loc_6C0F0F: FLdPrThis
  loc_6C0F10: VCallAd Control_ID_PanelCierres
  loc_6C0F13: FStAdFunc var_154
  loc_6C0F16: FLdPr var_154
  loc_6C0F19: LateIdSt
  loc_6C0F1E: FFree1Ad var_154
  loc_6C0F21: FLdPr Me
  loc_6C0F24: MemLdStr global_7408
  loc_6C0F27: CVarStr var_CC
  loc_6C0F2A: PopAdLdVar
  loc_6C0F2B: FLdPrThis
  loc_6C0F2C: VCallAd Control_ID_PanelCierres
  loc_6C0F2F: FStAdFunc var_154
  loc_6C0F32: FLdPr var_154
  loc_6C0F35: LateIdSt
  loc_6C0F3A: FFree1Ad var_154
  loc_6C0F3D: FLdRfVar var_156
  loc_6C0F40: FLdRfVar var_A0
  loc_6C0F43: CVarRef
  loc_6C0F48: LitI2_Byte &HFF
  loc_6C0F4A: PopTmpLdAd2 var_14E
  loc_6C0F4D: LitStr "M"
  loc_6C0F50: FStStrCopy var_15C
  loc_6C0F53: FLdRfVar var_15C
  loc_6C0F56: FLdRfVar var_154
  loc_6C0F59: ImpAdLdRf MemVar_74C760
  loc_6C0F5C: NewIfNullPr Formx
  loc_6C0F5F: from_stack_1v = Formx.global_4589716Get()
  loc_6C0F64: FLdPr var_154
  loc_6C0F67: Formx.WindowState = from_stack_1
  loc_6C0F6C: FLdI2 var_156
  loc_6C0F6F: NotI4
  loc_6C0F70: FFree1Str var_15C
  loc_6C0F73: FFree1Ad var_154
  loc_6C0F76: BranchF loc_6C0FBB
  loc_6C0F79: FLdRfVar var_EC
  loc_6C0F7C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C0F81: FLdRfVar var_EC
  loc_6C0F84: CBoolVarNull
  loc_6C0F86: FFree1Var var_EC = ""
  loc_6C0F89: BranchF loc_6C0FB8
  loc_6C0F8C: LitVar_FALSE
  loc_6C0F90: PopAdLdVar
  loc_6C0F91: FLdPrThis
  loc_6C0F92: VCallAd Control_ID_PanelCierres
  loc_6C0F95: FStAdFunc var_154
  loc_6C0F98: FLdPr var_154
  loc_6C0F9B: LateIdSt
  loc_6C0FA0: FFree1Ad var_154
  loc_6C0FA3: LitI2_Byte &HFF
  loc_6C0FA5: FLdPrThis
  loc_6C0FA6: VCallAd Control_ID_Reloj
  loc_6C0FA9: FStAdFunc var_154
  loc_6C0FAC: FLdPr var_154
  loc_6C0FAF: Me.Enabled = from_stack_1b
  loc_6C0FB4: FFree1Ad var_154
  loc_6C0FB7: ExitProcHresult
  loc_6C0FB8: Branch loc_6C0F3D
  loc_6C0FBB: FLdRfVar var_A0
  loc_6C0FBE: CVarRef
  loc_6C0FC3: FLdRfVar var_EC
  loc_6C0FC6: ImpAdCallFPR4  = Trim()
  loc_6C0FCB: FLdRfVar var_EC
  loc_6C0FCE: CStrVarTmp
  loc_6C0FCF: FStStr var_A0
  loc_6C0FD2: FFree1Var var_EC = ""
  loc_6C0FD5: ILdRf var_A0
  loc_6C0FD8: FnLenStr
  loc_6C0FD9: LitI4 2
  loc_6C0FDE: LtI4
  loc_6C0FDF: BranchF loc_6C103D
  loc_6C0FE2: LitVar_Missing var_FC
  loc_6C0FE5: LitVar_Missing var_EC
  loc_6C0FE8: ImpAdLdRf MemVar_74BF24
  loc_6C0FEB: CVarRef
  loc_6C0FF0: LitI4 0
  loc_6C0FF5: FLdPr Me
  loc_6C0FF8: MemLdRfVar from_stack_1.global_7412
  loc_6C0FFB: CVarRef
  loc_6C1000: ImpAdCallI2 MsgBox(, , , , )
  loc_6C1005: CBoolI4
  loc_6C1007: FFreeVar var_EC = ""
  loc_6C100E: BranchF loc_6C103D
  loc_6C1011: LitVar_FALSE
  loc_6C1015: PopAdLdVar
  loc_6C1016: FLdPrThis
  loc_6C1017: VCallAd Control_ID_PanelCierres
  loc_6C101A: FStAdFunc var_154
  loc_6C101D: FLdPr var_154
  loc_6C1020: LateIdSt
  loc_6C1025: FFree1Ad var_154
  loc_6C1028: LitI2_Byte &HFF
  loc_6C102A: FLdPrThis
  loc_6C102B: VCallAd Control_ID_Reloj
  loc_6C102E: FStAdFunc var_154
  loc_6C1031: FLdPr var_154
  loc_6C1034: Me.Enabled = from_stack_1b
  loc_6C1039: FFree1Ad var_154
  loc_6C103C: ExitProcHresult
  loc_6C103D: FLdRfVar var_B4
  loc_6C1040: FLdRfVar var_A0
  loc_6C1043: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_6C1048: FLdRfVar var_156
  loc_6C104B: FLdRfVar var_A0
  loc_6C104E: CVarRef
  loc_6C1053: LitI2_Byte 0
  loc_6C1055: PopTmpLdAd2 var_14E
  loc_6C1058: LitStr "M"
  loc_6C105B: FStStrCopy var_15C
  loc_6C105E: FLdRfVar var_15C
  loc_6C1061: FLdRfVar var_154
  loc_6C1064: ImpAdLdRf MemVar_74C760
  loc_6C1067: NewIfNullPr Formx
  loc_6C106A: from_stack_1v = Formx.global_4589716Get()
  loc_6C106F: FLdPr var_154
  loc_6C1072: Formx.WindowState = from_stack_1
  loc_6C1077: FLdI2 var_156
  loc_6C107A: NotI4
  loc_6C107B: FFree1Str var_15C
  loc_6C107E: FFree1Ad var_154
  loc_6C1081: BranchF loc_6C10C6
  loc_6C1084: FLdRfVar var_EC
  loc_6C1087: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6C108C: FLdRfVar var_EC
  loc_6C108F: CBoolVarNull
  loc_6C1091: FFree1Var var_EC = ""
  loc_6C1094: BranchF loc_6C10C3
  loc_6C1097: LitVar_FALSE
  loc_6C109B: PopAdLdVar
  loc_6C109C: FLdPrThis
  loc_6C109D: VCallAd Control_ID_PanelCierres
  loc_6C10A0: FStAdFunc var_154
  loc_6C10A3: FLdPr var_154
  loc_6C10A6: LateIdSt
  loc_6C10AB: FFree1Ad var_154
  loc_6C10AE: LitI2_Byte &HFF
  loc_6C10B0: FLdPrThis
  loc_6C10B1: VCallAd Control_ID_Reloj
  loc_6C10B4: FStAdFunc var_154
  loc_6C10B7: FLdPr var_154
  loc_6C10BA: Me.Enabled = from_stack_1b
  loc_6C10BF: FFree1Ad var_154
  loc_6C10C2: ExitProcHresult
  loc_6C10C3: Branch loc_6C1048
  loc_6C10C6: FLdRfVar var_B8
  loc_6C10C9: FLdRfVar var_A0
  loc_6C10CC: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_6C10D1: LitVar_FALSE
  loc_6C10D5: PopAdLdVar
  loc_6C10D6: FLdPrThis
  loc_6C10D7: VCallAd Control_ID_PanelCierres
  loc_6C10DA: FStAdFunc var_154
  loc_6C10DD: FLdPr var_154
  loc_6C10E0: LateIdSt
  loc_6C10E5: FFree1Ad var_154
  loc_6C10E8: FLdRfVar var_15C
  loc_6C10EB: FLdRfVar var_154
  loc_6C10EE: ImpAdLdRf MemVar_7520D4
  loc_6C10F1: NewIfNullPr Global
  loc_6C10F4:  = Global.App
  loc_6C10F9: FLdPr var_154
  loc_6C10FC:  = App.Path
  loc_6C1101: FLdRfVar var_AC
  loc_6C1104: FLdRfVar var_A8
  loc_6C1107: LitI2_Byte &HFF
  loc_6C1109: PopTmpLdAd2 var_14E
  loc_6C110C: ILdRf var_15C
  loc_6C110F: LitStr "\reporte.mdb"
  loc_6C1112: ConcatStr
  loc_6C1113: PopTmpLdAdStr
  loc_6C1117: FLdRfVar var_B4
  loc_6C111A: LitStr "M"
  loc_6C111D: FStStrCopy var_160
  loc_6C1120: FLdRfVar var_160
  loc_6C1123: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_6C1128: NotI4
  loc_6C1129: FFreeStr var_15C = "": var_160 = ""
  loc_6C1132: FFree1Ad var_154
  loc_6C1135: BranchF loc_6C11B2
  loc_6C1138: FLdRfVar var_14E
  loc_6C113B: ImpAdLdRf MemVar_74C6D8
  loc_6C113E: NewIfNullPr CCEMLicence
  loc_6C1141:  = CCEMLicence.Width
  loc_6C1146: FLdI2 var_14E
  loc_6C1149: LitI2_Byte &HFF
  loc_6C114B: EqI2
  loc_6C114C: BranchF loc_6C1150
  loc_6C114F: ExitProcHresult
  loc_6C1150: LitVar_Missing var_FC
  loc_6C1153: LitVar_Missing var_EC
  loc_6C1156: ImpAdLdRf MemVar_74BF24
  loc_6C1159: CVarRef
  loc_6C115E: LitI4 5
  loc_6C1163: FLdPr Me
  loc_6C1166: MemLdRfVar from_stack_1.global_7344
  loc_6C1169: CVarRef
  loc_6C116E: ImpAdCallI2 MsgBox(, , , , )
  loc_6C1173: LitI4 2
  loc_6C1178: EqI4
  loc_6C1179: FFreeVar var_EC = ""
  loc_6C1180: BranchF loc_6C11AF
  loc_6C1183: LitVar_FALSE
  loc_6C1187: PopAdLdVar
  loc_6C1188: FLdPrThis
  loc_6C1189: VCallAd Control_ID_PanelCierres
  loc_6C118C: FStAdFunc var_154
  loc_6C118F: FLdPr var_154
  loc_6C1192: LateIdSt
  loc_6C1197: FFree1Ad var_154
  loc_6C119A: LitI2_Byte &HFF
  loc_6C119C: FLdPrThis
  loc_6C119D: VCallAd Control_ID_Reloj
  loc_6C11A0: FStAdFunc var_154
  loc_6C11A3: FLdPr var_154
  loc_6C11A6: Me.Enabled = from_stack_1b
  loc_6C11AB: FFree1Ad var_154
  loc_6C11AE: ExitProcHresult
  loc_6C11AF: Branch loc_6C10E8
  loc_6C11B2: FLdRfVar var_15C
  loc_6C11B5: FLdRfVar var_154
  loc_6C11B8: ImpAdLdRf MemVar_7520D4
  loc_6C11BB: NewIfNullPr Global
  loc_6C11BE:  = Global.App
  loc_6C11C3: FLdPr var_154
  loc_6C11C6:  = App.Path
  loc_6C11CB: FLdRfVar var_AC
  loc_6C11CE: FLdRfVar var_A8
  loc_6C11D1: LitI2_Byte 0
  loc_6C11D3: PopTmpLdAd2 var_14E
  loc_6C11D6: ILdRf var_15C
  loc_6C11D9: LitStr "\reporte.mdb"
  loc_6C11DC: ConcatStr
  loc_6C11DD: PopTmpLdAdStr
  loc_6C11E1: FLdRfVar var_B8
  loc_6C11E4: LitStr "M"
  loc_6C11E7: FStStrCopy var_160
  loc_6C11EA: FLdRfVar var_160
  loc_6C11ED: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_6C11F2: NotI4
  loc_6C11F3: FFreeStr var_15C = "": var_160 = ""
  loc_6C11FC: FFree1Ad var_154
  loc_6C11FF: BranchF loc_6C127C
  loc_6C1202: FLdRfVar var_14E
  loc_6C1205: ImpAdLdRf MemVar_74C6D8
  loc_6C1208: NewIfNullPr CCEMLicence
  loc_6C120B:  = CCEMLicence.Width
  loc_6C1210: FLdI2 var_14E
  loc_6C1213: LitI2_Byte &HFF
  loc_6C1215: EqI2
  loc_6C1216: BranchF loc_6C121A
  loc_6C1219: ExitProcHresult
  loc_6C121A: LitVar_Missing var_FC
  loc_6C121D: LitVar_Missing var_EC
  loc_6C1220: ImpAdLdRf MemVar_74BF24
  loc_6C1223: CVarRef
  loc_6C1228: LitI4 5
  loc_6C122D: FLdPr Me
  loc_6C1230: MemLdRfVar from_stack_1.global_7344
  loc_6C1233: CVarRef
  loc_6C1238: ImpAdCallI2 MsgBox(, , , , )
  loc_6C123D: LitI4 2
  loc_6C1242: EqI4
  loc_6C1243: FFreeVar var_EC = ""
  loc_6C124A: BranchF loc_6C1279
  loc_6C124D: LitVar_FALSE
  loc_6C1251: PopAdLdVar
  loc_6C1252: FLdPrThis
  loc_6C1253: VCallAd Control_ID_PanelCierres
  loc_6C1256: FStAdFunc var_154
  loc_6C1259: FLdPr var_154
  loc_6C125C: LateIdSt
  loc_6C1261: FFree1Ad var_154
  loc_6C1264: LitI2_Byte &HFF
  loc_6C1266: FLdPrThis
  loc_6C1267: VCallAd Control_ID_Reloj
  loc_6C126A: FStAdFunc var_154
  loc_6C126D: FLdPr var_154
  loc_6C1270: Me.Enabled = from_stack_1b
  loc_6C1275: FFree1Ad var_154
  loc_6C1278: ExitProcHresult
  loc_6C1279: Branch loc_6C11B2
  loc_6C127C: LitI2_Byte &HFF
  loc_6C127E: FStI2 var_BA
  loc_6C1281: LitStr "CEM44.INI"
  loc_6C1284: FStStrCopy var_164
  loc_6C1287: FLdRfVar var_164
  loc_6C128A: LitStr "AVISO_DE_IMPRESION"
  loc_6C128D: FStStrCopy var_160
  loc_6C1290: FLdRfVar var_160
  loc_6C1293: LitStr "GENERAL"
  loc_6C1296: FStStrCopy var_15C
  loc_6C1299: FLdRfVar var_15C
  loc_6C129C: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6C12A1: FStStrNoPop var_168
  loc_6C12A4: LitStr "1"
  loc_6C12A7: EqStr
  loc_6C12A9: FFreeStr var_15C = "": var_160 = "": var_164 = ""
  loc_6C12B4: BranchF loc_6C12F1
  loc_6C12B7: LitVar_Missing var_12C
  loc_6C12BA: LitVar_Missing var_11C
  loc_6C12BD: LitVar_Missing var_FC
  loc_6C12C0: LitI4 &H24
  loc_6C12C5: LitVarStr var_CC, "Desea Imprimir el reporte?"
  loc_6C12CA: FStVarCopyObj var_EC
  loc_6C12CD: FLdRfVar var_EC
  loc_6C12D0: ImpAdCallI2 MsgBox(, , , , )
  loc_6C12D5: LitI4 7
  loc_6C12DA: EqI4
  loc_6C12DB: FFreeVar var_EC = "": var_FC = "": var_11C = ""
  loc_6C12E6: BranchF loc_6C12EE
  loc_6C12E9: LitI2_Byte 0
  loc_6C12EB: FStI2 var_BA
  loc_6C12EE: Branch loc_6C136D
  loc_6C12F1: LitStr "CEM44.INI"
  loc_6C12F4: FStStrCopy var_164
  loc_6C12F7: FLdRfVar var_164
  loc_6C12FA: LitStr "AVISO_DE_IMPRESION"
  loc_6C12FD: FStStrCopy var_160
  loc_6C1300: FLdRfVar var_160
  loc_6C1303: LitStr "GENERAL"
  loc_6C1306: FStStrCopy var_15C
  loc_6C1309: FLdRfVar var_15C
  loc_6C130C: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6C1311: FStStrNoPop var_168
  loc_6C1314: LitStr "2"
  loc_6C1317: EqStr
  loc_6C1319: FFreeStr var_15C = "": var_160 = "": var_164 = ""
  loc_6C1324: BranchF loc_6C132F
  loc_6C1327: LitI2_Byte 0
  loc_6C1329: FStI2 var_BA
  loc_6C132C: Branch loc_6C136D
  loc_6C132F: FLdRfVar var_14E
  loc_6C1332: ImpAdLdRf MemVar_74C6D8
  loc_6C1335: NewIfNullPr CCEMLicence
  loc_6C1338:  = CCEMLicence.Width
  loc_6C133D: FLdI2 var_14E
  loc_6C1340: LitI2_Byte 0
  loc_6C1342: EqI2
  loc_6C1343: BranchF loc_6C136D
  loc_6C1346: LitVar_Missing var_11C
  loc_6C1349: LitVar_Missing var_FC
  loc_6C134C: LitVar_Missing var_EC
  loc_6C134F: LitI4 0
  loc_6C1354: FLdPr Me
  loc_6C1357: MemLdRfVar from_stack_1.global_7416
  loc_6C135A: CVarRef
  loc_6C135F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6C1364: FFreeVar var_EC = "": var_FC = ""
  loc_6C136D: FLdRfVar var_14E
  loc_6C1370: ImpAdLdRf MemVar_74C6D8
  loc_6C1373: NewIfNullPr CCEMLicence
  loc_6C1376:  = CCEMLicence.Width
  loc_6C137B: FLdI2 var_14E
  loc_6C137E: LitI2_Byte 0
  loc_6C1380: EqI2
  loc_6C1381: BranchF loc_6C153E
  loc_6C1384: FLdPr Me
  loc_6C1387: MemLdStr global_7348
  loc_6C138A: CVarStr var_CC
  loc_6C138D: PopAdLdVar
  loc_6C138E: FLdPrThis
  loc_6C138F: VCallAd Control_ID_PanelCierres
  loc_6C1392: FStAdFunc var_154
  loc_6C1395: FLdPr var_154
  loc_6C1398: LateIdSt
  loc_6C139D: FFree1Ad var_154
  loc_6C13A0: LitVarI4
  loc_6C13A8: PopAdLdVar
  loc_6C13A9: FLdPrThis
  loc_6C13AA: VCallAd Control_ID_CrystalReport1
  loc_6C13AD: FStAdFunc var_154
  loc_6C13B0: FLdPr var_154
  loc_6C13B3: LateIdSt
  loc_6C13B8: FFree1Ad var_154
  loc_6C13BB: LitVarI2 var_CC, 1
  loc_6C13C0: PopAdLdVar
  loc_6C13C1: FLdPrThis
  loc_6C13C2: VCallAd Control_ID_CrystalReport1
  loc_6C13C5: FStAdFunc var_154
  loc_6C13C8: FLdPr var_154
  loc_6C13CB: LateIdSt
  loc_6C13D0: FFree1Ad var_154
  loc_6C13D3: FLdRfVar var_15C
  loc_6C13D6: FLdRfVar var_154
  loc_6C13D9: ImpAdLdRf MemVar_7520D4
  loc_6C13DC: NewIfNullPr Global
  loc_6C13DF:  = Global.App
  loc_6C13E4: FLdPr var_154
  loc_6C13E7:  = App.Path
  loc_6C13EC: FLdRfVar var_16C
  loc_6C13EF: LitVar_Missing var_10C
  loc_6C13F2: PopAdLdVar
  loc_6C13F3: LitVar_Missing var_DC
  loc_6C13F6: PopAdLdVar
  loc_6C13F7: LitVar_TRUE var_CC
  loc_6C13FA: PopAdLdVar
  loc_6C13FB: ILdRf var_15C
  loc_6C13FE: LitStr "\reporte.mdb"
  loc_6C1401: ConcatStr
  loc_6C1402: FStStrNoPop var_160
  loc_6C1405: ImpAdLdRf MemVar_752164
  loc_6C1408: NewIfNullPr Me
  loc_6C140B: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6C1410: FLdZeroAd var_16C
  loc_6C1413: FStAdFunc var_88
  loc_6C1416: FFreeStr var_15C = ""
  loc_6C141D: FFree1Ad var_154
  loc_6C1420: FLdRfVar var_154
  loc_6C1423: LitVar_Missing var_10C
  loc_6C1426: PopAdLdVar
  loc_6C1427: LitVar_Missing var_DC
  loc_6C142A: PopAdLdVar
  loc_6C142B: LitVar_Missing var_CC
  loc_6C142E: PopAdLdVar
  loc_6C142F: LitStr "select ReportVer from Header"
  loc_6C1432: FLdPr var_88
  loc_6C1435: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6C143A: FLdZeroAd var_154
  loc_6C143D: FStAdFunc var_8C
  loc_6C1440: FLdRfVar var_EC
  loc_6C1443: FLdRfVar var_16C
  loc_6C1446: LitVarStr var_CC, "ReportVer"
  loc_6C144B: PopAdLdVar
  loc_6C144C: FLdRfVar var_154
  loc_6C144F: FLdPr var_8C
  loc_6C1452:  = Me.Fields
  loc_6C1457: FLdPr var_154
  loc_6C145A: from_stack_2 = Me.Item(from_stack_1)
  loc_6C145F: FLdPr var_16C
  loc_6C1462:  = Me.Value
  loc_6C1467: FLdRfVar var_EC
  loc_6C146A: LitVarStr var_DC, vbNullString
  loc_6C146F: ConcatVar var_FC
  loc_6C1473: CStrVarTmp
  loc_6C1474: FStStr var_90
  loc_6C1477: FFreeAd var_154 = ""
  loc_6C147E: FFreeVar var_EC = ""
  loc_6C1485: FLdPr var_8C
  loc_6C1488: Me.Close
  loc_6C148D: LitNothing
  loc_6C148F: CastAd
  loc_6C1492: FStAdFunc var_8C
  loc_6C1495: FLdPr var_88
  loc_6C1498: Me.Close
  loc_6C149D: LitNothing
  loc_6C149F: CastAd
  loc_6C14A2: FStAdFunc var_88
  loc_6C14A5: ILdRf var_90
  loc_6C14A8: LitStr vbNullString
  loc_6C14AB: EqStr
  loc_6C14AD: BranchF loc_6C14F3
  loc_6C14B0: FLdRfVar var_15C
  loc_6C14B3: FLdRfVar var_154
  loc_6C14B6: ImpAdLdRf MemVar_7520D4
  loc_6C14B9: NewIfNullPr Global
  loc_6C14BC:  = Global.App
  loc_6C14C1: FLdPr var_154
  loc_6C14C4:  = App.Path
  loc_6C14C9: ILdRf var_15C
  loc_6C14CC: LitStr "\repo1.rpt"
  loc_6C14CF: ConcatStr
  loc_6C14D0: CVarStr var_EC
  loc_6C14D3: PopAdLdVar
  loc_6C14D4: FLdPrThis
  loc_6C14D5: VCallAd Control_ID_CrystalReport1
  loc_6C14D8: FStAdFunc var_16C
  loc_6C14DB: FLdPr var_16C
  loc_6C14DE: LateIdSt
  loc_6C14E3: FFree1Str var_15C
  loc_6C14E6: FFreeAd var_154 = ""
  loc_6C14ED: FFree1Var var_EC = ""
  loc_6C14F0: Branch loc_6C153E
  loc_6C14F3: FLdRfVar var_15C
  loc_6C14F6: FLdRfVar var_154
  loc_6C14F9: ImpAdLdRf MemVar_7520D4
  loc_6C14FC: NewIfNullPr Global
  loc_6C14FF:  = Global.App
  loc_6C1504: FLdPr var_154
  loc_6C1507:  = App.Path
  loc_6C150C: ILdRf var_15C
  loc_6C150F: LitStr "\"
  loc_6C1512: ConcatStr
  loc_6C1513: FStStrNoPop var_160
  loc_6C1516: ILdRf var_90
  loc_6C1519: ConcatStr
  loc_6C151A: CVarStr var_EC
  loc_6C151D: PopAdLdVar
  loc_6C151E: FLdPrThis
  loc_6C151F: VCallAd Control_ID_CrystalReport1
  loc_6C1522: FStAdFunc var_16C
  loc_6C1525: FLdPr var_16C
  loc_6C1528: LateIdSt
  loc_6C152D: FFreeStr var_15C = ""
  loc_6C1534: FFreeAd var_154 = ""
  loc_6C153B: FFree1Var var_EC = ""
  loc_6C153E: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6C1543: from_stack_1v = Proc_162_193_5DCDA0()
  loc_6C1548: ImpAdLdI4 MemVar_74BEB8
  loc_6C154B: FLdPr Me
  loc_6C154E: MemStStrCopy
  loc_6C1552: FLdPr Me
  loc_6C1555: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_6C1558: ImpAdCallFPR4 Proc_101_3_662098()
  loc_6C155D: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_6C1562: FLdI2 var_BA
  loc_6C1565: BranchF loc_6C156D
  loc_6C1568: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6C156D: FLdPrThis
  loc_6C156E: VCallAd Control_ID_CrystalReport1
  loc_6C1571: FStAdFunc var_154
  loc_6C1574: FLdPr var_154
  loc_6C1577: LateIdLdVar var_EC DispID_65 0
  loc_6C157E: CI2Var
  loc_6C157F: LitI2_Byte 0
  loc_6C1581: EqI2
  loc_6C1582: FFree1Ad var_154
  loc_6C1585: FFree1Var var_EC = ""
  loc_6C1588: BranchF loc_6C1593
  loc_6C158B: ImpAdCallFPR4 DoEvents()
  loc_6C1590: Branch loc_6C156D
  loc_6C1593: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6C1598: LitI2_Byte &HFF
  loc_6C159A: FLdPrThis
  loc_6C159B: VCallAd Control_ID_Reloj
  loc_6C159E: FStAdFunc var_154
  loc_6C15A1: FLdPr var_154
  loc_6C15A4: Me.Enabled = from_stack_1b
  loc_6C15A9: FFree1Ad var_154
  loc_6C15AC: ExitProcHresult
  loc_6C15AD: FLdRfVar var_170
  loc_6C15B0: ImpAdCallI2 Err 'rtcErrObj
  loc_6C15B5: FStAdFunc var_154
  loc_6C15B8: FLdPr var_154
  loc_6C15BB:  = Err.Number
  loc_6C15C0: ILdRf var_170
  loc_6C15C3: FStR4 var_174
  loc_6C15C6: FFree1Ad var_154
  loc_6C15C9: ILdRf var_174
  loc_6C15CC: LitI4 &H5041
  loc_6C15D1: EqI4
  loc_6C15D2: BranchF loc_6C15ED
  loc_6C15D5: LitI2_Byte &HFF
  loc_6C15D7: FLdPrThis
  loc_6C15D8: VCallAd Control_ID_Reloj
  loc_6C15DB: FStAdFunc var_154
  loc_6C15DE: FLdPr var_154
  loc_6C15E1: Me.Enabled = from_stack_1b
  loc_6C15E6: FFree1Ad var_154
  loc_6C15E9: ExitProcHresult
  loc_6C15EA: Branch loc_6C1602
  loc_6C15ED: LitI2_Byte &HFF
  loc_6C15EF: FLdPrThis
  loc_6C15F0: VCallAd Control_ID_Reloj
  loc_6C15F3: FStAdFunc var_154
  loc_6C15F6: FLdPr var_154
  loc_6C15F9: Me.Enabled = from_stack_1b
  loc_6C15FE: FFree1Ad var_154
  loc_6C1601: ExitProcHresult
  loc_6C1602: ExitProcHresult
End Sub

Private Sub mnuAplicaciones_Click() '5D63D4
  'Data Table: 460894
  loc_5D63AC: LitI2_Byte &H5F
  loc_5D63AE: PopTmpLdAd2 var_86
  loc_5D63B1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D63B6: NotI4
  loc_5D63B7: BranchF loc_5D63BB
  loc_5D63BA: ExitProcHresult
  loc_5D63BB: LitVar_Missing var_A8
  loc_5D63BE: PopAdLdVar
  loc_5D63BF: LitVarI2 var_98, 1
  loc_5D63C4: PopAdLdVar
  loc_5D63C5: ImpAdLdRf MemVar_74DD80
  loc_5D63C8: NewIfNullPr frmAppLoader
  loc_5D63CB: frmAppLoader.Show from_stack_1, from_stack_2
  loc_5D63D0: ExitProcHresult
End Sub

Private Sub CLOSE_SHIFT_Click() '6F310C
  'Data Table: 460894
  loc_6F2244: OnErrorGoto loc_6F30A0
  loc_6F2247: LitI2_Byte 0
  loc_6F2249: FStI2 var_B0
  loc_6F224C: LitI4 &HE
  loc_6F2251: ImpAdLdRf MemVar_74A170
  loc_6F2254: Ary1LdI2
  loc_6F2255: NotI4
  loc_6F2256: CVarBoolI2 var_13C
  loc_6F225A: LitVarI2 var_EC, 3
  loc_6F225F: LitI4 1
  loc_6F2264: ImpAdLdRf MemVar_74BF90
  loc_6F2267: CVarRef
  loc_6F226C: FLdRfVar var_FC
  loc_6F226F: ImpAdCallFPR4  = Mid(, , )
  loc_6F2274: FLdRfVar var_FC
  loc_6F2277: LitVarStr var_10C, "\\."
  loc_6F227C: HardType
  loc_6F227D: EqVar var_11C
  loc_6F2281: NotVar var_12C
  loc_6F2285: AndVar var_14C
  loc_6F2289: CBoolVarNull
  loc_6F228B: FFreeVar var_EC = "": var_FC = ""
  loc_6F2294: BranchF loc_6F229D
  loc_6F2297: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6F229C: ExitProcHresult
  loc_6F229D: LitI2_Byte 2
  loc_6F229F: PopTmpLdAd2 var_14E
  loc_6F22A2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6F22A7: NotI4
  loc_6F22A8: BranchF loc_6F22AC
  loc_6F22AB: ExitProcHresult
  loc_6F22AC: LitVar_Missing var_11C
  loc_6F22AF: LitVar_Missing var_FC
  loc_6F22B2: LitVar_Missing var_EC
  loc_6F22B5: LitI4 &H44
  loc_6F22BA: FLdPr Me
  loc_6F22BD: MemLdRfVar from_stack_1.global_7420
  loc_6F22C0: CVarRef
  loc_6F22C5: ImpAdCallI2 MsgBox(, , , , )
  loc_6F22CA: LitI4 7
  loc_6F22CF: EqI4
  loc_6F22D0: FFreeVar var_EC = "": var_FC = ""
  loc_6F22D9: BranchF loc_6F22DD
  loc_6F22DC: ExitProcHresult
  loc_6F22DD: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_6F22E2: FLdRfVar var_14E
  loc_6F22E5: LitVarI2 var_EC, 1
  loc_6F22EA: LitStr "Activate"
  loc_6F22ED: ImpAdLdPr unk_4608E6
  loc_6F22F0: MemLdPr global_0
  loc_6F22F3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6F22F8: FLdI2 var_14E
  loc_6F22FB: FFree1Var var_EC = ""
  loc_6F22FE: BranchF loc_6F2327
  loc_6F2301: LitI2_Byte &HFF
  loc_6F2303: FStI2 var_150
  loc_6F2306: FLdRfVar var_14E
  loc_6F2309: FLdRfVar var_150
  loc_6F230C: CVarRef
  loc_6F2311: LitStr "FormLoadDom"
  loc_6F2314: ImpAdLdPr unk_4608E6
  loc_6F2317: MemLdPr global_0
  loc_6F231A: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6F231F: FLdI2 var_150
  loc_6F2322: NotI4
  loc_6F2323: BranchF loc_6F2327
  loc_6F2326: ExitProcHresult
  loc_6F2327: LitI2_Byte &HFF
  loc_6F2329: FStI2 var_92
  loc_6F232C: LitI2_Byte 0
  loc_6F232E: FLdPrThis
  loc_6F232F: VCallAd Control_ID_Reloj
  loc_6F2332: FStAdFunc var_154
  loc_6F2335: FLdPr var_154
  loc_6F2338: Me.Enabled = from_stack_1b
  loc_6F233D: FFree1Ad var_154
  loc_6F2340: LitVar_TRUE var_CC
  loc_6F2343: PopAdLdVar
  loc_6F2344: FLdPrThis
  loc_6F2345: VCallAd Control_ID_PanelCierres
  loc_6F2348: FStAdFunc var_154
  loc_6F234B: FLdPr var_154
  loc_6F234E: LateIdSt
  loc_6F2353: FFree1Ad var_154
  loc_6F2356: FLdPr Me
  loc_6F2359: MemLdStr global_7424
  loc_6F235C: CVarStr var_CC
  loc_6F235F: PopAdLdVar
  loc_6F2360: FLdPrThis
  loc_6F2361: VCallAd Control_ID_PanelCierres
  loc_6F2364: FStAdFunc var_154
  loc_6F2367: FLdPr var_154
  loc_6F236A: LateIdSt
  loc_6F236F: FFree1Ad var_154
  loc_6F2372: FLdRfVar var_156
  loc_6F2375: FLdRfVar var_A2
  loc_6F2378: LitI2_Byte &HFF
  loc_6F237A: PopTmpLdAd2 var_14E
  loc_6F237D: FLdRfVar var_154
  loc_6F2380: ImpAdLdRf MemVar_74C760
  loc_6F2383: NewIfNullPr Formx
  loc_6F2386: from_stack_1v = Formx.global_4589716Get()
  loc_6F238B: FLdPr var_154
  loc_6F238E:  = Formx.Enabled
  loc_6F2393: FLdI2 var_156
  loc_6F2396: NotI4
  loc_6F2397: FFree1Ad var_154
  loc_6F239A: BranchF loc_6F23C8
  loc_6F239D: FLdRfVar var_EC
  loc_6F23A0: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6F23A5: FLdRfVar var_EC
  loc_6F23A8: CBoolVarNull
  loc_6F23AA: FFree1Var var_EC = ""
  loc_6F23AD: BranchF loc_6F23C5
  loc_6F23B0: LitI2_Byte &HFF
  loc_6F23B2: FLdPrThis
  loc_6F23B3: VCallAd Control_ID_Reloj
  loc_6F23B6: FStAdFunc var_154
  loc_6F23B9: FLdPr var_154
  loc_6F23BC: Me.Enabled = from_stack_1b
  loc_6F23C1: FFree1Ad var_154
  loc_6F23C4: ExitProcHresult
  loc_6F23C5: Branch loc_6F2372
  loc_6F23C8: FLdUI1
  loc_6F23CC: CI2UI1
  loc_6F23CE: LitI2_Byte 0
  loc_6F23D0: GtI2
  loc_6F23D1: BranchF loc_6F241A
  loc_6F23D4: LitVar_FALSE
  loc_6F23D8: PopAdLdVar
  loc_6F23D9: FLdPrThis
  loc_6F23DA: VCallAd Control_ID_PanelCierres
  loc_6F23DD: FStAdFunc var_154
  loc_6F23E0: FLdPr var_154
  loc_6F23E3: LateIdSt
  loc_6F23E8: FFree1Ad var_154
  loc_6F23EB: FLdRfVar var_EC
  loc_6F23EE: FLdRfVar var_A2
  loc_6F23F1: LitStr "T"
  loc_6F23F4: FStStrCopy var_15C
  loc_6F23F7: FLdRfVar var_15C
  loc_6F23FA: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_6F23FF: FFree1Str var_15C
  loc_6F2402: FFree1Var var_EC = ""
  loc_6F2405: LitI2_Byte &HFF
  loc_6F2407: FLdPrThis
  loc_6F2408: VCallAd Control_ID_Reloj
  loc_6F240B: FStAdFunc var_154
  loc_6F240E: FLdPr var_154
  loc_6F2411: Me.Enabled = from_stack_1b
  loc_6F2416: FFree1Ad var_154
  loc_6F2419: ExitProcHresult
  loc_6F241A: LitI4 &H7D0
  loc_6F241F: ImpAdCallFPR4 Sleep()
  loc_6F2424: SetLastSystemError
  loc_6F2425: FLdRfVar var_214
  loc_6F2428: LitVar_Missing var_210
  loc_6F242B: LitVar_Missing var_1F0
  loc_6F242E: LitVar_Missing var_1D0
  loc_6F2431: LitVar_Missing var_1B0
  loc_6F2434: LitVar_Missing var_190
  loc_6F2437: LitVar_Missing var_14C
  loc_6F243A: LitVar_Missing var_12C
  loc_6F243D: LitVar_Missing var_11C
  loc_6F2440: LitVar_Missing var_FC
  loc_6F2443: LitVar_Missing var_EC
  loc_6F2446: LitStr "Cierre de turno en proceso, comprobantes impagos"
  loc_6F2449: FStStrCopy var_15C
  loc_6F244C: FLdRfVar var_15C
  loc_6F244F: LitI4 &H89
  loc_6F2454: PopTmpLdAdStr var_160
  loc_6F2457: LitI2_Byte &HA
  loc_6F2459: PopTmpLdAd2 var_14E
  loc_6F245C: ImpAdLdRf MemVar_74C7D0
  loc_6F245F: NewIfNullPr clsMsg
  loc_6F2462: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F2467: ILdRf var_214
  loc_6F246A: FLdPr Me
  loc_6F246D: MemStStrCopy
  loc_6F2471: FFreeStr var_15C = ""
  loc_6F2478: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F248F: FLdRfVar var_214
  loc_6F2492: LitVar_Missing var_210
  loc_6F2495: LitVar_Missing var_1F0
  loc_6F2498: LitVar_Missing var_1D0
  loc_6F249B: LitVar_Missing var_1B0
  loc_6F249E: LitVar_Missing var_190
  loc_6F24A1: LitVar_Missing var_14C
  loc_6F24A4: LitVar_Missing var_12C
  loc_6F24A7: LitVar_Missing var_11C
  loc_6F24AA: LitVar_Missing var_FC
  loc_6F24AD: LitVar_Missing var_EC
  loc_6F24B0: LitStr "Cierre de turno en proceso, esperando finalizacion de despachos"
  loc_6F24B3: FStStrCopy var_15C
  loc_6F24B6: FLdRfVar var_15C
  loc_6F24B9: LitI4 &H8A
  loc_6F24BE: PopTmpLdAdStr var_160
  loc_6F24C1: LitI2_Byte &HA
  loc_6F24C3: PopTmpLdAd2 var_14E
  loc_6F24C6: ImpAdLdRf MemVar_74C7D0
  loc_6F24C9: NewIfNullPr clsMsg
  loc_6F24CC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F24D1: ILdRf var_214
  loc_6F24D4: FLdPr Me
  loc_6F24D7: MemStStrCopy
  loc_6F24DB: FFreeStr var_15C = ""
  loc_6F24E2: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F24F9: LitI2_Byte &HFF
  loc_6F24FB: BranchF loc_6F308B
  loc_6F24FE: ImpAdCallFPR4 DoEvents()
  loc_6F2503: FLdRfVar var_14E
  loc_6F2506: FLdRfVar var_98
  loc_6F2509: FLdRfVar var_154
  loc_6F250C: ImpAdLdRf MemVar_74C760
  loc_6F250F: NewIfNullPr Formx
  loc_6F2512: from_stack_1v = Formx.global_4589716Get()
  loc_6F2517: FLdPr var_154
  loc_6F251A:  = Formx.Top
  loc_6F251F: FLdI2 var_14E
  loc_6F2522: NotI4
  loc_6F2523: FFree1Ad var_154
  loc_6F2526: BranchF loc_6F256B
  loc_6F2529: FLdRfVar var_EC
  loc_6F252C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6F2531: FLdRfVar var_EC
  loc_6F2534: CBoolVarNull
  loc_6F2536: FFree1Var var_EC = ""
  loc_6F2539: BranchF loc_6F2568
  loc_6F253C: LitVar_FALSE
  loc_6F2540: PopAdLdVar
  loc_6F2541: FLdPrThis
  loc_6F2542: VCallAd Control_ID_PanelCierres
  loc_6F2545: FStAdFunc var_154
  loc_6F2548: FLdPr var_154
  loc_6F254B: LateIdSt
  loc_6F2550: FFree1Ad var_154
  loc_6F2553: LitI2_Byte &HFF
  loc_6F2555: FLdPrThis
  loc_6F2556: VCallAd Control_ID_Reloj
  loc_6F2559: FStAdFunc var_154
  loc_6F255C: FLdPr var_154
  loc_6F255F: Me.Enabled = from_stack_1b
  loc_6F2564: FFree1Ad var_154
  loc_6F2567: ExitProcHresult
  loc_6F2568: Branch loc_6F2503
  loc_6F256B: LitVarI2 var_EC, 1
  loc_6F2570: LitI4 &H21
  loc_6F2575: FLdRfVar var_98
  loc_6F2578: CVarRef
  loc_6F257D: FLdRfVar var_FC
  loc_6F2580: ImpAdCallFPR4  = Mid(, , )
  loc_6F2585: FLdRfVar var_FC
  loc_6F2588: CStrVarVal var_15C
  loc_6F258C: ImpAdCallI2 Asc()
  loc_6F2591: CStrUI1
  loc_6F2593: FStStr var_9C
  loc_6F2596: FFree1Str var_15C
  loc_6F2599: FFreeVar var_EC = ""
  loc_6F25A0: ILdRf var_9C
  loc_6F25A3: FStStrCopy var_218
  loc_6F25A6: ILdRf var_218
  loc_6F25A9: LitI2_Byte &HD
  loc_6F25AB: CStrI2
  loc_6F25AD: FStStrNoPop var_15C
  loc_6F25B0: EqStr
  loc_6F25B2: FFree1Str var_15C
  loc_6F25B5: BranchF loc_6F2614
  loc_6F25B8: LitI2_Byte &HFF
  loc_6F25BA: FStI2 var_92
  loc_6F25BD: LitVar_TRUE var_CC
  loc_6F25C0: PopAdLdVar
  loc_6F25C1: FLdPrThis
  loc_6F25C2: VCallAd Control_ID_PanelCierres
  loc_6F25C5: FStAdFunc var_154
  loc_6F25C8: FLdPr var_154
  loc_6F25CB: LateIdSt
  loc_6F25D0: FFree1Ad var_154
  loc_6F25D3: LitI4 &H3E8
  loc_6F25D8: ImpAdCallFPR4 Sleep()
  loc_6F25DD: SetLastSystemError
  loc_6F25DE: LitI2_Byte &HFF
  loc_6F25E0: ImpAdStI2 MemVar_74C382
  loc_6F25E3: LitI2_Byte 0
  loc_6F25E5: PopTmpLdAd2 var_14E
  loc_6F25E8: ImpAdCallI2 Proc_53_4_718EF4()
  loc_6F25ED: BranchF loc_6F2611
  loc_6F25F0: FLdI2 var_B0
  loc_6F25F3: NotI4
  loc_6F25F4: BranchF loc_6F2611
  loc_6F25F7: LitVar_Missing var_DC
  loc_6F25FA: PopAdLdVar
  loc_6F25FB: LitVarI2 var_CC, 1
  loc_6F2600: PopAdLdVar
  loc_6F2601: ImpAdLdRf MemVar_74D8B0
  loc_6F2604: NewIfNullPr Consola
  loc_6F2607: Consola.Show from_stack_1, from_stack_2
  loc_6F260C: LitI2_Byte &HFF
  loc_6F260E: FStI2 var_B0
  loc_6F2611: Branch loc_6F307D
  loc_6F2614: ILdRf var_218
  loc_6F2617: LitI2_Byte 8
  loc_6F2619: CStrI2
  loc_6F261B: FStStrNoPop var_15C
  loc_6F261E: EqStr
  loc_6F2620: FFree1Str var_15C
  loc_6F2623: BranchT loc_6F2638
  loc_6F2626: ILdRf var_218
  loc_6F2629: LitI2_Byte &HC
  loc_6F262B: CStrI2
  loc_6F262D: FStStrNoPop var_214
  loc_6F2630: EqStr
  loc_6F2632: FFree1Str var_214
  loc_6F2635: BranchF loc_6F26E0
  loc_6F2638: LitI2_Byte &HFF
  loc_6F263A: ImpAdStI2 MemVar_74C6E4
  loc_6F263D: LitI2_Byte &HFF
  loc_6F263F: FStI2 var_92
  loc_6F2642: LitVar_TRUE var_CC
  loc_6F2645: PopAdLdVar
  loc_6F2646: FLdPrThis
  loc_6F2647: VCallAd Control_ID_PanelCierres
  loc_6F264A: FStAdFunc var_154
  loc_6F264D: FLdPr var_154
  loc_6F2650: LateIdSt
  loc_6F2655: FFree1Ad var_154
  loc_6F2658: ILdRf var_9C
  loc_6F265B: CR8Str
  loc_6F265D: LitI2_Byte 8
  loc_6F265F: CR8I2
  loc_6F2660: EqR4
  loc_6F2661: BranchF loc_6F2683
  loc_6F2664: FLdPr Me
  loc_6F2667: MemLdStr global_7536
  loc_6F266A: CVarStr var_CC
  loc_6F266D: PopAdLdVar
  loc_6F266E: FLdPrThis
  loc_6F266F: VCallAd Control_ID_PanelCierres
  loc_6F2672: FStAdFunc var_154
  loc_6F2675: FLdPr var_154
  loc_6F2678: LateIdSt
  loc_6F267D: FFree1Ad var_154
  loc_6F2680: Branch loc_6F269F
  loc_6F2683: FLdPr Me
  loc_6F2686: MemLdStr global_7540
  loc_6F2689: CVarStr var_CC
  loc_6F268C: PopAdLdVar
  loc_6F268D: FLdPrThis
  loc_6F268E: VCallAd Control_ID_PanelCierres
  loc_6F2691: FStAdFunc var_154
  loc_6F2694: FLdPr var_154
  loc_6F2697: LateIdSt
  loc_6F269C: FFree1Ad var_154
  loc_6F269F: LitI4 &H3E8
  loc_6F26A4: ImpAdCallFPR4 Sleep()
  loc_6F26A9: SetLastSystemError
  loc_6F26AA: LitI2_Byte &HFF
  loc_6F26AC: ImpAdStI2 MemVar_74C382
  loc_6F26AF: LitI2_Byte 0
  loc_6F26B1: PopTmpLdAd2 var_14E
  loc_6F26B4: ImpAdCallI2 Proc_53_4_718EF4()
  loc_6F26B9: BranchF loc_6F26DD
  loc_6F26BC: FLdI2 var_B0
  loc_6F26BF: NotI4
  loc_6F26C0: BranchF loc_6F26DD
  loc_6F26C3: LitVar_Missing var_DC
  loc_6F26C6: PopAdLdVar
  loc_6F26C7: LitVarI2 var_CC, 1
  loc_6F26CC: PopAdLdVar
  loc_6F26CD: ImpAdLdRf MemVar_74D8B0
  loc_6F26D0: NewIfNullPr Consola
  loc_6F26D3: Consola.Show from_stack_1, from_stack_2
  loc_6F26D8: LitI2_Byte &HFF
  loc_6F26DA: FStI2 var_B0
  loc_6F26DD: Branch loc_6F307D
  loc_6F26E0: ILdRf var_218
  loc_6F26E3: LitI2_Byte 4
  loc_6F26E5: CStrI2
  loc_6F26E7: FStStrNoPop var_15C
  loc_6F26EA: EqStr
  loc_6F26EC: FFree1Str var_15C
  loc_6F26EF: BranchF loc_6F2727
  loc_6F26F2: LitVar_TRUE var_CC
  loc_6F26F5: PopAdLdVar
  loc_6F26F6: FLdPrThis
  loc_6F26F7: VCallAd Control_ID_PanelCierres
  loc_6F26FA: FStAdFunc var_154
  loc_6F26FD: FLdPr var_154
  loc_6F2700: LateIdSt
  loc_6F2705: FFree1Ad var_154
  loc_6F2708: FLdPr Me
  loc_6F270B: MemLdStr global_7424
  loc_6F270E: CVarStr var_CC
  loc_6F2711: PopAdLdVar
  loc_6F2712: FLdPrThis
  loc_6F2713: VCallAd Control_ID_PanelCierres
  loc_6F2716: FStAdFunc var_154
  loc_6F2719: FLdPr var_154
  loc_6F271C: LateIdSt
  loc_6F2721: FFree1Ad var_154
  loc_6F2724: Branch loc_6F307D
  loc_6F2727: ILdRf var_218
  loc_6F272A: LitI2_Byte 1
  loc_6F272C: CStrI2
  loc_6F272E: FStStrNoPop var_15C
  loc_6F2731: EqStr
  loc_6F2733: FFree1Str var_15C
  loc_6F2736: BranchF loc_6F307D
  loc_6F2739: FLdI2 var_92
  loc_6F273C: BranchF loc_6F307D
  loc_6F273F: FLdRfVar var_214
  loc_6F2742: LitVar_Missing var_210
  loc_6F2745: LitVar_Missing var_1F0
  loc_6F2748: LitVar_Missing var_1D0
  loc_6F274B: LitVar_Missing var_1B0
  loc_6F274E: LitVar_Missing var_190
  loc_6F2751: LitVar_Missing var_14C
  loc_6F2754: LitVar_Missing var_12C
  loc_6F2757: LitVar_Missing var_11C
  loc_6F275A: LitVar_Missing var_FC
  loc_6F275D: LitVar_Missing var_EC
  loc_6F2760: LitStr "Impresion de Factura Diferencia en proceso"
  loc_6F2763: FStStrCopy var_15C
  loc_6F2766: FLdRfVar var_15C
  loc_6F2769: LitI4 &H8B
  loc_6F276E: PopTmpLdAdStr var_160
  loc_6F2771: LitI2_Byte &HA
  loc_6F2773: PopTmpLdAd2 var_14E
  loc_6F2776: ImpAdLdRf MemVar_74C7D0
  loc_6F2779: NewIfNullPr clsMsg
  loc_6F277C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F2781: ILdRf var_214
  loc_6F2784: FLdPr Me
  loc_6F2787: MemStStrCopy
  loc_6F278B: FFreeStr var_15C = ""
  loc_6F2792: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F27A9: FLdRfVar var_214
  loc_6F27AC: LitVar_Missing var_210
  loc_6F27AF: LitVar_Missing var_1F0
  loc_6F27B2: LitVar_Missing var_1D0
  loc_6F27B5: LitVar_Missing var_1B0
  loc_6F27B8: LitVar_Missing var_190
  loc_6F27BB: LitVar_Missing var_14C
  loc_6F27BE: LitVar_Missing var_12C
  loc_6F27C1: LitVar_Missing var_11C
  loc_6F27C4: LitVar_Missing var_FC
  loc_6F27C7: LitVar_Missing var_EC
  loc_6F27CA: LitStr "Introduzca el Formulario de Facturas B en la impresora y presione ENTER"
  loc_6F27CD: FStStrCopy var_15C
  loc_6F27D0: FLdRfVar var_15C
  loc_6F27D3: LitI4 &H8C
  loc_6F27D8: PopTmpLdAdStr var_160
  loc_6F27DB: LitI2_Byte &HA
  loc_6F27DD: PopTmpLdAd2 var_14E
  loc_6F27E0: ImpAdLdRf MemVar_74C7D0
  loc_6F27E3: NewIfNullPr clsMsg
  loc_6F27E6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F27EB: ILdRf var_214
  loc_6F27EE: FLdPr Me
  loc_6F27F1: MemStStrCopy
  loc_6F27F5: FFreeStr var_15C = ""
  loc_6F27FC: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F2813: FLdRfVar var_214
  loc_6F2816: LitVar_Missing var_210
  loc_6F2819: LitVar_Missing var_1F0
  loc_6F281C: LitVar_Missing var_1D0
  loc_6F281F: LitVar_Missing var_1B0
  loc_6F2822: LitVar_Missing var_190
  loc_6F2825: LitVar_Missing var_14C
  loc_6F2828: LitVar_Missing var_12C
  loc_6F282B: LitVar_Missing var_11C
  loc_6F282E: LitVar_Missing var_FC
  loc_6F2831: LitVar_Missing var_EC
  loc_6F2834: LitStr "Introduzca el formulario blanco para emitir el reporte de cierre y presione ENTER"
  loc_6F2837: FStStrCopy var_15C
  loc_6F283A: FLdRfVar var_15C
  loc_6F283D: LitI4 &H8D
  loc_6F2842: PopTmpLdAdStr var_160
  loc_6F2845: LitI2_Byte &HA
  loc_6F2847: PopTmpLdAd2 var_14E
  loc_6F284A: ImpAdLdRf MemVar_74C7D0
  loc_6F284D: NewIfNullPr clsMsg
  loc_6F2850: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F2855: ILdRf var_214
  loc_6F2858: FLdPr Me
  loc_6F285B: MemStStrCopy
  loc_6F285F: FFreeStr var_15C = ""
  loc_6F2866: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F287D: FLdRfVar var_214
  loc_6F2880: LitVar_Missing var_210
  loc_6F2883: LitVar_Missing var_1F0
  loc_6F2886: LitVar_Missing var_1D0
  loc_6F2889: LitVar_Missing var_1B0
  loc_6F288C: LitVar_Missing var_190
  loc_6F288F: LitVar_Missing var_14C
  loc_6F2892: LitVar_Missing var_12C
  loc_6F2895: LitVar_Missing var_11C
  loc_6F2898: LitVar_Missing var_FC
  loc_6F289B: LitVar_Missing var_EC
  loc_6F289E: LitStr "Impresion de Reporte de turno en proceso"
  loc_6F28A1: FStStrCopy var_15C
  loc_6F28A4: FLdRfVar var_15C
  loc_6F28A7: LitI4 &H8E
  loc_6F28AC: PopTmpLdAdStr var_160
  loc_6F28AF: LitI2_Byte &HA
  loc_6F28B1: PopTmpLdAd2 var_14E
  loc_6F28B4: ImpAdLdRf MemVar_74C7D0
  loc_6F28B7: NewIfNullPr clsMsg
  loc_6F28BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F28BF: ILdRf var_214
  loc_6F28C2: FLdPr Me
  loc_6F28C5: MemStStrCopy
  loc_6F28C9: FFreeStr var_15C = ""
  loc_6F28D0: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F28E7: LitVarI2 var_EC, 1
  loc_6F28EC: LitI4 1
  loc_6F28F1: ImpAdLdI4 MemVar_74BEAC
  loc_6F28F4: ImpAdCallI2 Mid$(, , )
  loc_6F28F9: FStStrNoPop var_15C
  loc_6F28FC: LitStr "1"
  loc_6F28FF: EqStr
  loc_6F2901: FFree1Str var_15C
  loc_6F2904: FFree1Var var_EC = ""
  loc_6F2907: BranchF loc_6F2954
  loc_6F290A: FLdPr Me
  loc_6F290D: MemLdStr global_7544
  loc_6F2910: CVarStr var_CC
  loc_6F2913: PopAdLdVar
  loc_6F2914: FLdPrThis
  loc_6F2915: VCallAd Control_ID_PanelCierres
  loc_6F2918: FStAdFunc var_154
  loc_6F291B: FLdPr var_154
  loc_6F291E: LateIdSt
  loc_6F2923: FFree1Ad var_154
  loc_6F2926: LitVar_Missing var_11C
  loc_6F2929: LitVar_Missing var_FC
  loc_6F292C: LitVar_Missing var_EC
  loc_6F292F: LitI4 0
  loc_6F2934: FLdPr Me
  loc_6F2937: MemLdRfVar from_stack_1.global_7548
  loc_6F293A: CVarRef
  loc_6F293F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F2944: FFreeVar var_EC = "": var_FC = ""
  loc_6F294D: LitI2_Byte &HFF
  loc_6F294F: Call ImpresionFacturaDiferencia(from_stack_1v)
  loc_6F2954: LitI2_Byte &HFF
  loc_6F2956: FStI2 var_BA
  loc_6F2959: LitStr "CEM44.INI"
  loc_6F295C: FStStrCopy var_21C
  loc_6F295F: FLdRfVar var_21C
  loc_6F2962: LitStr "AVISO_DE_IMPRESION"
  loc_6F2965: FStStrCopy var_214
  loc_6F2968: FLdRfVar var_214
  loc_6F296B: LitStr "GENERAL"
  loc_6F296E: FStStrCopy var_15C
  loc_6F2971: FLdRfVar var_15C
  loc_6F2974: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6F2979: FStStrNoPop var_220
  loc_6F297C: LitStr "1"
  loc_6F297F: EqStr
  loc_6F2981: FFreeStr var_15C = "": var_214 = "": var_21C = ""
  loc_6F298C: BranchF loc_6F29C9
  loc_6F298F: LitVar_Missing var_12C
  loc_6F2992: LitVar_Missing var_11C
  loc_6F2995: LitVar_Missing var_FC
  loc_6F2998: LitI4 &H24
  loc_6F299D: LitVarStr var_CC, "Desea Imprimir el reporte?"
  loc_6F29A2: FStVarCopyObj var_EC
  loc_6F29A5: FLdRfVar var_EC
  loc_6F29A8: ImpAdCallI2 MsgBox(, , , , )
  loc_6F29AD: LitI4 7
  loc_6F29B2: EqI4
  loc_6F29B3: FFreeVar var_EC = "": var_FC = "": var_11C = ""
  loc_6F29BE: BranchF loc_6F29C6
  loc_6F29C1: LitI2_Byte 0
  loc_6F29C3: FStI2 var_BA
  loc_6F29C6: Branch loc_6F2A45
  loc_6F29C9: LitStr "CEM44.INI"
  loc_6F29CC: FStStrCopy var_21C
  loc_6F29CF: FLdRfVar var_21C
  loc_6F29D2: LitStr "AVISO_DE_IMPRESION"
  loc_6F29D5: FStStrCopy var_214
  loc_6F29D8: FLdRfVar var_214
  loc_6F29DB: LitStr "GENERAL"
  loc_6F29DE: FStStrCopy var_15C
  loc_6F29E1: FLdRfVar var_15C
  loc_6F29E4: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6F29E9: FStStrNoPop var_220
  loc_6F29EC: LitStr "2"
  loc_6F29EF: EqStr
  loc_6F29F1: FFreeStr var_15C = "": var_214 = "": var_21C = ""
  loc_6F29FC: BranchF loc_6F2A07
  loc_6F29FF: LitI2_Byte 0
  loc_6F2A01: FStI2 var_BA
  loc_6F2A04: Branch loc_6F2A45
  loc_6F2A07: FLdRfVar var_14E
  loc_6F2A0A: ImpAdLdRf MemVar_74C6D8
  loc_6F2A0D: NewIfNullPr CCEMLicence
  loc_6F2A10:  = CCEMLicence.Width
  loc_6F2A15: FLdI2 var_14E
  loc_6F2A18: LitI2_Byte 0
  loc_6F2A1A: EqI2
  loc_6F2A1B: BranchF loc_6F2A45
  loc_6F2A1E: LitVar_Missing var_11C
  loc_6F2A21: LitVar_Missing var_FC
  loc_6F2A24: LitVar_Missing var_EC
  loc_6F2A27: LitI4 0
  loc_6F2A2C: FLdPr Me
  loc_6F2A2F: MemLdRfVar from_stack_1.global_7552
  loc_6F2A32: CVarRef
  loc_6F2A37: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6F2A3C: FFreeVar var_EC = "": var_FC = ""
  loc_6F2A45: FLdRfVar var_14E
  loc_6F2A48: ImpAdLdRf MemVar_74C6D8
  loc_6F2A4B: NewIfNullPr CCEMLicence
  loc_6F2A4E:  = CCEMLicence.Width
  loc_6F2A53: FLdI2 var_14E
  loc_6F2A56: LitI2_Byte 0
  loc_6F2A58: EqI2
  loc_6F2A59: BranchF loc_6F2A78
  loc_6F2A5C: FLdPr Me
  loc_6F2A5F: MemLdStr global_7556
  loc_6F2A62: CVarStr var_CC
  loc_6F2A65: PopAdLdVar
  loc_6F2A66: FLdPrThis
  loc_6F2A67: VCallAd Control_ID_PanelCierres
  loc_6F2A6A: FStAdFunc var_154
  loc_6F2A6D: FLdPr var_154
  loc_6F2A70: LateIdSt
  loc_6F2A75: FFree1Ad var_154
  loc_6F2A78: FLdRfVar var_156
  loc_6F2A7B: FLdRfVar var_A0
  loc_6F2A7E: CVarRef
  loc_6F2A83: LitI2_Byte &HFF
  loc_6F2A85: PopTmpLdAd2 var_14E
  loc_6F2A88: LitStr "T"
  loc_6F2A8B: FStStrCopy var_15C
  loc_6F2A8E: FLdRfVar var_15C
  loc_6F2A91: FLdRfVar var_154
  loc_6F2A94: ImpAdLdRf MemVar_74C760
  loc_6F2A97: NewIfNullPr Formx
  loc_6F2A9A: from_stack_1v = Formx.global_4589716Get()
  loc_6F2A9F: FLdPr var_154
  loc_6F2AA2: Formx.WindowState = from_stack_1
  loc_6F2AA7: FLdI2 var_156
  loc_6F2AAA: NotI4
  loc_6F2AAB: FFree1Str var_15C
  loc_6F2AAE: FFree1Ad var_154
  loc_6F2AB1: BranchF loc_6F2AF6
  loc_6F2AB4: FLdRfVar var_EC
  loc_6F2AB7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6F2ABC: FLdRfVar var_EC
  loc_6F2ABF: CBoolVarNull
  loc_6F2AC1: FFree1Var var_EC = ""
  loc_6F2AC4: BranchF loc_6F2AF3
  loc_6F2AC7: LitVar_FALSE
  loc_6F2ACB: PopAdLdVar
  loc_6F2ACC: FLdPrThis
  loc_6F2ACD: VCallAd Control_ID_PanelCierres
  loc_6F2AD0: FStAdFunc var_154
  loc_6F2AD3: FLdPr var_154
  loc_6F2AD6: LateIdSt
  loc_6F2ADB: FFree1Ad var_154
  loc_6F2ADE: LitI2_Byte &HFF
  loc_6F2AE0: FLdPrThis
  loc_6F2AE1: VCallAd Control_ID_Reloj
  loc_6F2AE4: FStAdFunc var_154
  loc_6F2AE7: FLdPr var_154
  loc_6F2AEA: Me.Enabled = from_stack_1b
  loc_6F2AEF: FFree1Ad var_154
  loc_6F2AF2: ExitProcHresult
  loc_6F2AF3: Branch loc_6F2A78
  loc_6F2AF6: FLdRfVar var_A0
  loc_6F2AF9: CVarRef
  loc_6F2AFE: FLdRfVar var_EC
  loc_6F2B01: ImpAdCallFPR4  = Trim()
  loc_6F2B06: FLdRfVar var_EC
  loc_6F2B09: CStrVarTmp
  loc_6F2B0A: FStStr var_A0
  loc_6F2B0D: FFree1Var var_EC = ""
  loc_6F2B10: FLdRfVar var_214
  loc_6F2B13: LitVar_Missing var_210
  loc_6F2B16: LitVar_Missing var_1F0
  loc_6F2B19: LitVar_Missing var_1D0
  loc_6F2B1C: LitVar_Missing var_1B0
  loc_6F2B1F: LitVar_Missing var_190
  loc_6F2B22: LitVar_Missing var_14C
  loc_6F2B25: LitVar_Missing var_12C
  loc_6F2B28: LitVar_Missing var_11C
  loc_6F2B2B: LitVar_Missing var_FC
  loc_6F2B2E: LitVar_Missing var_EC
  loc_6F2B31: LitStr "El turno no contiene ventas"
  loc_6F2B34: FStStrCopy var_15C
  loc_6F2B37: FLdRfVar var_15C
  loc_6F2B3A: LitI4 &H8F
  loc_6F2B3F: PopTmpLdAdStr var_160
  loc_6F2B42: LitI2_Byte &HA
  loc_6F2B44: PopTmpLdAd2 var_14E
  loc_6F2B47: ImpAdLdRf MemVar_74C7D0
  loc_6F2B4A: NewIfNullPr clsMsg
  loc_6F2B4D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6F2B52: ILdRf var_214
  loc_6F2B55: FLdPr Me
  loc_6F2B58: MemStStrCopy
  loc_6F2B5C: FFreeStr var_15C = ""
  loc_6F2B63: FFreeVar var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_6F2B7A: ILdRf var_A0
  loc_6F2B7D: FnLenStr
  loc_6F2B7E: LitI4 2
  loc_6F2B83: LtI4
  loc_6F2B84: BranchF loc_6F2BE2
  loc_6F2B87: LitVar_Missing var_FC
  loc_6F2B8A: LitVar_Missing var_EC
  loc_6F2B8D: ImpAdLdRf MemVar_74BF24
  loc_6F2B90: CVarRef
  loc_6F2B95: LitI4 0
  loc_6F2B9A: FLdPr Me
  loc_6F2B9D: MemLdRfVar from_stack_1.global_7560
  loc_6F2BA0: CVarRef
  loc_6F2BA5: ImpAdCallI2 MsgBox(, , , , )
  loc_6F2BAA: CBoolI4
  loc_6F2BAC: FFreeVar var_EC = ""
  loc_6F2BB3: BranchF loc_6F2BE2
  loc_6F2BB6: LitI2_Byte &HFF
  loc_6F2BB8: FLdPrThis
  loc_6F2BB9: VCallAd Control_ID_Reloj
  loc_6F2BBC: FStAdFunc var_154
  loc_6F2BBF: FLdPr var_154
  loc_6F2BC2: Me.Enabled = from_stack_1b
  loc_6F2BC7: FFree1Ad var_154
  loc_6F2BCA: LitVar_FALSE
  loc_6F2BCE: PopAdLdVar
  loc_6F2BCF: FLdPrThis
  loc_6F2BD0: VCallAd Control_ID_PanelCierres
  loc_6F2BD3: FStAdFunc var_154
  loc_6F2BD6: FLdPr var_154
  loc_6F2BD9: LateIdSt
  loc_6F2BDE: FFree1Ad var_154
  loc_6F2BE1: ExitProcHresult
  loc_6F2BE2: FLdRfVar var_B4
  loc_6F2BE5: FLdRfVar var_A0
  loc_6F2BE8: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_6F2BED: FLdRfVar var_156
  loc_6F2BF0: FLdRfVar var_A0
  loc_6F2BF3: CVarRef
  loc_6F2BF8: LitI2_Byte 0
  loc_6F2BFA: PopTmpLdAd2 var_14E
  loc_6F2BFD: LitStr "T"
  loc_6F2C00: FStStrCopy var_15C
  loc_6F2C03: FLdRfVar var_15C
  loc_6F2C06: FLdRfVar var_154
  loc_6F2C09: ImpAdLdRf MemVar_74C760
  loc_6F2C0C: NewIfNullPr Formx
  loc_6F2C0F: from_stack_1v = Formx.global_4589716Get()
  loc_6F2C14: FLdPr var_154
  loc_6F2C17: Formx.WindowState = from_stack_1
  loc_6F2C1C: FLdI2 var_156
  loc_6F2C1F: NotI4
  loc_6F2C20: FFree1Str var_15C
  loc_6F2C23: FFree1Ad var_154
  loc_6F2C26: BranchF loc_6F2C6B
  loc_6F2C29: FLdRfVar var_EC
  loc_6F2C2C: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6F2C31: FLdRfVar var_EC
  loc_6F2C34: CBoolVarNull
  loc_6F2C36: FFree1Var var_EC = ""
  loc_6F2C39: BranchF loc_6F2C68
  loc_6F2C3C: LitVar_FALSE
  loc_6F2C40: PopAdLdVar
  loc_6F2C41: FLdPrThis
  loc_6F2C42: VCallAd Control_ID_PanelCierres
  loc_6F2C45: FStAdFunc var_154
  loc_6F2C48: FLdPr var_154
  loc_6F2C4B: LateIdSt
  loc_6F2C50: FFree1Ad var_154
  loc_6F2C53: LitI2_Byte &HFF
  loc_6F2C55: FLdPrThis
  loc_6F2C56: VCallAd Control_ID_Reloj
  loc_6F2C59: FStAdFunc var_154
  loc_6F2C5C: FLdPr var_154
  loc_6F2C5F: Me.Enabled = from_stack_1b
  loc_6F2C64: FFree1Ad var_154
  loc_6F2C67: ExitProcHresult
  loc_6F2C68: Branch loc_6F2BED
  loc_6F2C6B: FLdRfVar var_B8
  loc_6F2C6E: FLdRfVar var_A0
  loc_6F2C71: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_6F2C76: LitVar_FALSE
  loc_6F2C7A: PopAdLdVar
  loc_6F2C7B: FLdPrThis
  loc_6F2C7C: VCallAd Control_ID_PanelCierres
  loc_6F2C7F: FStAdFunc var_154
  loc_6F2C82: FLdPr var_154
  loc_6F2C85: LateIdSt
  loc_6F2C8A: FFree1Ad var_154
  loc_6F2C8D: FLdRfVar var_15C
  loc_6F2C90: FLdRfVar var_154
  loc_6F2C93: ImpAdLdRf MemVar_7520D4
  loc_6F2C96: NewIfNullPr Global
  loc_6F2C99:  = Global.App
  loc_6F2C9E: FLdPr var_154
  loc_6F2CA1:  = App.Path
  loc_6F2CA6: FLdRfVar var_A8
  loc_6F2CA9: FLdRfVar var_AC
  loc_6F2CAC: LitI2_Byte &HFF
  loc_6F2CAE: PopTmpLdAd2 var_14E
  loc_6F2CB1: ILdRf var_15C
  loc_6F2CB4: LitStr "\reporte.mdb"
  loc_6F2CB7: ConcatStr
  loc_6F2CB8: PopTmpLdAdStr
  loc_6F2CBC: FLdRfVar var_B4
  loc_6F2CBF: LitStr "T"
  loc_6F2CC2: FStStrCopy var_214
  loc_6F2CC5: FLdRfVar var_214
  loc_6F2CC8: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_6F2CCD: NotI4
  loc_6F2CCE: FFreeStr var_15C = "": var_214 = ""
  loc_6F2CD7: FFree1Ad var_154
  loc_6F2CDA: BranchF loc_6F2D57
  loc_6F2CDD: FLdRfVar var_14E
  loc_6F2CE0: ImpAdLdRf MemVar_74C6D8
  loc_6F2CE3: NewIfNullPr CCEMLicence
  loc_6F2CE6:  = CCEMLicence.Width
  loc_6F2CEB: FLdI2 var_14E
  loc_6F2CEE: LitI2_Byte &HFF
  loc_6F2CF0: EqI2
  loc_6F2CF1: BranchF loc_6F2CF5
  loc_6F2CF4: ExitProcHresult
  loc_6F2CF5: LitVar_Missing var_FC
  loc_6F2CF8: LitVar_Missing var_EC
  loc_6F2CFB: ImpAdLdRf MemVar_74BF24
  loc_6F2CFE: CVarRef
  loc_6F2D03: LitI4 5
  loc_6F2D08: FLdPr Me
  loc_6F2D0B: MemLdRfVar from_stack_1.global_7344
  loc_6F2D0E: CVarRef
  loc_6F2D13: ImpAdCallI2 MsgBox(, , , , )
  loc_6F2D18: LitI4 2
  loc_6F2D1D: EqI4
  loc_6F2D1E: FFreeVar var_EC = ""
  loc_6F2D25: BranchF loc_6F2D54
  loc_6F2D28: LitVar_FALSE
  loc_6F2D2C: PopAdLdVar
  loc_6F2D2D: FLdPrThis
  loc_6F2D2E: VCallAd Control_ID_PanelCierres
  loc_6F2D31: FStAdFunc var_154
  loc_6F2D34: FLdPr var_154
  loc_6F2D37: LateIdSt
  loc_6F2D3C: FFree1Ad var_154
  loc_6F2D3F: LitI2_Byte &HFF
  loc_6F2D41: FLdPrThis
  loc_6F2D42: VCallAd Control_ID_Reloj
  loc_6F2D45: FStAdFunc var_154
  loc_6F2D48: FLdPr var_154
  loc_6F2D4B: Me.Enabled = from_stack_1b
  loc_6F2D50: FFree1Ad var_154
  loc_6F2D53: ExitProcHresult
  loc_6F2D54: Branch loc_6F2C8D
  loc_6F2D57: FLdRfVar var_15C
  loc_6F2D5A: FLdRfVar var_154
  loc_6F2D5D: ImpAdLdRf MemVar_7520D4
  loc_6F2D60: NewIfNullPr Global
  loc_6F2D63:  = Global.App
  loc_6F2D68: FLdPr var_154
  loc_6F2D6B:  = App.Path
  loc_6F2D70: FLdRfVar var_A8
  loc_6F2D73: FLdRfVar var_AC
  loc_6F2D76: LitI2_Byte 0
  loc_6F2D78: PopTmpLdAd2 var_14E
  loc_6F2D7B: ILdRf var_15C
  loc_6F2D7E: LitStr "\reporte.mdb"
  loc_6F2D81: ConcatStr
  loc_6F2D82: PopTmpLdAdStr
  loc_6F2D86: FLdRfVar var_B8
  loc_6F2D89: LitStr "T"
  loc_6F2D8C: FStStrCopy var_214
  loc_6F2D8F: FLdRfVar var_214
  loc_6F2D92: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_6F2D97: NotI4
  loc_6F2D98: FFreeStr var_15C = "": var_214 = ""
  loc_6F2DA1: FFree1Ad var_154
  loc_6F2DA4: BranchF loc_6F2E21
  loc_6F2DA7: FLdRfVar var_14E
  loc_6F2DAA: ImpAdLdRf MemVar_74C6D8
  loc_6F2DAD: NewIfNullPr CCEMLicence
  loc_6F2DB0:  = CCEMLicence.Width
  loc_6F2DB5: FLdI2 var_14E
  loc_6F2DB8: LitI2_Byte &HFF
  loc_6F2DBA: EqI2
  loc_6F2DBB: BranchF loc_6F2DBF
  loc_6F2DBE: ExitProcHresult
  loc_6F2DBF: LitVar_Missing var_FC
  loc_6F2DC2: LitVar_Missing var_EC
  loc_6F2DC5: ImpAdLdRf MemVar_74BF24
  loc_6F2DC8: CVarRef
  loc_6F2DCD: LitI4 5
  loc_6F2DD2: FLdPr Me
  loc_6F2DD5: MemLdRfVar from_stack_1.global_7344
  loc_6F2DD8: CVarRef
  loc_6F2DDD: ImpAdCallI2 MsgBox(, , , , )
  loc_6F2DE2: LitI4 2
  loc_6F2DE7: EqI4
  loc_6F2DE8: FFreeVar var_EC = ""
  loc_6F2DEF: BranchF loc_6F2E1E
  loc_6F2DF2: LitVar_FALSE
  loc_6F2DF6: PopAdLdVar
  loc_6F2DF7: FLdPrThis
  loc_6F2DF8: VCallAd Control_ID_PanelCierres
  loc_6F2DFB: FStAdFunc var_154
  loc_6F2DFE: FLdPr var_154
  loc_6F2E01: LateIdSt
  loc_6F2E06: FFree1Ad var_154
  loc_6F2E09: LitI2_Byte &HFF
  loc_6F2E0B: FLdPrThis
  loc_6F2E0C: VCallAd Control_ID_Reloj
  loc_6F2E0F: FStAdFunc var_154
  loc_6F2E12: FLdPr var_154
  loc_6F2E15: Me.Enabled = from_stack_1b
  loc_6F2E1A: FFree1Ad var_154
  loc_6F2E1D: ExitProcHresult
  loc_6F2E1E: Branch loc_6F2D57
  loc_6F2E21: FLdRfVar var_14E
  loc_6F2E24: ImpAdLdRf MemVar_74C6D8
  loc_6F2E27: NewIfNullPr CCEMLicence
  loc_6F2E2A:  = CCEMLicence.Width
  loc_6F2E2F: FLdI2 var_14E
  loc_6F2E32: LitI2_Byte 0
  loc_6F2E34: EqI2
  loc_6F2E35: BranchF loc_6F2FF2
  loc_6F2E38: FLdPr Me
  loc_6F2E3B: MemLdStr global_7348
  loc_6F2E3E: CVarStr var_CC
  loc_6F2E41: PopAdLdVar
  loc_6F2E42: FLdPrThis
  loc_6F2E43: VCallAd Control_ID_PanelCierres
  loc_6F2E46: FStAdFunc var_154
  loc_6F2E49: FLdPr var_154
  loc_6F2E4C: LateIdSt
  loc_6F2E51: FFree1Ad var_154
  loc_6F2E54: LitVarI4
  loc_6F2E5C: PopAdLdVar
  loc_6F2E5D: FLdPrThis
  loc_6F2E5E: VCallAd Control_ID_CrystalReport1
  loc_6F2E61: FStAdFunc var_154
  loc_6F2E64: FLdPr var_154
  loc_6F2E67: LateIdSt
  loc_6F2E6C: FFree1Ad var_154
  loc_6F2E6F: LitVarI2 var_CC, 1
  loc_6F2E74: PopAdLdVar
  loc_6F2E75: FLdPrThis
  loc_6F2E76: VCallAd Control_ID_CrystalReport1
  loc_6F2E79: FStAdFunc var_154
  loc_6F2E7C: FLdPr var_154
  loc_6F2E7F: LateIdSt
  loc_6F2E84: FFree1Ad var_154
  loc_6F2E87: FLdRfVar var_15C
  loc_6F2E8A: FLdRfVar var_154
  loc_6F2E8D: ImpAdLdRf MemVar_7520D4
  loc_6F2E90: NewIfNullPr Global
  loc_6F2E93:  = Global.App
  loc_6F2E98: FLdPr var_154
  loc_6F2E9B:  = App.Path
  loc_6F2EA0: FLdRfVar var_224
  loc_6F2EA3: LitVar_Missing var_10C
  loc_6F2EA6: PopAdLdVar
  loc_6F2EA7: LitVar_Missing var_DC
  loc_6F2EAA: PopAdLdVar
  loc_6F2EAB: LitVar_TRUE var_CC
  loc_6F2EAE: PopAdLdVar
  loc_6F2EAF: ILdRf var_15C
  loc_6F2EB2: LitStr "\reporte.mdb"
  loc_6F2EB5: ConcatStr
  loc_6F2EB6: FStStrNoPop var_214
  loc_6F2EB9: ImpAdLdRf MemVar_752164
  loc_6F2EBC: NewIfNullPr Me
  loc_6F2EBF: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6F2EC4: FLdZeroAd var_224
  loc_6F2EC7: FStAdFunc var_88
  loc_6F2ECA: FFreeStr var_15C = ""
  loc_6F2ED1: FFree1Ad var_154
  loc_6F2ED4: FLdRfVar var_154
  loc_6F2ED7: LitVar_Missing var_10C
  loc_6F2EDA: PopAdLdVar
  loc_6F2EDB: LitVar_Missing var_DC
  loc_6F2EDE: PopAdLdVar
  loc_6F2EDF: LitVar_Missing var_CC
  loc_6F2EE2: PopAdLdVar
  loc_6F2EE3: LitStr "select ReportVer from Header"
  loc_6F2EE6: FLdPr var_88
  loc_6F2EE9: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_6F2EEE: FLdZeroAd var_154
  loc_6F2EF1: FStAdFunc var_8C
  loc_6F2EF4: FLdRfVar var_EC
  loc_6F2EF7: FLdRfVar var_224
  loc_6F2EFA: LitVarStr var_CC, "ReportVer"
  loc_6F2EFF: PopAdLdVar
  loc_6F2F00: FLdRfVar var_154
  loc_6F2F03: FLdPr var_8C
  loc_6F2F06:  = Me.Fields
  loc_6F2F0B: FLdPr var_154
  loc_6F2F0E: from_stack_2 = Me.Item(from_stack_1)
  loc_6F2F13: FLdPr var_224
  loc_6F2F16:  = Me.Value
  loc_6F2F1B: FLdRfVar var_EC
  loc_6F2F1E: LitVarStr var_DC, vbNullString
  loc_6F2F23: ConcatVar var_FC
  loc_6F2F27: CStrVarTmp
  loc_6F2F28: FStStr var_90
  loc_6F2F2B: FFreeAd var_154 = ""
  loc_6F2F32: FFreeVar var_EC = ""
  loc_6F2F39: FLdPr var_8C
  loc_6F2F3C: Me.Close
  loc_6F2F41: LitNothing
  loc_6F2F43: CastAd
  loc_6F2F46: FStAdFunc var_8C
  loc_6F2F49: FLdPr var_88
  loc_6F2F4C: Me.Close
  loc_6F2F51: LitNothing
  loc_6F2F53: CastAd
  loc_6F2F56: FStAdFunc var_88
  loc_6F2F59: ILdRf var_90
  loc_6F2F5C: LitStr vbNullString
  loc_6F2F5F: EqStr
  loc_6F2F61: BranchF loc_6F2FA7
  loc_6F2F64: FLdRfVar var_15C
  loc_6F2F67: FLdRfVar var_154
  loc_6F2F6A: ImpAdLdRf MemVar_7520D4
  loc_6F2F6D: NewIfNullPr Global
  loc_6F2F70:  = Global.App
  loc_6F2F75: FLdPr var_154
  loc_6F2F78:  = App.Path
  loc_6F2F7D: ILdRf var_15C
  loc_6F2F80: LitStr "\repo1.rpt"
  loc_6F2F83: ConcatStr
  loc_6F2F84: CVarStr var_EC
  loc_6F2F87: PopAdLdVar
  loc_6F2F88: FLdPrThis
  loc_6F2F89: VCallAd Control_ID_CrystalReport1
  loc_6F2F8C: FStAdFunc var_224
  loc_6F2F8F: FLdPr var_224
  loc_6F2F92: LateIdSt
  loc_6F2F97: FFree1Str var_15C
  loc_6F2F9A: FFreeAd var_154 = ""
  loc_6F2FA1: FFree1Var var_EC = ""
  loc_6F2FA4: Branch loc_6F2FF2
  loc_6F2FA7: FLdRfVar var_15C
  loc_6F2FAA: FLdRfVar var_154
  loc_6F2FAD: ImpAdLdRf MemVar_7520D4
  loc_6F2FB0: NewIfNullPr Global
  loc_6F2FB3:  = Global.App
  loc_6F2FB8: FLdPr var_154
  loc_6F2FBB:  = App.Path
  loc_6F2FC0: ILdRf var_15C
  loc_6F2FC3: LitStr "\"
  loc_6F2FC6: ConcatStr
  loc_6F2FC7: FStStrNoPop var_214
  loc_6F2FCA: ILdRf var_90
  loc_6F2FCD: ConcatStr
  loc_6F2FCE: CVarStr var_EC
  loc_6F2FD1: PopAdLdVar
  loc_6F2FD2: FLdPrThis
  loc_6F2FD3: VCallAd Control_ID_CrystalReport1
  loc_6F2FD6: FStAdFunc var_224
  loc_6F2FD9: FLdPr var_224
  loc_6F2FDC: LateIdSt
  loc_6F2FE1: FFreeStr var_15C = ""
  loc_6F2FE8: FFreeAd var_154 = ""
  loc_6F2FEF: FFree1Var var_EC = ""
  loc_6F2FF2: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6F2FF7: from_stack_1v = Proc_162_193_5DCDA0()
  loc_6F2FFC: ImpAdLdI4 MemVar_74BEB0
  loc_6F2FFF: FLdPr Me
  loc_6F3002: MemStStrCopy
  loc_6F3006: FLdPr Me
  loc_6F3009: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_6F300C: ImpAdCallFPR4 Proc_101_3_662098()
  loc_6F3011: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_6F3016: FLdI2 var_BA
  loc_6F3019: BranchF loc_6F3021
  loc_6F301C: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6F3021: FLdPrThis
  loc_6F3022: VCallAd Control_ID_CrystalReport1
  loc_6F3025: FStAdFunc var_154
  loc_6F3028: FLdPr var_154
  loc_6F302B: LateIdLdVar var_EC DispID_65 0
  loc_6F3032: CI2Var
  loc_6F3033: LitI2_Byte 0
  loc_6F3035: EqI2
  loc_6F3036: FFree1Ad var_154
  loc_6F3039: FFree1Var var_EC = ""
  loc_6F303C: BranchF loc_6F3047
  loc_6F303F: ImpAdCallFPR4 DoEvents()
  loc_6F3044: Branch loc_6F3021
  loc_6F3047: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6F304C: LitVar_FALSE
  loc_6F3050: PopAdLdVar
  loc_6F3051: FLdPrThis
  loc_6F3052: VCallAd Control_ID_PanelCierres
  loc_6F3055: FStAdFunc var_154
  loc_6F3058: FLdPr var_154
  loc_6F305B: LateIdSt
  loc_6F3060: FFree1Ad var_154
  loc_6F3063: LitI2_Byte &HFF
  loc_6F3065: FLdPrThis
  loc_6F3066: VCallAd Control_ID_Reloj
  loc_6F3069: FStAdFunc var_154
  loc_6F306C: FLdPr var_154
  loc_6F306F: Me.Enabled = from_stack_1b
  loc_6F3074: FFree1Ad var_154
  loc_6F3077: LitI2_Byte 0
  loc_6F3079: ImpAdStI2 MemVar_74C6E4
  loc_6F307C: ExitProcHresult
  loc_6F307D: LitI4 &HC8
  loc_6F3082: ImpAdCallFPR4 Sleep()
  loc_6F3087: SetLastSystemError
  loc_6F3088: Branch loc_6F24F9
  loc_6F308B: LitI2_Byte &HFF
  loc_6F308D: FLdPrThis
  loc_6F308E: VCallAd Control_ID_Reloj
  loc_6F3091: FStAdFunc var_154
  loc_6F3094: FLdPr var_154
  loc_6F3097: Me.Enabled = from_stack_1b
  loc_6F309C: FFree1Ad var_154
  loc_6F309F: ExitProcHresult
  loc_6F30A0: FLdRfVar var_160
  loc_6F30A3: ImpAdCallI2 Err 'rtcErrObj
  loc_6F30A8: FStAdFunc var_154
  loc_6F30AB: FLdPr var_154
  loc_6F30AE:  = Err.Number
  loc_6F30B3: ILdRf var_160
  loc_6F30B6: FStR4 var_228
  loc_6F30B9: FFree1Ad var_154
  loc_6F30BC: ILdRf var_228
  loc_6F30BF: LitI4 &H5041
  loc_6F30C4: EqI4
  loc_6F30C5: BranchF loc_6F30EA
  loc_6F30C8: LitI2_Byte &HFF
  loc_6F30CA: FLdPrThis
  loc_6F30CB: VCallAd Control_ID_Reloj
  loc_6F30CE: FStAdFunc var_154
  loc_6F30D1: FLdPr var_154
  loc_6F30D4: Me.Enabled = from_stack_1b
  loc_6F30D9: FFree1Ad var_154
  loc_6F30DC: LitI2_Byte 0
  loc_6F30DE: ImpAdStI2 MemVar_74C6E4
  loc_6F30E1: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6F30E6: ExitProcHresult
  loc_6F30E7: Branch loc_6F3109
  loc_6F30EA: LitI2_Byte &HFF
  loc_6F30EC: FLdPrThis
  loc_6F30ED: VCallAd Control_ID_Reloj
  loc_6F30F0: FStAdFunc var_154
  loc_6F30F3: FLdPr var_154
  loc_6F30F6: Me.Enabled = from_stack_1b
  loc_6F30FB: FFree1Ad var_154
  loc_6F30FE: LitI2_Byte 0
  loc_6F3100: ImpAdStI2 MemVar_74C6E4
  loc_6F3103: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_6F3108: ExitProcHresult
  loc_6F3109: ExitProcHresult
End Sub

Private Sub Shift_in_Progress_Click() '69CCF0
  'Data Table: 460894
  loc_69C690: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69C695: LitI2_Byte 5
  loc_69C697: PopTmpLdAd2 var_BA
  loc_69C69A: ImpAdCallI2 Proc_94_7_603DD0()
  loc_69C69F: NotI4
  loc_69C6A0: BranchF loc_69C6A4
  loc_69C6A3: ExitProcHresult
  loc_69C6A4: FLdRfVar var_C2
  loc_69C6A7: FLdRfVar var_A2
  loc_69C6AA: LitI2_Byte 0
  loc_69C6AC: PopTmpLdAd2 var_BA
  loc_69C6AF: FLdRfVar var_C0
  loc_69C6B2: ImpAdLdRf MemVar_74C760
  loc_69C6B5: NewIfNullPr Formx
  loc_69C6B8: from_stack_1v = Formx.global_4589716Get()
  loc_69C6BD: FLdPr var_C0
  loc_69C6C0:  = Formx.Enabled
  loc_69C6C5: FLdI2 var_C2
  loc_69C6C8: NotI4
  loc_69C6C9: FFree1Ad var_C0
  loc_69C6CC: BranchF loc_69C6E6
  loc_69C6CF: FLdRfVar var_D4
  loc_69C6D2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69C6D7: FLdRfVar var_D4
  loc_69C6DA: CBoolVarNull
  loc_69C6DC: FFree1Var var_D4 = ""
  loc_69C6DF: BranchF loc_69C6E3
  loc_69C6E2: ExitProcHresult
  loc_69C6E3: Branch loc_69C6A4
  loc_69C6E6: LitI2_Byte 0
  loc_69C6E8: FLdPrThis
  loc_69C6E9: VCallAd Control_ID_Reloj
  loc_69C6EC: FStAdFunc var_C0
  loc_69C6EF: FLdPr var_C0
  loc_69C6F2: Me.Enabled = from_stack_1b
  loc_69C6F7: FFree1Ad var_C0
  loc_69C6FA: FLdUI1
  loc_69C6FE: CI2UI1
  loc_69C700: LitI2_Byte 0
  loc_69C702: GtI2
  loc_69C703: BranchF loc_69C74C
  loc_69C706: LitVar_FALSE
  loc_69C70A: PopAdLdVar
  loc_69C70B: FLdPrThis
  loc_69C70C: VCallAd Control_ID_PanelCierres
  loc_69C70F: FStAdFunc var_C0
  loc_69C712: FLdPr var_C0
  loc_69C715: LateIdSt
  loc_69C71A: FFree1Ad var_C0
  loc_69C71D: FLdRfVar var_D4
  loc_69C720: FLdRfVar var_A2
  loc_69C723: LitStr "T"
  loc_69C726: FStStrCopy var_E8
  loc_69C729: FLdRfVar var_E8
  loc_69C72C: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_69C731: FFree1Str var_E8
  loc_69C734: FFree1Var var_D4 = ""
  loc_69C737: LitI2_Byte &HFF
  loc_69C739: FLdPrThis
  loc_69C73A: VCallAd Control_ID_Reloj
  loc_69C73D: FStAdFunc var_C0
  loc_69C740: FLdPr var_C0
  loc_69C743: Me.Enabled = from_stack_1b
  loc_69C748: FFree1Ad var_C0
  loc_69C74B: ExitProcHresult
  loc_69C74C: LitVar_TRUE var_E4
  loc_69C74F: PopAdLdVar
  loc_69C750: FLdPrThis
  loc_69C751: VCallAd Control_ID_PanelCierres
  loc_69C754: FStAdFunc var_C0
  loc_69C757: FLdPr var_C0
  loc_69C75A: LateIdSt
  loc_69C75F: FFree1Ad var_C0
  loc_69C762: FLdPr Me
  loc_69C765: MemLdStr global_7432
  loc_69C768: CVarStr var_E4
  loc_69C76B: PopAdLdVar
  loc_69C76C: FLdPrThis
  loc_69C76D: VCallAd Control_ID_PanelCierres
  loc_69C770: FStAdFunc var_C0
  loc_69C773: FLdPr var_C0
  loc_69C776: LateIdSt
  loc_69C77B: FFree1Ad var_C0
  loc_69C77E: FLdRfVar var_C2
  loc_69C781: FLdRfVar var_A0
  loc_69C784: CVarRef
  loc_69C789: LitI2_Byte &HFF
  loc_69C78B: PopTmpLdAd2 var_BA
  loc_69C78E: LitStr "T"
  loc_69C791: FStStrCopy var_E8
  loc_69C794: FLdRfVar var_E8
  loc_69C797: FLdRfVar var_C0
  loc_69C79A: ImpAdLdRf MemVar_74C760
  loc_69C79D: NewIfNullPr Formx
  loc_69C7A0: from_stack_1v = Formx.global_4589716Get()
  loc_69C7A5: FLdPr var_C0
  loc_69C7A8: Formx.FontBold = from_stack_1b
  loc_69C7AD: FLdI2 var_C2
  loc_69C7B0: NotI4
  loc_69C7B1: FFree1Str var_E8
  loc_69C7B4: FFree1Ad var_C0
  loc_69C7B7: BranchF loc_69C7FC
  loc_69C7BA: FLdRfVar var_D4
  loc_69C7BD: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69C7C2: FLdRfVar var_D4
  loc_69C7C5: CBoolVarNull
  loc_69C7C7: FFree1Var var_D4 = ""
  loc_69C7CA: BranchF loc_69C7F9
  loc_69C7CD: LitVar_FALSE
  loc_69C7D1: PopAdLdVar
  loc_69C7D2: FLdPrThis
  loc_69C7D3: VCallAd Control_ID_PanelCierres
  loc_69C7D6: FStAdFunc var_C0
  loc_69C7D9: FLdPr var_C0
  loc_69C7DC: LateIdSt
  loc_69C7E1: FFree1Ad var_C0
  loc_69C7E4: LitI2_Byte &HFF
  loc_69C7E6: FLdPrThis
  loc_69C7E7: VCallAd Control_ID_Reloj
  loc_69C7EA: FStAdFunc var_C0
  loc_69C7ED: FLdPr var_C0
  loc_69C7F0: Me.Enabled = from_stack_1b
  loc_69C7F5: FFree1Ad var_C0
  loc_69C7F8: ExitProcHresult
  loc_69C7F9: Branch loc_69C77E
  loc_69C7FC: FLdRfVar var_A0
  loc_69C7FF: CVarRef
  loc_69C804: FLdRfVar var_D4
  loc_69C807: ImpAdCallFPR4  = Trim()
  loc_69C80C: FLdRfVar var_D4
  loc_69C80F: CStrVarTmp
  loc_69C810: FStStr var_A0
  loc_69C813: FFree1Var var_D4 = ""
  loc_69C816: ILdRf var_A0
  loc_69C819: FnLenStr
  loc_69C81A: LitI4 2
  loc_69C81F: LtI4
  loc_69C820: BranchF loc_69C87E
  loc_69C823: LitVar_Missing var_128
  loc_69C826: LitVar_Missing var_D4
  loc_69C829: ImpAdLdRf MemVar_74BF24
  loc_69C82C: CVarRef
  loc_69C831: LitI4 0
  loc_69C836: FLdPr Me
  loc_69C839: MemLdRfVar from_stack_1.global_7436
  loc_69C83C: CVarRef
  loc_69C841: ImpAdCallI2 MsgBox(, , , , )
  loc_69C846: CBoolI4
  loc_69C848: FFreeVar var_D4 = ""
  loc_69C84F: BranchF loc_69C87E
  loc_69C852: LitVar_FALSE
  loc_69C856: PopAdLdVar
  loc_69C857: FLdPrThis
  loc_69C858: VCallAd Control_ID_PanelCierres
  loc_69C85B: FStAdFunc var_C0
  loc_69C85E: FLdPr var_C0
  loc_69C861: LateIdSt
  loc_69C866: FFree1Ad var_C0
  loc_69C869: LitI2_Byte &HFF
  loc_69C86B: FLdPrThis
  loc_69C86C: VCallAd Control_ID_Reloj
  loc_69C86F: FStAdFunc var_C0
  loc_69C872: FLdPr var_C0
  loc_69C875: Me.Enabled = from_stack_1b
  loc_69C87A: FFree1Ad var_C0
  loc_69C87D: ExitProcHresult
  loc_69C87E: FLdRfVar var_B4
  loc_69C881: FLdRfVar var_A0
  loc_69C884: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69C889: FLdRfVar var_C2
  loc_69C88C: FLdRfVar var_A0
  loc_69C88F: CVarRef
  loc_69C894: LitI2_Byte 0
  loc_69C896: PopTmpLdAd2 var_BA
  loc_69C899: LitStr "T"
  loc_69C89C: FStStrCopy var_E8
  loc_69C89F: FLdRfVar var_E8
  loc_69C8A2: FLdRfVar var_C0
  loc_69C8A5: ImpAdLdRf MemVar_74C760
  loc_69C8A8: NewIfNullPr Formx
  loc_69C8AB: from_stack_1v = Formx.global_4589716Get()
  loc_69C8B0: FLdPr var_C0
  loc_69C8B3: Formx.FontBold = from_stack_1b
  loc_69C8B8: FLdI2 var_C2
  loc_69C8BB: NotI4
  loc_69C8BC: FFree1Str var_E8
  loc_69C8BF: FFree1Ad var_C0
  loc_69C8C2: BranchF loc_69C907
  loc_69C8C5: FLdRfVar var_D4
  loc_69C8C8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69C8CD: FLdRfVar var_D4
  loc_69C8D0: CBoolVarNull
  loc_69C8D2: FFree1Var var_D4 = ""
  loc_69C8D5: BranchF loc_69C904
  loc_69C8D8: LitVar_FALSE
  loc_69C8DC: PopAdLdVar
  loc_69C8DD: FLdPrThis
  loc_69C8DE: VCallAd Control_ID_PanelCierres
  loc_69C8E1: FStAdFunc var_C0
  loc_69C8E4: FLdPr var_C0
  loc_69C8E7: LateIdSt
  loc_69C8EC: FFree1Ad var_C0
  loc_69C8EF: LitI2_Byte &HFF
  loc_69C8F1: FLdPrThis
  loc_69C8F2: VCallAd Control_ID_Reloj
  loc_69C8F5: FStAdFunc var_C0
  loc_69C8F8: FLdPr var_C0
  loc_69C8FB: Me.Enabled = from_stack_1b
  loc_69C900: FFree1Ad var_C0
  loc_69C903: ExitProcHresult
  loc_69C904: Branch loc_69C889
  loc_69C907: FLdRfVar var_B8
  loc_69C90A: FLdRfVar var_A0
  loc_69C90D: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69C912: LitVar_FALSE
  loc_69C916: PopAdLdVar
  loc_69C917: FLdPrThis
  loc_69C918: VCallAd Control_ID_PanelCierres
  loc_69C91B: FStAdFunc var_C0
  loc_69C91E: FLdPr var_C0
  loc_69C921: LateIdSt
  loc_69C926: FFree1Ad var_C0
  loc_69C929: FLdRfVar var_E8
  loc_69C92C: FLdRfVar var_C0
  loc_69C92F: ImpAdLdRf MemVar_7520D4
  loc_69C932: NewIfNullPr Global
  loc_69C935:  = Global.App
  loc_69C93A: FLdPr var_C0
  loc_69C93D:  = App.Path
  loc_69C942: FLdRfVar var_AC
  loc_69C945: FLdRfVar var_A8
  loc_69C948: LitI2_Byte &HFF
  loc_69C94A: PopTmpLdAd2 var_BA
  loc_69C94D: ILdRf var_E8
  loc_69C950: LitStr "\reporte.mdb"
  loc_69C953: ConcatStr
  loc_69C954: PopTmpLdAdStr
  loc_69C958: FLdRfVar var_B4
  loc_69C95B: LitStr "T"
  loc_69C95E: FStStrCopy var_12C
  loc_69C961: FLdRfVar var_12C
  loc_69C964: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69C969: NotI4
  loc_69C96A: FFreeStr var_E8 = "": var_12C = ""
  loc_69C973: FFree1Ad var_C0
  loc_69C976: BranchF loc_69C9DB
  loc_69C979: LitVar_Missing var_128
  loc_69C97C: LitVar_Missing var_D4
  loc_69C97F: ImpAdLdRf MemVar_74BF24
  loc_69C982: CVarRef
  loc_69C987: LitI4 5
  loc_69C98C: FLdPr Me
  loc_69C98F: MemLdRfVar from_stack_1.global_7500
  loc_69C992: CVarRef
  loc_69C997: ImpAdCallI2 MsgBox(, , , , )
  loc_69C99C: LitI4 2
  loc_69C9A1: EqI4
  loc_69C9A2: FFreeVar var_D4 = ""
  loc_69C9A9: BranchF loc_69C9D8
  loc_69C9AC: LitVar_FALSE
  loc_69C9B0: PopAdLdVar
  loc_69C9B1: FLdPrThis
  loc_69C9B2: VCallAd Control_ID_PanelCierres
  loc_69C9B5: FStAdFunc var_C0
  loc_69C9B8: FLdPr var_C0
  loc_69C9BB: LateIdSt
  loc_69C9C0: FFree1Ad var_C0
  loc_69C9C3: LitI2_Byte &HFF
  loc_69C9C5: FLdPrThis
  loc_69C9C6: VCallAd Control_ID_Reloj
  loc_69C9C9: FStAdFunc var_C0
  loc_69C9CC: FLdPr var_C0
  loc_69C9CF: Me.Enabled = from_stack_1b
  loc_69C9D4: FFree1Ad var_C0
  loc_69C9D7: ExitProcHresult
  loc_69C9D8: Branch loc_69C929
  loc_69C9DB: FLdRfVar var_E8
  loc_69C9DE: FLdRfVar var_C0
  loc_69C9E1: ImpAdLdRf MemVar_7520D4
  loc_69C9E4: NewIfNullPr Global
  loc_69C9E7:  = Global.App
  loc_69C9EC: FLdPr var_C0
  loc_69C9EF:  = App.Path
  loc_69C9F4: FLdRfVar var_AC
  loc_69C9F7: FLdRfVar var_A8
  loc_69C9FA: LitI2_Byte 0
  loc_69C9FC: PopTmpLdAd2 var_BA
  loc_69C9FF: ILdRf var_E8
  loc_69CA02: LitStr "\reporte.mdb"
  loc_69CA05: ConcatStr
  loc_69CA06: PopTmpLdAdStr
  loc_69CA0A: FLdRfVar var_B8
  loc_69CA0D: LitStr "T"
  loc_69CA10: FStStrCopy var_12C
  loc_69CA13: FLdRfVar var_12C
  loc_69CA16: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69CA1B: NotI4
  loc_69CA1C: FFreeStr var_E8 = "": var_12C = ""
  loc_69CA25: FFree1Ad var_C0
  loc_69CA28: BranchF loc_69CA8D
  loc_69CA2B: LitVar_Missing var_128
  loc_69CA2E: LitVar_Missing var_D4
  loc_69CA31: ImpAdLdRf MemVar_74BF24
  loc_69CA34: CVarRef
  loc_69CA39: LitI4 5
  loc_69CA3E: FLdPr Me
  loc_69CA41: MemLdRfVar from_stack_1.global_7500
  loc_69CA44: CVarRef
  loc_69CA49: ImpAdCallI2 MsgBox(, , , , )
  loc_69CA4E: LitI4 2
  loc_69CA53: EqI4
  loc_69CA54: FFreeVar var_D4 = ""
  loc_69CA5B: BranchF loc_69CA8A
  loc_69CA5E: LitVar_FALSE
  loc_69CA62: PopAdLdVar
  loc_69CA63: FLdPrThis
  loc_69CA64: VCallAd Control_ID_PanelCierres
  loc_69CA67: FStAdFunc var_C0
  loc_69CA6A: FLdPr var_C0
  loc_69CA6D: LateIdSt
  loc_69CA72: FFree1Ad var_C0
  loc_69CA75: LitI2_Byte &HFF
  loc_69CA77: FLdPrThis
  loc_69CA78: VCallAd Control_ID_Reloj
  loc_69CA7B: FStAdFunc var_C0
  loc_69CA7E: FLdPr var_C0
  loc_69CA81: Me.Enabled = from_stack_1b
  loc_69CA86: FFree1Ad var_C0
  loc_69CA89: ExitProcHresult
  loc_69CA8A: Branch loc_69C9DB
  loc_69CA8D: FLdPr Me
  loc_69CA90: MemLdStr global_7348
  loc_69CA93: CVarStr var_E4
  loc_69CA96: PopAdLdVar
  loc_69CA97: FLdPrThis
  loc_69CA98: VCallAd Control_ID_PanelCierres
  loc_69CA9B: FStAdFunc var_C0
  loc_69CA9E: FLdPr var_C0
  loc_69CAA1: LateIdSt
  loc_69CAA6: FFree1Ad var_C0
  loc_69CAA9: LitVarI4
  loc_69CAB1: PopAdLdVar
  loc_69CAB2: FLdPrThis
  loc_69CAB3: VCallAd Control_ID_CrystalReport1
  loc_69CAB6: FStAdFunc var_C0
  loc_69CAB9: FLdPr var_C0
  loc_69CABC: LateIdSt
  loc_69CAC1: FFree1Ad var_C0
  loc_69CAC4: FLdRfVar var_E8
  loc_69CAC7: FLdRfVar var_C0
  loc_69CACA: ImpAdLdRf MemVar_7520D4
  loc_69CACD: NewIfNullPr Global
  loc_69CAD0:  = Global.App
  loc_69CAD5: FLdPr var_C0
  loc_69CAD8:  = App.Path
  loc_69CADD: FLdRfVar var_134
  loc_69CAE0: LitVar_Missing var_108
  loc_69CAE3: PopAdLdVar
  loc_69CAE4: LitVar_Missing var_F8
  loc_69CAE7: PopAdLdVar
  loc_69CAE8: LitVar_TRUE var_E4
  loc_69CAEB: PopAdLdVar
  loc_69CAEC: ILdRf var_E8
  loc_69CAEF: LitStr "\reporte.mdb"
  loc_69CAF2: ConcatStr
  loc_69CAF3: FStStrNoPop var_12C
  loc_69CAF6: ImpAdLdRf MemVar_752164
  loc_69CAF9: NewIfNullPr Me
  loc_69CAFC: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69CB01: FLdZeroAd var_134
  loc_69CB04: FStAdFunc var_88
  loc_69CB07: FFreeStr var_E8 = ""
  loc_69CB0E: FFree1Ad var_C0
  loc_69CB11: FLdRfVar var_C0
  loc_69CB14: LitVar_Missing var_108
  loc_69CB17: PopAdLdVar
  loc_69CB18: LitVar_Missing var_F8
  loc_69CB1B: PopAdLdVar
  loc_69CB1C: LitVar_Missing var_E4
  loc_69CB1F: PopAdLdVar
  loc_69CB20: LitStr "select ReportVer from Header"
  loc_69CB23: FLdPr var_88
  loc_69CB26: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69CB2B: FLdZeroAd var_C0
  loc_69CB2E: FStAdFunc var_8C
  loc_69CB31: FLdRfVar var_D4
  loc_69CB34: FLdRfVar var_134
  loc_69CB37: LitVarStr var_E4, "ReportVer"
  loc_69CB3C: PopAdLdVar
  loc_69CB3D: FLdRfVar var_C0
  loc_69CB40: FLdPr var_8C
  loc_69CB43:  = Me.Fields
  loc_69CB48: FLdPr var_C0
  loc_69CB4B: from_stack_2 = Me.Item(from_stack_1)
  loc_69CB50: FLdPr var_134
  loc_69CB53:  = Me.Value
  loc_69CB58: FLdRfVar var_D4
  loc_69CB5B: LitVarStr var_F8, vbNullString
  loc_69CB60: ConcatVar var_128
  loc_69CB64: CStrVarTmp
  loc_69CB65: FStStr var_90
  loc_69CB68: FFreeAd var_C0 = ""
  loc_69CB6F: FFreeVar var_D4 = ""
  loc_69CB76: FLdPr var_8C
  loc_69CB79: Me.Close
  loc_69CB7E: LitNothing
  loc_69CB80: CastAd
  loc_69CB83: FStAdFunc var_8C
  loc_69CB86: FLdPr var_88
  loc_69CB89: Me.Close
  loc_69CB8E: LitNothing
  loc_69CB90: CastAd
  loc_69CB93: FStAdFunc var_88
  loc_69CB96: ILdRf var_90
  loc_69CB99: LitStr vbNullString
  loc_69CB9C: EqStr
  loc_69CB9E: BranchF loc_69CBE4
  loc_69CBA1: FLdRfVar var_E8
  loc_69CBA4: FLdRfVar var_C0
  loc_69CBA7: ImpAdLdRf MemVar_7520D4
  loc_69CBAA: NewIfNullPr Global
  loc_69CBAD:  = Global.App
  loc_69CBB2: FLdPr var_C0
  loc_69CBB5:  = App.Path
  loc_69CBBA: ILdRf var_E8
  loc_69CBBD: LitStr "\repo1.rpt"
  loc_69CBC0: ConcatStr
  loc_69CBC1: CVarStr var_D4
  loc_69CBC4: PopAdLdVar
  loc_69CBC5: FLdPrThis
  loc_69CBC6: VCallAd Control_ID_CrystalReport1
  loc_69CBC9: FStAdFunc var_134
  loc_69CBCC: FLdPr var_134
  loc_69CBCF: LateIdSt
  loc_69CBD4: FFree1Str var_E8
  loc_69CBD7: FFreeAd var_C0 = ""
  loc_69CBDE: FFree1Var var_D4 = ""
  loc_69CBE1: Branch loc_69CC2F
  loc_69CBE4: FLdRfVar var_E8
  loc_69CBE7: FLdRfVar var_C0
  loc_69CBEA: ImpAdLdRf MemVar_7520D4
  loc_69CBED: NewIfNullPr Global
  loc_69CBF0:  = Global.App
  loc_69CBF5: FLdPr var_C0
  loc_69CBF8:  = App.Path
  loc_69CBFD: ILdRf var_E8
  loc_69CC00: LitStr "\"
  loc_69CC03: ConcatStr
  loc_69CC04: FStStrNoPop var_12C
  loc_69CC07: ILdRf var_90
  loc_69CC0A: ConcatStr
  loc_69CC0B: CVarStr var_D4
  loc_69CC0E: PopAdLdVar
  loc_69CC0F: FLdPrThis
  loc_69CC10: VCallAd Control_ID_CrystalReport1
  loc_69CC13: FStAdFunc var_134
  loc_69CC16: FLdPr var_134
  loc_69CC19: LateIdSt
  loc_69CC1E: FFreeStr var_E8 = ""
  loc_69CC25: FFreeAd var_C0 = ""
  loc_69CC2C: FFree1Var var_D4 = ""
  loc_69CC2F: ImpAdLdI4 MemVar_74BEB0
  loc_69CC32: FLdPr Me
  loc_69CC35: MemStStrCopy
  loc_69CC39: FLdPr Me
  loc_69CC3C: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_69CC3F: ImpAdCallFPR4 Proc_101_3_662098()
  loc_69CC44: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_69CC49: LitVarI2 var_D4, 1
  loc_69CC4E: LitI4 4
  loc_69CC53: ImpAdLdI4 MemVar_74BEAC
  loc_69CC56: ImpAdCallI2 Mid$(, , )
  loc_69CC5B: FStStrNoPop var_E8
  loc_69CC5E: LitStr "1"
  loc_69CC61: EqStr
  loc_69CC63: FFree1Str var_E8
  loc_69CC66: FFree1Var var_D4 = ""
  loc_69CC69: BranchF loc_69CC87
  loc_69CC6C: LitVar_TRUE var_E4
  loc_69CC6F: PopAdLdVar
  loc_69CC70: ImpAdLdRf MemVar_74C760
  loc_69CC73: NewIfNullPr Formx
  loc_69CC76: VCallAd Control_ID_CrystalReport1
  loc_69CC79: FStAdFunc var_C0
  loc_69CC7C: FLdPr var_C0
  loc_69CC7F: LateIdSt
  loc_69CC84: FFree1Ad var_C0
  loc_69CC87: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_69CC8C: LitI2_Byte 0
  loc_69CC8E: PopTmpLdAd2 var_BA
  loc_69CC91: ImpAdCallFPR4 Proc_87_1_630780()
  loc_69CC96: FLdPrThis
  loc_69CC97: VCallAd Control_ID_CrystalReport1
  loc_69CC9A: FStAdFunc var_C0
  loc_69CC9D: FLdPr var_C0
  loc_69CCA0: LateIdLdVar var_D4 DispID_65 0
  loc_69CCA7: CI2Var
  loc_69CCA8: LitI2_Byte 0
  loc_69CCAA: EqI2
  loc_69CCAB: FFree1Ad var_C0
  loc_69CCAE: FFree1Var var_D4 = ""
  loc_69CCB1: BranchF loc_69CCBC
  loc_69CCB4: ImpAdCallFPR4 DoEvents()
  loc_69CCB9: Branch loc_69CC96
  loc_69CCBC: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69CCC1: LitI2_Byte &HFF
  loc_69CCC3: FLdPrThis
  loc_69CCC4: VCallAd Control_ID_Reloj
  loc_69CCC7: FStAdFunc var_C0
  loc_69CCCA: FLdPr var_C0
  loc_69CCCD: Formx.Timer.Enabled = from_stack_1b
  loc_69CCD2: FFree1Ad var_C0
  loc_69CCD5: LitVar_FALSE
  loc_69CCD9: PopAdLdVar
  loc_69CCDA: FLdPrThis
  loc_69CCDB: VCallAd Control_ID_PanelCierres
  loc_69CCDE: FStAdFunc var_C0
  loc_69CCE1: FLdPr var_C0
  loc_69CCE4: LateIdSt
  loc_69CCE9: FFree1Ad var_C0
  loc_69CCEC: ExitProcHresult
End Sub

Private Sub Day_in_progress_Click() '69C614
  'Data Table: 460894
  loc_69BFB8: OnErrorGoto loc_69C5DE
  loc_69BFBB: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69BFC0: LitI2_Byte 6
  loc_69BFC2: PopTmpLdAd2 var_BA
  loc_69BFC5: ImpAdCallI2 Proc_94_7_603DD0()
  loc_69BFCA: NotI4
  loc_69BFCB: BranchF loc_69BFCF
  loc_69BFCE: ExitProcHresult
  loc_69BFCF: LitI2_Byte 0
  loc_69BFD1: FLdPrThis
  loc_69BFD2: VCallAd Control_ID_Reloj
  loc_69BFD5: FStAdFunc var_C0
  loc_69BFD8: FLdPr var_C0
  loc_69BFDB: Me.Enabled = from_stack_1b
  loc_69BFE0: FFree1Ad var_C0
  loc_69BFE3: FLdRfVar var_C2
  loc_69BFE6: FLdRfVar var_A2
  loc_69BFE9: LitI2_Byte 0
  loc_69BFEB: PopTmpLdAd2 var_BA
  loc_69BFEE: FLdRfVar var_C0
  loc_69BFF1: ImpAdLdRf MemVar_74C760
  loc_69BFF4: NewIfNullPr Formx
  loc_69BFF7: from_stack_1v = Formx.global_4589716Get()
  loc_69BFFC: FLdPr var_C0
  loc_69BFFF: Formx.Enabled = from_stack_1b
  loc_69C004: FLdI2 var_C2
  loc_69C007: NotI4
  loc_69C008: FFree1Ad var_C0
  loc_69C00B: BranchF loc_69C025
  loc_69C00E: FLdRfVar var_D4
  loc_69C011: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69C016: FLdRfVar var_D4
  loc_69C019: CBoolVarNull
  loc_69C01B: FFree1Var var_D4 = ""
  loc_69C01E: BranchF loc_69C022
  loc_69C021: ExitProcHresult
  loc_69C022: Branch loc_69BFE3
  loc_69C025: FLdUI1
  loc_69C029: CI2UI1
  loc_69C02B: LitI2_Byte 0
  loc_69C02D: GtI2
  loc_69C02E: BranchF loc_69C063
  loc_69C031: LitVar_FALSE
  loc_69C035: PopAdLdVar
  loc_69C036: FLdPrThis
  loc_69C037: VCallAd Control_ID_PanelCierres
  loc_69C03A: FStAdFunc var_C0
  loc_69C03D: FLdPr var_C0
  loc_69C040: LateIdSt
  loc_69C045: FFree1Ad var_C0
  loc_69C048: FLdRfVar var_D4
  loc_69C04B: FLdRfVar var_A2
  loc_69C04E: LitStr "D"
  loc_69C051: FStStrCopy var_E8
  loc_69C054: FLdRfVar var_E8
  loc_69C057: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_69C05C: FFree1Str var_E8
  loc_69C05F: FFree1Var var_D4 = ""
  loc_69C062: ExitProcHresult
  loc_69C063: LitVar_TRUE var_E4
  loc_69C066: PopAdLdVar
  loc_69C067: FLdPrThis
  loc_69C068: VCallAd Control_ID_PanelCierres
  loc_69C06B: FStAdFunc var_C0
  loc_69C06E: FLdPr var_C0
  loc_69C071: LateIdSt
  loc_69C076: FFree1Ad var_C0
  loc_69C079: FLdPr Me
  loc_69C07C: MemLdStr global_7440
  loc_69C07F: CVarStr var_E4
  loc_69C082: PopAdLdVar
  loc_69C083: FLdPrThis
  loc_69C084: VCallAd Control_ID_PanelCierres
  loc_69C087: FStAdFunc var_C0
  loc_69C08A: FLdPr var_C0
  loc_69C08D: LateIdSt
  loc_69C092: FFree1Ad var_C0
  loc_69C095: FLdRfVar var_C2
  loc_69C098: FLdRfVar var_A0
  loc_69C09B: CVarRef
  loc_69C0A0: LitI2_Byte &HFF
  loc_69C0A2: PopTmpLdAd2 var_BA
  loc_69C0A5: LitStr "D"
  loc_69C0A8: FStStrCopy var_E8
  loc_69C0AB: FLdRfVar var_E8
  loc_69C0AE: FLdRfVar var_C0
  loc_69C0B1: ImpAdLdRf MemVar_74C760
  loc_69C0B4: NewIfNullPr Formx
  loc_69C0B7: from_stack_1v = Formx.global_4589716Get()
  loc_69C0BC: FLdPr var_C0
  loc_69C0BF: Formx.FontBold = from_stack_1b
  loc_69C0C4: FLdI2 var_C2
  loc_69C0C7: NotI4
  loc_69C0C8: FFree1Str var_E8
  loc_69C0CB: FFree1Ad var_C0
  loc_69C0CE: BranchF loc_69C113
  loc_69C0D1: FLdRfVar var_D4
  loc_69C0D4: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69C0D9: FLdRfVar var_D4
  loc_69C0DC: CBoolVarNull
  loc_69C0DE: FFree1Var var_D4 = ""
  loc_69C0E1: BranchF loc_69C110
  loc_69C0E4: LitVar_FALSE
  loc_69C0E8: PopAdLdVar
  loc_69C0E9: FLdPrThis
  loc_69C0EA: VCallAd Control_ID_PanelCierres
  loc_69C0ED: FStAdFunc var_C0
  loc_69C0F0: FLdPr var_C0
  loc_69C0F3: LateIdSt
  loc_69C0F8: FFree1Ad var_C0
  loc_69C0FB: LitI2_Byte &HFF
  loc_69C0FD: FLdPrThis
  loc_69C0FE: VCallAd Control_ID_Reloj
  loc_69C101: FStAdFunc var_C0
  loc_69C104: FLdPr var_C0
  loc_69C107: Me.Enabled = from_stack_1b
  loc_69C10C: FFree1Ad var_C0
  loc_69C10F: ExitProcHresult
  loc_69C110: Branch loc_69C095
  loc_69C113: FLdRfVar var_A0
  loc_69C116: CVarRef
  loc_69C11B: FLdRfVar var_D4
  loc_69C11E: ImpAdCallFPR4  = Trim()
  loc_69C123: FLdRfVar var_D4
  loc_69C126: CStrVarTmp
  loc_69C127: FStStr var_A0
  loc_69C12A: FFree1Var var_D4 = ""
  loc_69C12D: ILdRf var_A0
  loc_69C130: FnLenStr
  loc_69C131: LitI4 2
  loc_69C136: LtI4
  loc_69C137: BranchF loc_69C195
  loc_69C13A: LitVar_Missing var_128
  loc_69C13D: LitVar_Missing var_D4
  loc_69C140: ImpAdLdRf MemVar_74BF24
  loc_69C143: CVarRef
  loc_69C148: LitI4 0
  loc_69C14D: FLdPr Me
  loc_69C150: MemLdRfVar from_stack_1.global_7444
  loc_69C153: CVarRef
  loc_69C158: ImpAdCallI2 MsgBox(, , , , )
  loc_69C15D: CBoolI4
  loc_69C15F: FFreeVar var_D4 = ""
  loc_69C166: BranchF loc_69C195
  loc_69C169: LitVar_FALSE
  loc_69C16D: PopAdLdVar
  loc_69C16E: FLdPrThis
  loc_69C16F: VCallAd Control_ID_PanelCierres
  loc_69C172: FStAdFunc var_C0
  loc_69C175: FLdPr var_C0
  loc_69C178: LateIdSt
  loc_69C17D: FFree1Ad var_C0
  loc_69C180: LitI2_Byte &HFF
  loc_69C182: FLdPrThis
  loc_69C183: VCallAd Control_ID_Reloj
  loc_69C186: FStAdFunc var_C0
  loc_69C189: FLdPr var_C0
  loc_69C18C: Me.Enabled = from_stack_1b
  loc_69C191: FFree1Ad var_C0
  loc_69C194: ExitProcHresult
  loc_69C195: FLdRfVar var_B4
  loc_69C198: FLdRfVar var_A0
  loc_69C19B: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69C1A0: FLdRfVar var_C2
  loc_69C1A3: FLdRfVar var_A0
  loc_69C1A6: CVarRef
  loc_69C1AB: LitI2_Byte 0
  loc_69C1AD: PopTmpLdAd2 var_BA
  loc_69C1B0: LitStr "D"
  loc_69C1B3: FStStrCopy var_E8
  loc_69C1B6: FLdRfVar var_E8
  loc_69C1B9: FLdRfVar var_C0
  loc_69C1BC: ImpAdLdRf MemVar_74C760
  loc_69C1BF: NewIfNullPr Formx
  loc_69C1C2: from_stack_1v = Formx.global_4589716Get()
  loc_69C1C7: FLdPr var_C0
  loc_69C1CA: Formx.FontBold = from_stack_1b
  loc_69C1CF: FLdI2 var_C2
  loc_69C1D2: NotI4
  loc_69C1D3: FFree1Str var_E8
  loc_69C1D6: FFree1Ad var_C0
  loc_69C1D9: BranchF loc_69C21E
  loc_69C1DC: FLdRfVar var_D4
  loc_69C1DF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69C1E4: FLdRfVar var_D4
  loc_69C1E7: CBoolVarNull
  loc_69C1E9: FFree1Var var_D4 = ""
  loc_69C1EC: BranchF loc_69C21B
  loc_69C1EF: LitVar_FALSE
  loc_69C1F3: PopAdLdVar
  loc_69C1F4: FLdPrThis
  loc_69C1F5: VCallAd Control_ID_PanelCierres
  loc_69C1F8: FStAdFunc var_C0
  loc_69C1FB: FLdPr var_C0
  loc_69C1FE: LateIdSt
  loc_69C203: FFree1Ad var_C0
  loc_69C206: LitI2_Byte &HFF
  loc_69C208: FLdPrThis
  loc_69C209: VCallAd Control_ID_Reloj
  loc_69C20C: FStAdFunc var_C0
  loc_69C20F: FLdPr var_C0
  loc_69C212: Me.Enabled = from_stack_1b
  loc_69C217: FFree1Ad var_C0
  loc_69C21A: ExitProcHresult
  loc_69C21B: Branch loc_69C1A0
  loc_69C21E: FLdRfVar var_B8
  loc_69C221: FLdRfVar var_A0
  loc_69C224: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69C229: LitVar_FALSE
  loc_69C22D: PopAdLdVar
  loc_69C22E: FLdPrThis
  loc_69C22F: VCallAd Control_ID_PanelCierres
  loc_69C232: FStAdFunc var_C0
  loc_69C235: FLdPr var_C0
  loc_69C238: LateIdSt
  loc_69C23D: FFree1Ad var_C0
  loc_69C240: FLdRfVar var_E8
  loc_69C243: FLdRfVar var_C0
  loc_69C246: ImpAdLdRf MemVar_7520D4
  loc_69C249: NewIfNullPr Global
  loc_69C24C:  = Global.App
  loc_69C251: FLdPr var_C0
  loc_69C254:  = App.Path
  loc_69C259: FLdRfVar var_A8
  loc_69C25C: FLdRfVar var_AC
  loc_69C25F: LitI2_Byte &HFF
  loc_69C261: PopTmpLdAd2 var_BA
  loc_69C264: ILdRf var_E8
  loc_69C267: LitStr "\reporte.mdb"
  loc_69C26A: ConcatStr
  loc_69C26B: PopTmpLdAdStr
  loc_69C26F: FLdRfVar var_B4
  loc_69C272: LitStr "D"
  loc_69C275: FStStrCopy var_12C
  loc_69C278: FLdRfVar var_12C
  loc_69C27B: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69C280: NotI4
  loc_69C281: FFreeStr var_E8 = "": var_12C = ""
  loc_69C28A: FFree1Ad var_C0
  loc_69C28D: BranchF loc_69C2F2
  loc_69C290: LitVar_Missing var_128
  loc_69C293: LitVar_Missing var_D4
  loc_69C296: ImpAdLdRf MemVar_74BF24
  loc_69C299: CVarRef
  loc_69C29E: LitI4 5
  loc_69C2A3: FLdPr Me
  loc_69C2A6: MemLdRfVar from_stack_1.global_7344
  loc_69C2A9: CVarRef
  loc_69C2AE: ImpAdCallI2 MsgBox(, , , , )
  loc_69C2B3: LitI4 2
  loc_69C2B8: EqI4
  loc_69C2B9: FFreeVar var_D4 = ""
  loc_69C2C0: BranchF loc_69C2EF
  loc_69C2C3: LitVar_FALSE
  loc_69C2C7: PopAdLdVar
  loc_69C2C8: FLdPrThis
  loc_69C2C9: VCallAd Control_ID_PanelCierres
  loc_69C2CC: FStAdFunc var_C0
  loc_69C2CF: FLdPr var_C0
  loc_69C2D2: LateIdSt
  loc_69C2D7: FFree1Ad var_C0
  loc_69C2DA: LitI2_Byte &HFF
  loc_69C2DC: FLdPrThis
  loc_69C2DD: VCallAd Control_ID_Reloj
  loc_69C2E0: FStAdFunc var_C0
  loc_69C2E3: FLdPr var_C0
  loc_69C2E6: Me.Enabled = from_stack_1b
  loc_69C2EB: FFree1Ad var_C0
  loc_69C2EE: ExitProcHresult
  loc_69C2EF: Branch loc_69C240
  loc_69C2F2: FLdRfVar var_E8
  loc_69C2F5: FLdRfVar var_C0
  loc_69C2F8: ImpAdLdRf MemVar_7520D4
  loc_69C2FB: NewIfNullPr Global
  loc_69C2FE:  = Global.App
  loc_69C303: FLdPr var_C0
  loc_69C306:  = App.Path
  loc_69C30B: FLdRfVar var_A8
  loc_69C30E: FLdRfVar var_AC
  loc_69C311: LitI2_Byte 0
  loc_69C313: PopTmpLdAd2 var_BA
  loc_69C316: ILdRf var_E8
  loc_69C319: LitStr "\reporte.mdb"
  loc_69C31C: ConcatStr
  loc_69C31D: PopTmpLdAdStr
  loc_69C321: FLdRfVar var_B8
  loc_69C324: LitStr "D"
  loc_69C327: FStStrCopy var_12C
  loc_69C32A: FLdRfVar var_12C
  loc_69C32D: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69C332: NotI4
  loc_69C333: FFreeStr var_E8 = "": var_12C = ""
  loc_69C33C: FFree1Ad var_C0
  loc_69C33F: BranchF loc_69C3A4
  loc_69C342: LitVar_Missing var_128
  loc_69C345: LitVar_Missing var_D4
  loc_69C348: ImpAdLdRf MemVar_74BF24
  loc_69C34B: CVarRef
  loc_69C350: LitI4 5
  loc_69C355: FLdPr Me
  loc_69C358: MemLdRfVar from_stack_1.global_7344
  loc_69C35B: CVarRef
  loc_69C360: ImpAdCallI2 MsgBox(, , , , )
  loc_69C365: LitI4 2
  loc_69C36A: EqI4
  loc_69C36B: FFreeVar var_D4 = ""
  loc_69C372: BranchF loc_69C3A1
  loc_69C375: LitVar_FALSE
  loc_69C379: PopAdLdVar
  loc_69C37A: FLdPrThis
  loc_69C37B: VCallAd Control_ID_PanelCierres
  loc_69C37E: FStAdFunc var_C0
  loc_69C381: FLdPr var_C0
  loc_69C384: LateIdSt
  loc_69C389: FFree1Ad var_C0
  loc_69C38C: LitI2_Byte &HFF
  loc_69C38E: FLdPrThis
  loc_69C38F: VCallAd Control_ID_Reloj
  loc_69C392: FStAdFunc var_C0
  loc_69C395: FLdPr var_C0
  loc_69C398: Me.Enabled = from_stack_1b
  loc_69C39D: FFree1Ad var_C0
  loc_69C3A0: ExitProcHresult
  loc_69C3A1: Branch loc_69C2F2
  loc_69C3A4: FLdPr Me
  loc_69C3A7: MemLdStr global_7348
  loc_69C3AA: CVarStr var_E4
  loc_69C3AD: PopAdLdVar
  loc_69C3AE: FLdPrThis
  loc_69C3AF: VCallAd Control_ID_PanelCierres
  loc_69C3B2: FStAdFunc var_C0
  loc_69C3B5: FLdPr var_C0
  loc_69C3B8: LateIdSt
  loc_69C3BD: FFree1Ad var_C0
  loc_69C3C0: LitVarI4
  loc_69C3C8: PopAdLdVar
  loc_69C3C9: FLdPrThis
  loc_69C3CA: VCallAd Control_ID_CrystalReport1
  loc_69C3CD: FStAdFunc var_C0
  loc_69C3D0: FLdPr var_C0
  loc_69C3D3: LateIdSt
  loc_69C3D8: FFree1Ad var_C0
  loc_69C3DB: FLdRfVar var_E8
  loc_69C3DE: FLdRfVar var_C0
  loc_69C3E1: ImpAdLdRf MemVar_7520D4
  loc_69C3E4: NewIfNullPr Global
  loc_69C3E7:  = Global.App
  loc_69C3EC: FLdPr var_C0
  loc_69C3EF:  = App.Path
  loc_69C3F4: FLdRfVar var_134
  loc_69C3F7: LitVar_Missing var_108
  loc_69C3FA: PopAdLdVar
  loc_69C3FB: LitVar_Missing var_F8
  loc_69C3FE: PopAdLdVar
  loc_69C3FF: LitVar_TRUE var_E4
  loc_69C402: PopAdLdVar
  loc_69C403: ILdRf var_E8
  loc_69C406: LitStr "\reporte.mdb"
  loc_69C409: ConcatStr
  loc_69C40A: FStStrNoPop var_12C
  loc_69C40D: ImpAdLdRf MemVar_752164
  loc_69C410: NewIfNullPr Me
  loc_69C413: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69C418: FLdZeroAd var_134
  loc_69C41B: FStAdFunc var_88
  loc_69C41E: FFreeStr var_E8 = ""
  loc_69C425: FFree1Ad var_C0
  loc_69C428: FLdRfVar var_C0
  loc_69C42B: LitVar_Missing var_108
  loc_69C42E: PopAdLdVar
  loc_69C42F: LitVar_Missing var_F8
  loc_69C432: PopAdLdVar
  loc_69C433: LitVar_Missing var_E4
  loc_69C436: PopAdLdVar
  loc_69C437: LitStr "select ReportVer from Header"
  loc_69C43A: FLdPr var_88
  loc_69C43D: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69C442: FLdZeroAd var_C0
  loc_69C445: FStAdFunc var_8C
  loc_69C448: FLdRfVar var_D4
  loc_69C44B: FLdRfVar var_134
  loc_69C44E: LitVarStr var_E4, "ReportVer"
  loc_69C453: PopAdLdVar
  loc_69C454: FLdRfVar var_C0
  loc_69C457: FLdPr var_8C
  loc_69C45A:  = Me.Fields
  loc_69C45F: FLdPr var_C0
  loc_69C462: from_stack_2 = Me.Item(from_stack_1)
  loc_69C467: FLdPr var_134
  loc_69C46A:  = Me.Value
  loc_69C46F: FLdRfVar var_D4
  loc_69C472: LitVarStr var_F8, vbNullString
  loc_69C477: ConcatVar var_128
  loc_69C47B: CStrVarTmp
  loc_69C47C: FStStr var_90
  loc_69C47F: FFreeAd var_C0 = ""
  loc_69C486: FFreeVar var_D4 = ""
  loc_69C48D: FLdPr var_8C
  loc_69C490: Me.Close
  loc_69C495: LitNothing
  loc_69C497: CastAd
  loc_69C49A: FStAdFunc var_8C
  loc_69C49D: FLdPr var_88
  loc_69C4A0: Me.Close
  loc_69C4A5: LitNothing
  loc_69C4A7: CastAd
  loc_69C4AA: FStAdFunc var_88
  loc_69C4AD: ILdRf var_90
  loc_69C4B0: LitStr vbNullString
  loc_69C4B3: EqStr
  loc_69C4B5: BranchF loc_69C4FB
  loc_69C4B8: FLdRfVar var_E8
  loc_69C4BB: FLdRfVar var_C0
  loc_69C4BE: ImpAdLdRf MemVar_7520D4
  loc_69C4C1: NewIfNullPr Global
  loc_69C4C4:  = Global.App
  loc_69C4C9: FLdPr var_C0
  loc_69C4CC:  = App.Path
  loc_69C4D1: ILdRf var_E8
  loc_69C4D4: LitStr "\repo1.rpt"
  loc_69C4D7: ConcatStr
  loc_69C4D8: CVarStr var_D4
  loc_69C4DB: PopAdLdVar
  loc_69C4DC: FLdPrThis
  loc_69C4DD: VCallAd Control_ID_CrystalReport1
  loc_69C4E0: FStAdFunc var_134
  loc_69C4E3: FLdPr var_134
  loc_69C4E6: LateIdSt
  loc_69C4EB: FFree1Str var_E8
  loc_69C4EE: FFreeAd var_C0 = ""
  loc_69C4F5: FFree1Var var_D4 = ""
  loc_69C4F8: Branch loc_69C546
  loc_69C4FB: FLdRfVar var_E8
  loc_69C4FE: FLdRfVar var_C0
  loc_69C501: ImpAdLdRf MemVar_7520D4
  loc_69C504: NewIfNullPr Global
  loc_69C507:  = Global.App
  loc_69C50C: FLdPr var_C0
  loc_69C50F:  = App.Path
  loc_69C514: ILdRf var_E8
  loc_69C517: LitStr "\"
  loc_69C51A: ConcatStr
  loc_69C51B: FStStrNoPop var_12C
  loc_69C51E: ILdRf var_90
  loc_69C521: ConcatStr
  loc_69C522: CVarStr var_D4
  loc_69C525: PopAdLdVar
  loc_69C526: FLdPrThis
  loc_69C527: VCallAd Control_ID_CrystalReport1
  loc_69C52A: FStAdFunc var_134
  loc_69C52D: FLdPr var_134
  loc_69C530: LateIdSt
  loc_69C535: FFreeStr var_E8 = ""
  loc_69C53C: FFreeAd var_C0 = ""
  loc_69C543: FFree1Var var_D4 = ""
  loc_69C546: ImpAdLdI4 MemVar_74BEB4
  loc_69C549: FLdPr Me
  loc_69C54C: MemStStrCopy
  loc_69C550: FLdPr Me
  loc_69C553: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_69C556: ImpAdCallFPR4 Proc_101_3_662098()
  loc_69C55B: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_69C560: LitVarI2 var_D4, 1
  loc_69C565: LitI4 4
  loc_69C56A: ImpAdLdI4 MemVar_74BEAC
  loc_69C56D: ImpAdCallI2 Mid$(, , )
  loc_69C572: FStStrNoPop var_E8
  loc_69C575: LitStr "1"
  loc_69C578: EqStr
  loc_69C57A: FFree1Str var_E8
  loc_69C57D: FFree1Var var_D4 = ""
  loc_69C580: BranchF loc_69C59E
  loc_69C583: LitVar_TRUE var_E4
  loc_69C586: PopAdLdVar
  loc_69C587: ImpAdLdRf MemVar_74C760
  loc_69C58A: NewIfNullPr Formx
  loc_69C58D: VCallAd Control_ID_CrystalReport1
  loc_69C590: FStAdFunc var_C0
  loc_69C593: FLdPr var_C0
  loc_69C596: LateIdSt
  loc_69C59B: FFree1Ad var_C0
  loc_69C59E: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_69C5A3: LitI2_Byte 0
  loc_69C5A5: PopTmpLdAd2 var_BA
  loc_69C5A8: ImpAdCallFPR4 Proc_87_1_630780()
  loc_69C5AD: LitVar_FALSE
  loc_69C5B1: PopAdLdVar
  loc_69C5B2: FLdPrThis
  loc_69C5B3: VCallAd Control_ID_PanelCierres
  loc_69C5B6: FStAdFunc var_C0
  loc_69C5B9: FLdPr var_C0
  loc_69C5BC: LateIdSt
  loc_69C5C1: FFree1Ad var_C0
  loc_69C5C4: LitI2_Byte &HFF
  loc_69C5C6: FLdPrThis
  loc_69C5C7: VCallAd Control_ID_Reloj
  loc_69C5CA: FStAdFunc var_C0
  loc_69C5CD: FLdPr var_C0
  loc_69C5D0: Formx.Timer.Enabled = from_stack_1b
  loc_69C5D5: FFree1Ad var_C0
  loc_69C5D8: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69C5DD: ExitProcHresult
  loc_69C5DE: FLdRfVar var_138
  loc_69C5E1: ImpAdCallI2 Err 'rtcErrObj
  loc_69C5E6: FStAdFunc var_C0
  loc_69C5E9: FLdPr var_C0
  loc_69C5EC:  = Err.Number
  loc_69C5F1: ILdRf var_138
  loc_69C5F4: FStR4 var_13C
  loc_69C5F7: FFree1Ad var_C0
  loc_69C5FA: ILdRf var_13C
  loc_69C5FD: LitI4 &H5041
  loc_69C602: EqI4
  loc_69C603: BranchF loc_69C60F
  loc_69C606: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69C60B: ExitProcHresult
  loc_69C60C: Branch loc_69C610
  loc_69C60F: ExitProcHresult
  loc_69C610: ExitProcHresult
End Sub

Private Sub Month_in_Progress_Click() '69FE0C
  'Data Table: 460894
  loc_69F768: OnErrorGoto loc_69FDB1
  loc_69F76B: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69F770: LitI2_Byte 7
  loc_69F772: PopTmpLdAd2 var_BA
  loc_69F775: ImpAdCallI2 Proc_94_7_603DD0()
  loc_69F77A: NotI4
  loc_69F77B: BranchF loc_69F77F
  loc_69F77E: ExitProcHresult
  loc_69F77F: LitI2_Byte 0
  loc_69F781: FLdPrThis
  loc_69F782: VCallAd Control_ID_Reloj
  loc_69F785: FStAdFunc var_C0
  loc_69F788: FLdPr var_C0
  loc_69F78B: Me.Enabled = from_stack_1b
  loc_69F790: FFree1Ad var_C0
  loc_69F793: FLdRfVar var_C2
  loc_69F796: FLdRfVar var_A2
  loc_69F799: LitI2_Byte 0
  loc_69F79B: PopTmpLdAd2 var_BA
  loc_69F79E: FLdRfVar var_C0
  loc_69F7A1: ImpAdLdRf MemVar_74C760
  loc_69F7A4: NewIfNullPr Formx
  loc_69F7A7: from_stack_1v = Formx.global_4589716Get()
  loc_69F7AC: FLdPr var_C0
  loc_69F7AF:  = Formx.WindowState
  loc_69F7B4: FLdI2 var_C2
  loc_69F7B7: NotI4
  loc_69F7B8: FFree1Ad var_C0
  loc_69F7BB: BranchF loc_69F7D5
  loc_69F7BE: FLdRfVar var_D4
  loc_69F7C1: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69F7C6: FLdRfVar var_D4
  loc_69F7C9: CBoolVarNull
  loc_69F7CB: FFree1Var var_D4 = ""
  loc_69F7CE: BranchF loc_69F7D2
  loc_69F7D1: ExitProcHresult
  loc_69F7D2: Branch loc_69F793
  loc_69F7D5: FLdUI1
  loc_69F7D9: CI2UI1
  loc_69F7DB: LitI2_Byte 0
  loc_69F7DD: GtI2
  loc_69F7DE: BranchF loc_69F827
  loc_69F7E1: LitVar_FALSE
  loc_69F7E5: PopAdLdVar
  loc_69F7E6: FLdPrThis
  loc_69F7E7: VCallAd Control_ID_PanelCierres
  loc_69F7EA: FStAdFunc var_C0
  loc_69F7ED: FLdPr var_C0
  loc_69F7F0: LateIdSt
  loc_69F7F5: FFree1Ad var_C0
  loc_69F7F8: FLdRfVar var_D4
  loc_69F7FB: FLdRfVar var_A2
  loc_69F7FE: LitStr "M"
  loc_69F801: FStStrCopy var_E8
  loc_69F804: FLdRfVar var_E8
  loc_69F807: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_69F80C: FFree1Str var_E8
  loc_69F80F: FFree1Var var_D4 = ""
  loc_69F812: LitI2_Byte &HFF
  loc_69F814: FLdPrThis
  loc_69F815: VCallAd Control_ID_Reloj
  loc_69F818: FStAdFunc var_C0
  loc_69F81B: FLdPr var_C0
  loc_69F81E: Me.Enabled = from_stack_1b
  loc_69F823: FFree1Ad var_C0
  loc_69F826: ExitProcHresult
  loc_69F827: LitVar_TRUE var_E4
  loc_69F82A: PopAdLdVar
  loc_69F82B: FLdPrThis
  loc_69F82C: VCallAd Control_ID_PanelCierres
  loc_69F82F: FStAdFunc var_C0
  loc_69F832: FLdPr var_C0
  loc_69F835: LateIdSt
  loc_69F83A: FFree1Ad var_C0
  loc_69F83D: FLdPr Me
  loc_69F840: MemLdStr global_7408
  loc_69F843: CVarStr var_E4
  loc_69F846: PopAdLdVar
  loc_69F847: FLdPrThis
  loc_69F848: VCallAd Control_ID_PanelCierres
  loc_69F84B: FStAdFunc var_C0
  loc_69F84E: FLdPr var_C0
  loc_69F851: LateIdSt
  loc_69F856: FFree1Ad var_C0
  loc_69F859: FLdRfVar var_C2
  loc_69F85C: FLdRfVar var_A0
  loc_69F85F: CVarRef
  loc_69F864: LitI2_Byte &HFF
  loc_69F866: PopTmpLdAd2 var_BA
  loc_69F869: LitStr "M"
  loc_69F86C: FStStrCopy var_E8
  loc_69F86F: FLdRfVar var_E8
  loc_69F872: FLdRfVar var_C0
  loc_69F875: ImpAdLdRf MemVar_74C760
  loc_69F878: NewIfNullPr Formx
  loc_69F87B: from_stack_1v = Formx.global_4589716Get()
  loc_69F880: FLdPr var_C0
  loc_69F883: Formx.FontBold = from_stack_1b
  loc_69F888: FLdI2 var_C2
  loc_69F88B: NotI4
  loc_69F88C: FFree1Str var_E8
  loc_69F88F: FFree1Ad var_C0
  loc_69F892: BranchF loc_69F8D7
  loc_69F895: FLdRfVar var_D4
  loc_69F898: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69F89D: FLdRfVar var_D4
  loc_69F8A0: CBoolVarNull
  loc_69F8A2: FFree1Var var_D4 = ""
  loc_69F8A5: BranchF loc_69F8D4
  loc_69F8A8: LitVar_FALSE
  loc_69F8AC: PopAdLdVar
  loc_69F8AD: FLdPrThis
  loc_69F8AE: VCallAd Control_ID_PanelCierres
  loc_69F8B1: FStAdFunc var_C0
  loc_69F8B4: FLdPr var_C0
  loc_69F8B7: LateIdSt
  loc_69F8BC: FFree1Ad var_C0
  loc_69F8BF: LitI2_Byte &HFF
  loc_69F8C1: FLdPrThis
  loc_69F8C2: VCallAd Control_ID_Reloj
  loc_69F8C5: FStAdFunc var_C0
  loc_69F8C8: FLdPr var_C0
  loc_69F8CB: Me.Enabled = from_stack_1b
  loc_69F8D0: FFree1Ad var_C0
  loc_69F8D3: ExitProcHresult
  loc_69F8D4: Branch loc_69F859
  loc_69F8D7: FLdRfVar var_A0
  loc_69F8DA: CVarRef
  loc_69F8DF: FLdRfVar var_D4
  loc_69F8E2: ImpAdCallFPR4  = Trim()
  loc_69F8E7: FLdRfVar var_D4
  loc_69F8EA: CStrVarTmp
  loc_69F8EB: FStStr var_A0
  loc_69F8EE: FFree1Var var_D4 = ""
  loc_69F8F1: ILdRf var_A0
  loc_69F8F4: FnLenStr
  loc_69F8F5: LitI4 2
  loc_69F8FA: LtI4
  loc_69F8FB: BranchF loc_69F959
  loc_69F8FE: LitVar_Missing var_128
  loc_69F901: LitVar_Missing var_D4
  loc_69F904: ImpAdLdRf MemVar_74BF24
  loc_69F907: CVarRef
  loc_69F90C: LitI4 0
  loc_69F911: FLdPr Me
  loc_69F914: MemLdRfVar from_stack_1.global_7412
  loc_69F917: CVarRef
  loc_69F91C: ImpAdCallI2 MsgBox(, , , , )
  loc_69F921: CBoolI4
  loc_69F923: FFreeVar var_D4 = ""
  loc_69F92A: BranchF loc_69F959
  loc_69F92D: LitVar_FALSE
  loc_69F931: PopAdLdVar
  loc_69F932: FLdPrThis
  loc_69F933: VCallAd Control_ID_PanelCierres
  loc_69F936: FStAdFunc var_C0
  loc_69F939: FLdPr var_C0
  loc_69F93C: LateIdSt
  loc_69F941: FFree1Ad var_C0
  loc_69F944: LitI2_Byte &HFF
  loc_69F946: FLdPrThis
  loc_69F947: VCallAd Control_ID_Reloj
  loc_69F94A: FStAdFunc var_C0
  loc_69F94D: FLdPr var_C0
  loc_69F950: Me.Enabled = from_stack_1b
  loc_69F955: FFree1Ad var_C0
  loc_69F958: ExitProcHresult
  loc_69F959: FLdRfVar var_B4
  loc_69F95C: FLdRfVar var_A0
  loc_69F95F: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69F964: FLdRfVar var_C2
  loc_69F967: FLdRfVar var_A0
  loc_69F96A: CVarRef
  loc_69F96F: LitI2_Byte 0
  loc_69F971: PopTmpLdAd2 var_BA
  loc_69F974: LitStr "M"
  loc_69F977: FStStrCopy var_E8
  loc_69F97A: FLdRfVar var_E8
  loc_69F97D: FLdRfVar var_C0
  loc_69F980: ImpAdLdRf MemVar_74C760
  loc_69F983: NewIfNullPr Formx
  loc_69F986: from_stack_1v = Formx.global_4589716Get()
  loc_69F98B: FLdPr var_C0
  loc_69F98E: Formx.FontBold = from_stack_1b
  loc_69F993: FLdI2 var_C2
  loc_69F996: NotI4
  loc_69F997: FFree1Str var_E8
  loc_69F99A: FFree1Ad var_C0
  loc_69F99D: BranchF loc_69F9E2
  loc_69F9A0: FLdRfVar var_D4
  loc_69F9A3: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69F9A8: FLdRfVar var_D4
  loc_69F9AB: CBoolVarNull
  loc_69F9AD: FFree1Var var_D4 = ""
  loc_69F9B0: BranchF loc_69F9DF
  loc_69F9B3: LitVar_FALSE
  loc_69F9B7: PopAdLdVar
  loc_69F9B8: FLdPrThis
  loc_69F9B9: VCallAd Control_ID_PanelCierres
  loc_69F9BC: FStAdFunc var_C0
  loc_69F9BF: FLdPr var_C0
  loc_69F9C2: LateIdSt
  loc_69F9C7: FFree1Ad var_C0
  loc_69F9CA: LitI2_Byte &HFF
  loc_69F9CC: FLdPrThis
  loc_69F9CD: VCallAd Control_ID_Reloj
  loc_69F9D0: FStAdFunc var_C0
  loc_69F9D3: FLdPr var_C0
  loc_69F9D6: Me.Enabled = from_stack_1b
  loc_69F9DB: FFree1Ad var_C0
  loc_69F9DE: ExitProcHresult
  loc_69F9DF: Branch loc_69F964
  loc_69F9E2: FLdRfVar var_B8
  loc_69F9E5: FLdRfVar var_A0
  loc_69F9E8: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69F9ED: LitVar_FALSE
  loc_69F9F1: PopAdLdVar
  loc_69F9F2: FLdPrThis
  loc_69F9F3: VCallAd Control_ID_PanelCierres
  loc_69F9F6: FStAdFunc var_C0
  loc_69F9F9: FLdPr var_C0
  loc_69F9FC: LateIdSt
  loc_69FA01: FFree1Ad var_C0
  loc_69FA04: FLdRfVar var_E8
  loc_69FA07: FLdRfVar var_C0
  loc_69FA0A: ImpAdLdRf MemVar_7520D4
  loc_69FA0D: NewIfNullPr Global
  loc_69FA10:  = Global.App
  loc_69FA15: FLdPr var_C0
  loc_69FA18:  = App.Path
  loc_69FA1D: FLdRfVar var_A8
  loc_69FA20: FLdRfVar var_AC
  loc_69FA23: LitI2_Byte &HFF
  loc_69FA25: PopTmpLdAd2 var_BA
  loc_69FA28: ILdRf var_E8
  loc_69FA2B: LitStr "\reporte.mdb"
  loc_69FA2E: ConcatStr
  loc_69FA2F: PopTmpLdAdStr
  loc_69FA33: FLdRfVar var_B4
  loc_69FA36: LitStr "M"
  loc_69FA39: FStStrCopy var_12C
  loc_69FA3C: FLdRfVar var_12C
  loc_69FA3F: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69FA44: NotI4
  loc_69FA45: FFreeStr var_E8 = "": var_12C = ""
  loc_69FA4E: FFree1Ad var_C0
  loc_69FA51: BranchF loc_69FAB6
  loc_69FA54: LitVar_Missing var_128
  loc_69FA57: LitVar_Missing var_D4
  loc_69FA5A: ImpAdLdRf MemVar_74BF24
  loc_69FA5D: CVarRef
  loc_69FA62: LitI4 5
  loc_69FA67: FLdPr Me
  loc_69FA6A: MemLdRfVar from_stack_1.global_7500
  loc_69FA6D: CVarRef
  loc_69FA72: ImpAdCallI2 MsgBox(, , , , )
  loc_69FA77: LitI4 2
  loc_69FA7C: EqI4
  loc_69FA7D: FFreeVar var_D4 = ""
  loc_69FA84: BranchF loc_69FAB3
  loc_69FA87: LitVar_FALSE
  loc_69FA8B: PopAdLdVar
  loc_69FA8C: FLdPrThis
  loc_69FA8D: VCallAd Control_ID_PanelCierres
  loc_69FA90: FStAdFunc var_C0
  loc_69FA93: FLdPr var_C0
  loc_69FA96: LateIdSt
  loc_69FA9B: FFree1Ad var_C0
  loc_69FA9E: LitI2_Byte &HFF
  loc_69FAA0: FLdPrThis
  loc_69FAA1: VCallAd Control_ID_Reloj
  loc_69FAA4: FStAdFunc var_C0
  loc_69FAA7: FLdPr var_C0
  loc_69FAAA: Me.Enabled = from_stack_1b
  loc_69FAAF: FFree1Ad var_C0
  loc_69FAB2: ExitProcHresult
  loc_69FAB3: Branch loc_69FA04
  loc_69FAB6: FLdRfVar var_E8
  loc_69FAB9: FLdRfVar var_C0
  loc_69FABC: ImpAdLdRf MemVar_7520D4
  loc_69FABF: NewIfNullPr Global
  loc_69FAC2:  = Global.App
  loc_69FAC7: FLdPr var_C0
  loc_69FACA:  = App.Path
  loc_69FACF: FLdRfVar var_A8
  loc_69FAD2: FLdRfVar var_AC
  loc_69FAD5: LitI2_Byte 0
  loc_69FAD7: PopTmpLdAd2 var_BA
  loc_69FADA: ILdRf var_E8
  loc_69FADD: LitStr "\reporte.mdb"
  loc_69FAE0: ConcatStr
  loc_69FAE1: PopTmpLdAdStr
  loc_69FAE5: FLdRfVar var_B8
  loc_69FAE8: LitStr "M"
  loc_69FAEB: FStStrCopy var_12C
  loc_69FAEE: FLdRfVar var_12C
  loc_69FAF1: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69FAF6: NotI4
  loc_69FAF7: FFreeStr var_E8 = "": var_12C = ""
  loc_69FB00: FFree1Ad var_C0
  loc_69FB03: BranchF loc_69FB68
  loc_69FB06: LitVar_Missing var_128
  loc_69FB09: LitVar_Missing var_D4
  loc_69FB0C: ImpAdLdRf MemVar_74BF24
  loc_69FB0F: CVarRef
  loc_69FB14: LitI4 5
  loc_69FB19: FLdPr Me
  loc_69FB1C: MemLdRfVar from_stack_1.global_7500
  loc_69FB1F: CVarRef
  loc_69FB24: ImpAdCallI2 MsgBox(, , , , )
  loc_69FB29: LitI4 2
  loc_69FB2E: EqI4
  loc_69FB2F: FFreeVar var_D4 = ""
  loc_69FB36: BranchF loc_69FB65
  loc_69FB39: LitVar_FALSE
  loc_69FB3D: PopAdLdVar
  loc_69FB3E: FLdPrThis
  loc_69FB3F: VCallAd Control_ID_PanelCierres
  loc_69FB42: FStAdFunc var_C0
  loc_69FB45: FLdPr var_C0
  loc_69FB48: LateIdSt
  loc_69FB4D: FFree1Ad var_C0
  loc_69FB50: LitI2_Byte &HFF
  loc_69FB52: FLdPrThis
  loc_69FB53: VCallAd Control_ID_Reloj
  loc_69FB56: FStAdFunc var_C0
  loc_69FB59: FLdPr var_C0
  loc_69FB5C: Me.Enabled = from_stack_1b
  loc_69FB61: FFree1Ad var_C0
  loc_69FB64: ExitProcHresult
  loc_69FB65: Branch loc_69FAB6
  loc_69FB68: FLdPr Me
  loc_69FB6B: MemLdStr global_7348
  loc_69FB6E: CVarStr var_E4
  loc_69FB71: PopAdLdVar
  loc_69FB72: FLdPrThis
  loc_69FB73: VCallAd Control_ID_PanelCierres
  loc_69FB76: FStAdFunc var_C0
  loc_69FB79: FLdPr var_C0
  loc_69FB7C: LateIdSt
  loc_69FB81: FFree1Ad var_C0
  loc_69FB84: LitVarI4
  loc_69FB8C: PopAdLdVar
  loc_69FB8D: FLdPrThis
  loc_69FB8E: VCallAd Control_ID_CrystalReport1
  loc_69FB91: FStAdFunc var_C0
  loc_69FB94: FLdPr var_C0
  loc_69FB97: LateIdSt
  loc_69FB9C: FFree1Ad var_C0
  loc_69FB9F: FLdRfVar var_E8
  loc_69FBA2: FLdRfVar var_C0
  loc_69FBA5: ImpAdLdRf MemVar_7520D4
  loc_69FBA8: NewIfNullPr Global
  loc_69FBAB:  = Global.App
  loc_69FBB0: FLdPr var_C0
  loc_69FBB3:  = App.Path
  loc_69FBB8: FLdRfVar var_134
  loc_69FBBB: LitVar_Missing var_108
  loc_69FBBE: PopAdLdVar
  loc_69FBBF: LitVar_Missing var_F8
  loc_69FBC2: PopAdLdVar
  loc_69FBC3: LitVar_TRUE var_E4
  loc_69FBC6: PopAdLdVar
  loc_69FBC7: ILdRf var_E8
  loc_69FBCA: LitStr "\reporte.mdb"
  loc_69FBCD: ConcatStr
  loc_69FBCE: FStStrNoPop var_12C
  loc_69FBD1: ImpAdLdRf MemVar_752164
  loc_69FBD4: NewIfNullPr Me
  loc_69FBD7: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69FBDC: FLdZeroAd var_134
  loc_69FBDF: FStAdFunc var_88
  loc_69FBE2: FFreeStr var_E8 = ""
  loc_69FBE9: FFree1Ad var_C0
  loc_69FBEC: FLdRfVar var_C0
  loc_69FBEF: LitVar_Missing var_108
  loc_69FBF2: PopAdLdVar
  loc_69FBF3: LitVar_Missing var_F8
  loc_69FBF6: PopAdLdVar
  loc_69FBF7: LitVar_Missing var_E4
  loc_69FBFA: PopAdLdVar
  loc_69FBFB: LitStr "select ReportVer from Header"
  loc_69FBFE: FLdPr var_88
  loc_69FC01: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69FC06: FLdZeroAd var_C0
  loc_69FC09: FStAdFunc var_8C
  loc_69FC0C: FLdRfVar var_D4
  loc_69FC0F: FLdRfVar var_134
  loc_69FC12: LitVarStr var_E4, "ReportVer"
  loc_69FC17: PopAdLdVar
  loc_69FC18: FLdRfVar var_C0
  loc_69FC1B: FLdPr var_8C
  loc_69FC1E:  = Me.Fields
  loc_69FC23: FLdPr var_C0
  loc_69FC26: from_stack_2 = Me.Item(from_stack_1)
  loc_69FC2B: FLdPr var_134
  loc_69FC2E:  = Me.Value
  loc_69FC33: FLdRfVar var_D4
  loc_69FC36: LitVarStr var_F8, vbNullString
  loc_69FC3B: ConcatVar var_128
  loc_69FC3F: CStrVarTmp
  loc_69FC40: FStStr var_90
  loc_69FC43: FFreeAd var_C0 = ""
  loc_69FC4A: FFreeVar var_D4 = ""
  loc_69FC51: FLdPr var_8C
  loc_69FC54: Me.Close
  loc_69FC59: LitNothing
  loc_69FC5B: CastAd
  loc_69FC5E: FStAdFunc var_8C
  loc_69FC61: FLdPr var_88
  loc_69FC64: Me.Close
  loc_69FC69: LitNothing
  loc_69FC6B: CastAd
  loc_69FC6E: FStAdFunc var_88
  loc_69FC71: ILdRf var_90
  loc_69FC74: LitStr vbNullString
  loc_69FC77: EqStr
  loc_69FC79: BranchF loc_69FCBF
  loc_69FC7C: FLdRfVar var_E8
  loc_69FC7F: FLdRfVar var_C0
  loc_69FC82: ImpAdLdRf MemVar_7520D4
  loc_69FC85: NewIfNullPr Global
  loc_69FC88:  = Global.App
  loc_69FC8D: FLdPr var_C0
  loc_69FC90:  = App.Path
  loc_69FC95: ILdRf var_E8
  loc_69FC98: LitStr "\repo1.rpt"
  loc_69FC9B: ConcatStr
  loc_69FC9C: CVarStr var_D4
  loc_69FC9F: PopAdLdVar
  loc_69FCA0: FLdPrThis
  loc_69FCA1: VCallAd Control_ID_CrystalReport1
  loc_69FCA4: FStAdFunc var_134
  loc_69FCA7: FLdPr var_134
  loc_69FCAA: LateIdSt
  loc_69FCAF: FFree1Str var_E8
  loc_69FCB2: FFreeAd var_C0 = ""
  loc_69FCB9: FFree1Var var_D4 = ""
  loc_69FCBC: Branch loc_69FD0A
  loc_69FCBF: FLdRfVar var_E8
  loc_69FCC2: FLdRfVar var_C0
  loc_69FCC5: ImpAdLdRf MemVar_7520D4
  loc_69FCC8: NewIfNullPr Global
  loc_69FCCB:  = Global.App
  loc_69FCD0: FLdPr var_C0
  loc_69FCD3:  = App.Path
  loc_69FCD8: ILdRf var_E8
  loc_69FCDB: LitStr "\"
  loc_69FCDE: ConcatStr
  loc_69FCDF: FStStrNoPop var_12C
  loc_69FCE2: ILdRf var_90
  loc_69FCE5: ConcatStr
  loc_69FCE6: CVarStr var_D4
  loc_69FCE9: PopAdLdVar
  loc_69FCEA: FLdPrThis
  loc_69FCEB: VCallAd Control_ID_CrystalReport1
  loc_69FCEE: FStAdFunc var_134
  loc_69FCF1: FLdPr var_134
  loc_69FCF4: LateIdSt
  loc_69FCF9: FFreeStr var_E8 = ""
  loc_69FD00: FFreeAd var_C0 = ""
  loc_69FD07: FFree1Var var_D4 = ""
  loc_69FD0A: ImpAdLdI4 MemVar_74BEB8
  loc_69FD0D: FLdPr Me
  loc_69FD10: MemStStrCopy
  loc_69FD14: FLdPr Me
  loc_69FD17: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_69FD1A: ImpAdCallFPR4 Proc_101_3_662098()
  loc_69FD1F: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_69FD24: LitVarI2 var_D4, 1
  loc_69FD29: LitI4 4
  loc_69FD2E: ImpAdLdI4 MemVar_74BEAC
  loc_69FD31: ImpAdCallI2 Mid$(, , )
  loc_69FD36: FStStrNoPop var_E8
  loc_69FD39: LitStr "1"
  loc_69FD3C: EqStr
  loc_69FD3E: FFree1Str var_E8
  loc_69FD41: FFree1Var var_D4 = ""
  loc_69FD44: BranchF loc_69FD62
  loc_69FD47: LitVar_TRUE var_E4
  loc_69FD4A: PopAdLdVar
  loc_69FD4B: ImpAdLdRf MemVar_74C760
  loc_69FD4E: NewIfNullPr Formx
  loc_69FD51: VCallAd Control_ID_CrystalReport1
  loc_69FD54: FStAdFunc var_C0
  loc_69FD57: FLdPr var_C0
  loc_69FD5A: LateIdSt
  loc_69FD5F: FFree1Ad var_C0
  loc_69FD62: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_69FD67: LitI2_Byte 0
  loc_69FD69: PopTmpLdAd2 var_BA
  loc_69FD6C: ImpAdCallFPR4 Proc_87_1_630780()
  loc_69FD71: FLdPrThis
  loc_69FD72: VCallAd Control_ID_CrystalReport1
  loc_69FD75: FStAdFunc var_C0
  loc_69FD78: FLdPr var_C0
  loc_69FD7B: LateIdLdVar var_D4 DispID_65 0
  loc_69FD82: CI2Var
  loc_69FD83: LitI2_Byte 0
  loc_69FD85: EqI2
  loc_69FD86: FFree1Ad var_C0
  loc_69FD89: FFree1Var var_D4 = ""
  loc_69FD8C: BranchF loc_69FD97
  loc_69FD8F: ImpAdCallFPR4 DoEvents()
  loc_69FD94: Branch loc_69FD71
  loc_69FD97: LitI2_Byte &HFF
  loc_69FD99: FLdPrThis
  loc_69FD9A: VCallAd Control_ID_Reloj
  loc_69FD9D: FStAdFunc var_C0
  loc_69FDA0: FLdPr var_C0
  loc_69FDA3: Formx.Timer.Enabled = from_stack_1b
  loc_69FDA8: FFree1Ad var_C0
  loc_69FDAB: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69FDB0: ExitProcHresult
  loc_69FDB1: FLdRfVar var_138
  loc_69FDB4: ImpAdCallI2 Err 'rtcErrObj
  loc_69FDB9: FStAdFunc var_C0
  loc_69FDBC: FLdPr var_C0
  loc_69FDBF:  = Err.Number
  loc_69FDC4: ILdRf var_138
  loc_69FDC7: FStR4 var_13C
  loc_69FDCA: FFree1Ad var_C0
  loc_69FDCD: ILdRf var_13C
  loc_69FDD0: LitI4 &H5041
  loc_69FDD5: EqI4
  loc_69FDD6: BranchF loc_69FDF6
  loc_69FDD9: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_69FDDE: LitI2_Byte &HFF
  loc_69FDE0: FLdPrThis
  loc_69FDE1: VCallAd Control_ID_Reloj
  loc_69FDE4: FStAdFunc var_C0
  loc_69FDE7: FLdPr var_C0
  loc_69FDEA: Me.Enabled = from_stack_1b
  loc_69FDEF: FFree1Ad var_C0
  loc_69FDF2: ExitProcHresult
  loc_69FDF3: Branch loc_69FE0B
  loc_69FDF6: LitI2_Byte &HFF
  loc_69FDF8: FLdPrThis
  loc_69FDF9: VCallAd Control_ID_Reloj
  loc_69FDFC: FStAdFunc var_C0
  loc_69FDFF: FLdPr var_C0
  loc_69FE02: Me.Enabled = from_stack_1b
  loc_69FE07: FFree1Ad var_C0
  loc_69FE0A: ExitProcHresult
  loc_69FE0B: ExitProcHresult
End Sub

Private Sub REPORT_SHIFT_Click() '5E3B58
  'Data Table: 460894
  loc_5E3AF0: LitI2_Byte 8
  loc_5E3AF2: PopTmpLdAd2 var_86
  loc_5E3AF5: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E3AFA: NotI4
  loc_5E3AFB: BranchF loc_5E3AFF
  loc_5E3AFE: ExitProcHresult
  loc_5E3AFF: LitI2_Byte 0
  loc_5E3B01: FLdPrThis
  loc_5E3B02: VCallAd Control_ID_Reloj
  loc_5E3B05: FStAdFunc var_8C
  loc_5E3B08: FLdPr var_8C
  loc_5E3B0B: Me.Enabled = from_stack_1b
  loc_5E3B10: FFree1Ad var_8C
  loc_5E3B13: LitStr "T"
  loc_5E3B16: ImpAdLdRf MemVar_74DC6C
  loc_5E3B19: NewIfNullPr Reportes_Anteriores
  loc_5E3B1C: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E3B21: LitI2_Byte 0
  loc_5E3B23: ImpAdLdRf MemVar_74DC6C
  loc_5E3B26: NewIfNullPr Reportes_Anteriores
  loc_5E3B29: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5E3B2E: LitVar_Missing var_AC
  loc_5E3B31: PopAdLdVar
  loc_5E3B32: LitVarI2 var_9C, 1
  loc_5E3B37: PopAdLdVar
  loc_5E3B38: ImpAdLdRf MemVar_74DC6C
  loc_5E3B3B: NewIfNullPr Reportes_Anteriores
  loc_5E3B3E: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E3B43: LitI2_Byte &HFF
  loc_5E3B45: FLdPrThis
  loc_5E3B46: VCallAd Control_ID_Reloj
  loc_5E3B49: FStAdFunc var_8C
  loc_5E3B4C: FLdPr var_8C
  loc_5E3B4F: Me.Enabled = from_stack_1b
  loc_5E3B54: FFree1Ad var_8C
  loc_5E3B57: ExitProcHresult
End Sub

Private Sub REPORT_DAY_Click() '5E4038
  'Data Table: 460894
  loc_5E3FD0: LitI2_Byte 9
  loc_5E3FD2: PopTmpLdAd2 var_86
  loc_5E3FD5: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E3FDA: NotI4
  loc_5E3FDB: BranchF loc_5E3FDF
  loc_5E3FDE: ExitProcHresult
  loc_5E3FDF: LitI2_Byte 0
  loc_5E3FE1: FLdPrThis
  loc_5E3FE2: VCallAd Control_ID_Reloj
  loc_5E3FE5: FStAdFunc var_8C
  loc_5E3FE8: FLdPr var_8C
  loc_5E3FEB: Me.Enabled = from_stack_1b
  loc_5E3FF0: FFree1Ad var_8C
  loc_5E3FF3: LitStr "D"
  loc_5E3FF6: ImpAdLdRf MemVar_74DC6C
  loc_5E3FF9: NewIfNullPr Reportes_Anteriores
  loc_5E3FFC: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E4001: LitI2_Byte 0
  loc_5E4003: ImpAdLdRf MemVar_74DC6C
  loc_5E4006: NewIfNullPr Reportes_Anteriores
  loc_5E4009: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5E400E: LitVar_Missing var_AC
  loc_5E4011: PopAdLdVar
  loc_5E4012: LitVarI2 var_9C, 1
  loc_5E4017: PopAdLdVar
  loc_5E4018: ImpAdLdRf MemVar_74DC6C
  loc_5E401B: NewIfNullPr Reportes_Anteriores
  loc_5E401E: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E4023: LitI2_Byte &HFF
  loc_5E4025: FLdPrThis
  loc_5E4026: VCallAd Control_ID_Reloj
  loc_5E4029: FStAdFunc var_8C
  loc_5E402C: FLdPr var_8C
  loc_5E402F: Me.Enabled = from_stack_1b
  loc_5E4034: FFree1Ad var_8C
  loc_5E4037: ExitProcHresult
End Sub

Private Sub mnuCierreRed21_Click() '5E3984
  'Data Table: 460894
  loc_5E391C: LitI2_Byte &H25
  loc_5E391E: PopTmpLdAd2 var_86
  loc_5E3921: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E3926: NotI4
  loc_5E3927: BranchF loc_5E392B
  loc_5E392A: ExitProcHresult
  loc_5E392B: LitI2_Byte 0
  loc_5E392D: FLdPrThis
  loc_5E392E: VCallAd Control_ID_Reloj
  loc_5E3931: FStAdFunc var_8C
  loc_5E3934: FLdPr var_8C
  loc_5E3937: Me.Enabled = from_stack_1b
  loc_5E393C: FFree1Ad var_8C
  loc_5E393F: LitStr "R"
  loc_5E3942: ImpAdLdRf MemVar_74DC6C
  loc_5E3945: NewIfNullPr Reportes_Anteriores
  loc_5E3948: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E394D: LitI2_Byte 0
  loc_5E394F: ImpAdLdRf MemVar_74DC6C
  loc_5E3952: NewIfNullPr Reportes_Anteriores
  loc_5E3955: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5E395A: LitVar_Missing var_AC
  loc_5E395D: PopAdLdVar
  loc_5E395E: LitVarI2 var_9C, 1
  loc_5E3963: PopAdLdVar
  loc_5E3964: ImpAdLdRf MemVar_74DC6C
  loc_5E3967: NewIfNullPr Reportes_Anteriores
  loc_5E396A: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E396F: LitI2_Byte &HFF
  loc_5E3971: FLdPrThis
  loc_5E3972: VCallAd Control_ID_Reloj
  loc_5E3975: FStAdFunc var_8C
  loc_5E3978: FLdPr var_8C
  loc_5E397B: Me.Enabled = from_stack_1b
  loc_5E3980: FFree1Ad var_8C
  loc_5E3983: ExitProcHresult
End Sub

Private Sub MenuAnexoIII_Click() '5DEB5C
  'Data Table: 460894
  loc_5DEB0C: LitI2_Byte &H29
  loc_5DEB0E: PopTmpLdAd2 var_86
  loc_5DEB11: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5DEB16: NotI4
  loc_5DEB17: BranchF loc_5DEB1B
  loc_5DEB1A: ExitProcHresult
  loc_5DEB1B: LitI2_Byte 0
  loc_5DEB1D: FLdPrThis
  loc_5DEB1E: VCallAd Control_ID_Reloj
  loc_5DEB21: FStAdFunc var_8C
  loc_5DEB24: FLdPr var_8C
  loc_5DEB27: Me.Enabled = from_stack_1b
  loc_5DEB2C: FFree1Ad var_8C
  loc_5DEB2F: LitVar_Missing var_AC
  loc_5DEB32: PopAdLdVar
  loc_5DEB33: LitVarI4
  loc_5DEB3B: PopAdLdVar
  loc_5DEB3C: ImpAdLdRf MemVar_74C74C
  loc_5DEB3F: NewIfNullPr AnexoIII
  loc_5DEB42: AnexoIII.Show from_stack_1, from_stack_2
  loc_5DEB47: LitI2_Byte &HFF
  loc_5DEB49: FLdPrThis
  loc_5DEB4A: VCallAd Control_ID_Reloj
  loc_5DEB4D: FStAdFunc var_8C
  loc_5DEB50: FLdPr var_8C
  loc_5DEB53: Me.Enabled = from_stack_1b
  loc_5DEB58: FFree1Ad var_8C
  loc_5DEB5B: ExitProcHresult
End Sub

Private Sub mnugenericCierre_Click(Index As Integer) '5E6498
  'Data Table: 460894
  loc_5E6434: LitVarStr var_C4, vbNullString
  loc_5E6439: PopAdLdVar
  loc_5E643A: FLdRfVar var_B4
  loc_5E643D: FLdRfVar var_90
  loc_5E6440: FLdRfVar var_8C
  loc_5E6443: ILdI2 Index
  loc_5E6446: FLdPrThis
  loc_5E6447: VCallAd Control_ID_mnugenericCierre
  loc_5E644A: FStAdFunc var_88
  loc_5E644D: FLdPr var_88
  loc_5E6450: Set from_stack_2 = Me(from_stack_1)
  loc_5E6455: FLdPr var_8C
  loc_5E6458:  = Me.Tag
  loc_5E645D: FLdZeroAd var_90
  loc_5E6460: CVarStr var_A4
  loc_5E6463: FLdRfVar var_94
  loc_5E6466: ImpAdLdPr unk_460BCA
  loc_5E6469: MemLdPr global_0
  loc_5E646C:  = Forms
  loc_5E6471: FLdPr var_94
  loc_5E6474: from_stack_2 = Me.Item(from_stack_1)
  loc_5E6479: FLdRfVar var_B4
  loc_5E647C: LdPrVar
  loc_5E647E: LateMemCall
  loc_5E6484: FFreeAd var_88 = "": var_8C = ""
  loc_5E648D: FFreeVar var_A4 = ""
  loc_5E6494: ExitProcHresult
End Sub

Private Sub mnuEstadisticasCTF_Click() '5D5984
  'Data Table: 460894
  loc_5D595C: LitI2_Byte &H45
  loc_5D595E: PopTmpLdAd2 var_86
  loc_5D5961: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D5966: NotI4
  loc_5D5967: BranchF loc_5D596B
  loc_5D596A: ExitProcHresult
  loc_5D596B: LitVar_Missing var_A8
  loc_5D596E: PopAdLdVar
  loc_5D596F: LitVarI4
  loc_5D5977: PopAdLdVar
  loc_5D5978: ImpAdLdRf MemVar_74DBCC
  loc_5D597B: NewIfNullPr frmGraficosCTF
  loc_5D597E: frmGraficosCTF.Show from_stack_1, from_stack_2
  loc_5D5983: ExitProcHresult
End Sub

Private Sub mnuDatosComunicacion_Click() '5D616C
  'Data Table: 460894
  loc_5D6144: LitI2_Byte &H47
  loc_5D6146: PopTmpLdAd2 var_86
  loc_5D6149: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D614E: NotI4
  loc_5D614F: BranchF loc_5D6153
  loc_5D6152: ExitProcHresult
  loc_5D6153: LitVar_Missing var_A8
  loc_5D6156: PopAdLdVar
  loc_5D6157: LitVarI4
  loc_5D615F: PopAdLdVar
  loc_5D6160: ImpAdLdRf MemVar_74DA04
  loc_5D6163: NewIfNullPr frmDatosListas
  loc_5D6166: frmDatosListas.Show from_stack_1, from_stack_2
  loc_5D616B: ExitProcHresult
End Sub

Private Sub mnuTotalesCTF_Click() '5D52FC
  'Data Table: 460894
  loc_5D52D4: LitI2_Byte &H44
  loc_5D52D6: PopTmpLdAd2 var_86
  loc_5D52D9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D52DE: NotI4
  loc_5D52DF: BranchF loc_5D52E3
  loc_5D52E2: ExitProcHresult
  loc_5D52E3: LitVar_Missing var_A8
  loc_5D52E6: PopAdLdVar
  loc_5D52E7: LitVarI4
  loc_5D52EF: PopAdLdVar
  loc_5D52F0: ImpAdLdRf MemVar_74E1F0
  loc_5D52F3: NewIfNullPr frmTotalesCTF
  loc_5D52F6: frmTotalesCTF.Show from_stack_1, from_stack_2
  loc_5D52FB: ExitProcHresult
End Sub

Private Sub SETUP_PPU_Click() '5EB940
  'Data Table: 460894
  loc_5EB8BC: LitI2_Byte &H18
  loc_5EB8BE: PopTmpLdAd2 var_8A
  loc_5EB8C1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EB8C6: NotI4
  loc_5EB8C7: BranchF loc_5EB8CB
  loc_5EB8CA: ExitProcHresult
  loc_5EB8CB: from_stack_1v = Proc_162_229_63F80C()
  loc_5EB8D0: LitI2_Byte &HFF
  loc_5EB8D2: FLdPrThis
  loc_5EB8D3: VCallAd Control_ID_Text1
  loc_5EB8D6: FStAdFunc var_90
  loc_5EB8D9: FLdPr var_90
  loc_5EB8DC: Me.Visible = from_stack_1b
  loc_5EB8E1: FFree1Ad var_90
  loc_5EB8E4: FLdRfVar var_94
  loc_5EB8E7: ImpAdLdRf MemVar_74DC58
  loc_5EB8EA: NewIfNullPr frmLogin
  loc_5EB8ED: VCallAd Control_ID_Usuario
  loc_5EB8F0: FStAdFunc var_90
  loc_5EB8F3: FLdPr var_90
  loc_5EB8F6:  = frmLogin.ComboBox.Text
  loc_5EB8FB: FLdZeroAd var_94
  loc_5EB8FE: FStStr var_88
  loc_5EB901: FFree1Ad var_90
  loc_5EB904: LitI2_Byte 0
  loc_5EB906: PopTmpLdAd2 var_8A
  loc_5EB909: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5EB90E: BranchF loc_5EB929
  loc_5EB911: LitVar_Missing var_B4
  loc_5EB914: PopAdLdVar
  loc_5EB915: LitVarI4
  loc_5EB91D: PopAdLdVar
  loc_5EB91E: ImpAdLdRf MemVar_74DD0C
  loc_5EB921: NewIfNullPr frmProgramacionPrecios
  loc_5EB924: frmProgramacionPrecios.Show from_stack_1, from_stack_2
  loc_5EB929: LitI2_Byte 0
  loc_5EB92B: FLdPrThis
  loc_5EB92C: VCallAd Control_ID_Text1
  loc_5EB92F: FStAdFunc var_90
  loc_5EB932: FLdPr var_90
  loc_5EB935: Me.Visible = from_stack_1b
  loc_5EB93A: FFree1Ad var_90
  loc_5EB93D: ExitProcHresult
End Sub

Private Sub mnugenericSubCierre2_Click(Index As Integer) '5EC4B0
  'Data Table: 460894
  loc_5EC434: LitI4 3
  loc_5EC439: ILdI2 Index
  loc_5EC43C: CI4UI1
  loc_5EC43D: LitI4 1
  loc_5EC442: ImpAdLdPr unk_460BCE
  loc_5EC445: MemLdRfVar from_stack_1.global_0
  loc_5EC448: AryInRecLdRf
  loc_5EC44E: CDargRef
  loc_5EC452: FLdRfVar var_B4
  loc_5EC455: FLdRfVar var_90
  loc_5EC458: FLdRfVar var_8C
  loc_5EC45B: ILdI2 Index
  loc_5EC45E: FLdPrThis
  loc_5EC45F: VCallAd Control_ID_mnugenericSubCierre2
  loc_5EC462: FStAdFunc var_88
  loc_5EC465: FLdPr var_88
  loc_5EC468: Set from_stack_2 = Me(from_stack_1)
  loc_5EC46D: FLdPr var_8C
  loc_5EC470:  = Me.Tag
  loc_5EC475: FLdZeroAd var_90
  loc_5EC478: CVarStr var_A4
  loc_5EC47B: FLdRfVar var_94
  loc_5EC47E: ImpAdLdPr unk_460BCA
  loc_5EC481: MemLdPr global_0
  loc_5EC484:  = Forms
  loc_5EC489: FLdPr var_94
  loc_5EC48C: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC491: FLdRfVar var_B4
  loc_5EC494: LdPrVar
  loc_5EC496: LateMemCall
  loc_5EC49C: FFreeAd var_88 = "": var_8C = ""
  loc_5EC4A5: FFreeVar var_A4 = ""
  loc_5EC4AC: ExitProcHresult
End Sub

Private Sub mnugenericReportes_Click(Index As Integer) '5E5FE4
  'Data Table: 460894
  loc_5E5F80: LitVarStr var_C4, vbNullString
  loc_5E5F85: PopAdLdVar
  loc_5E5F86: FLdRfVar var_B4
  loc_5E5F89: FLdRfVar var_90
  loc_5E5F8C: FLdRfVar var_8C
  loc_5E5F8F: ILdI2 Index
  loc_5E5F92: FLdPrThis
  loc_5E5F93: VCallAd Control_ID_mnugenericReportes
  loc_5E5F96: FStAdFunc var_88
  loc_5E5F99: FLdPr var_88
  loc_5E5F9C: Set from_stack_2 = Me(from_stack_1)
  loc_5E5FA1: FLdPr var_8C
  loc_5E5FA4:  = Me.Tag
  loc_5E5FA9: FLdZeroAd var_90
  loc_5E5FAC: CVarStr var_A4
  loc_5E5FAF: FLdRfVar var_94
  loc_5E5FB2: ImpAdLdPr unk_460BCA
  loc_5E5FB5: MemLdPr global_0
  loc_5E5FB8:  = Forms
  loc_5E5FBD: FLdPr var_94
  loc_5E5FC0: from_stack_2 = Me.Item(from_stack_1)
  loc_5E5FC5: FLdRfVar var_B4
  loc_5E5FC8: LdPrVar
  loc_5E5FCA: LateMemCall
  loc_5E5FD0: FFreeAd var_88 = "": var_8C = ""
  loc_5E5FD9: FFreeVar var_A4 = ""
  loc_5E5FE0: ExitProcHresult
End Sub

Private Sub mnugenericSubCierre0_Click(Index As Integer) '5EC574
  'Data Table: 460894
  loc_5EC4F8: LitI4 1
  loc_5EC4FD: ILdI2 Index
  loc_5EC500: CI4UI1
  loc_5EC501: LitI4 1
  loc_5EC506: ImpAdLdPr unk_460BCE
  loc_5EC509: MemLdRfVar from_stack_1.global_0
  loc_5EC50C: AryInRecLdRf
  loc_5EC512: CDargRef
  loc_5EC516: FLdRfVar var_B4
  loc_5EC519: FLdRfVar var_90
  loc_5EC51C: FLdRfVar var_8C
  loc_5EC51F: ILdI2 Index
  loc_5EC522: FLdPrThis
  loc_5EC523: VCallAd Control_ID_mnugenericSubCierre0
  loc_5EC526: FStAdFunc var_88
  loc_5EC529: FLdPr var_88
  loc_5EC52C: Set from_stack_2 = Me(from_stack_1)
  loc_5EC531: FLdPr var_8C
  loc_5EC534:  = Me.Tag
  loc_5EC539: FLdZeroAd var_90
  loc_5EC53C: CVarStr var_A4
  loc_5EC53F: FLdRfVar var_94
  loc_5EC542: ImpAdLdPr unk_460BCA
  loc_5EC545: MemLdPr global_0
  loc_5EC548:  = Forms
  loc_5EC54D: FLdPr var_94
  loc_5EC550: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC555: FLdRfVar var_B4
  loc_5EC558: LdPrVar
  loc_5EC55A: LateMemCall
  loc_5EC560: FFreeAd var_88 = "": var_8C = ""
  loc_5EC569: FFreeVar var_A4 = ""
  loc_5EC570: ExitProcHresult
End Sub

Private Sub mnugenericSubReportes0_Click(Index As Integer) '5ED0F0
  'Data Table: 460894
  loc_5ED074: LitI4 1
  loc_5ED079: ILdI2 Index
  loc_5ED07C: CI4UI1
  loc_5ED07D: LitI4 1
  loc_5ED082: ImpAdLdPr unk_460BCE
  loc_5ED085: MemLdRfVar from_stack_1.global_480
  loc_5ED088: AryInRecLdRf
  loc_5ED08E: CDargRef
  loc_5ED092: FLdRfVar var_B4
  loc_5ED095: FLdRfVar var_90
  loc_5ED098: FLdRfVar var_8C
  loc_5ED09B: ILdI2 Index
  loc_5ED09E: FLdPrThis
  loc_5ED09F: VCallAd Control_ID_mnugenericSubReportes0
  loc_5ED0A2: FStAdFunc var_88
  loc_5ED0A5: FLdPr var_88
  loc_5ED0A8: Set from_stack_2 = Me(from_stack_1)
  loc_5ED0AD: FLdPr var_8C
  loc_5ED0B0:  = Me.Tag
  loc_5ED0B5: FLdZeroAd var_90
  loc_5ED0B8: CVarStr var_A4
  loc_5ED0BB: FLdRfVar var_94
  loc_5ED0BE: ImpAdLdPr unk_460BCA
  loc_5ED0C1: MemLdPr global_0
  loc_5ED0C4:  = Forms
  loc_5ED0C9: FLdPr var_94
  loc_5ED0CC: from_stack_2 = Me.Item(from_stack_1)
  loc_5ED0D1: FLdRfVar var_B4
  loc_5ED0D4: LdPrVar
  loc_5ED0D6: LateMemCall
  loc_5ED0DC: FFreeAd var_88 = "": var_8C = ""
  loc_5ED0E5: FFreeVar var_A4 = ""
  loc_5ED0EC: ExitProcHresult
End Sub

Private Sub mnuCierreTurno_Click() '609754
  'Data Table: 460894
  loc_609668: FLdRfVar var_8E
  loc_60966B: FLdPrThis
  loc_60966C: VCallAd Control_ID_mnuCierreTurno
  loc_60966F: FStAdFunc var_8C
  loc_609672: FLdPr var_8C
  loc_609675:  = Me.Checked
  loc_60967A: FLdI2 var_8E
  loc_60967D: NotI4
  loc_60967E: FLdPrThis
  loc_60967F: VCallAd Control_ID_mnuCierreTurno
  loc_609682: FStAdFunc var_94
  loc_609685: FLdPr var_94
  loc_609688: Me.Checked = from_stack_1b
  loc_60968D: FFreeAd var_8C = ""
  loc_609694: FLdRfVar var_8E
  loc_609697: FLdPrThis
  loc_609698: VCallAd Control_ID_mnuCierreTurno
  loc_60969B: FStAdFunc var_8C
  loc_60969E: FLdPr var_8C
  loc_6096A1:  = Me.Checked
  loc_6096A6: FLdI2 var_8E
  loc_6096A9: FFree1Ad var_8C
  loc_6096AC: BranchF loc_6096FE
  loc_6096AF: LitVarI2 var_B4, 1
  loc_6096B4: LitI4 6
  loc_6096B9: ImpAdLdI4 MemVar_74BEAC
  loc_6096BC: ImpAdCallI2 Mid$(, , )
  loc_6096C1: FStStrNoPop var_B8
  loc_6096C4: CUI1Str
  loc_6096C6: FStUI1 var_86
  loc_6096CA: FFree1Str var_B8
  loc_6096CD: FFree1Var var_B4 = ""
  loc_6096D0: FLdUI1
  loc_6096D4: CI2UI1
  loc_6096D6: LitI2_Byte 1
  loc_6096D8: OrI4
  loc_6096D9: CUI1I2
  loc_6096DB: FStUI1 var_86
  loc_6096DF: ImpAdLdRf MemVar_74BEAC
  loc_6096E2: LitI4 6
  loc_6096E7: LitI4 1
  loc_6096EC: FLdUI1
  loc_6096F0: CStrI2
  loc_6096F2: FStStrNoPop var_B8
  loc_6096F5: MidStr arg_0
  loc_6096F8: FFree1Str var_B8
  loc_6096FB: Branch loc_60974A
  loc_6096FE: LitVarI2 var_B4, 1
  loc_609703: LitI4 6
  loc_609708: ImpAdLdI4 MemVar_74BEAC
  loc_60970B: ImpAdCallI2 Mid$(, , )
  loc_609710: FStStrNoPop var_B8
  loc_609713: CUI1Str
  loc_609715: FStUI1 var_86
  loc_609719: FFree1Str var_B8
  loc_60971C: FFree1Var var_B4 = ""
  loc_60971F: FLdUI1
  loc_609723: CI2UI1
  loc_609725: LitI2_Byte 1
  loc_609727: SubI2
  loc_609728: CUI1I2
  loc_60972A: FStUI1 var_86
  loc_60972E: ImpAdLdRf MemVar_74BEAC
  loc_609731: LitI4 6
  loc_609736: LitI4 1
  loc_60973B: FLdUI1
  loc_60973F: CStrI2
  loc_609741: FStStrNoPop var_B8
  loc_609744: MidStr arg_0
  loc_609747: FFree1Str var_B8
  loc_60974A: ImpAdLdRf MemVar_74BEAC
  loc_60974D: ImpAdCallFPR4 Proc_167_22_5DC21C()
  loc_609752: ExitProcHresult
End Sub

Private Sub mnugenericTarjetas_Click(Index As Integer) '5E6340
  'Data Table: 460894
  loc_5E62DC: LitVarStr var_C4, vbNullString
  loc_5E62E1: PopAdLdVar
  loc_5E62E2: FLdRfVar var_B4
  loc_5E62E5: FLdRfVar var_90
  loc_5E62E8: FLdRfVar var_8C
  loc_5E62EB: ILdI2 Index
  loc_5E62EE: FLdPrThis
  loc_5E62EF: VCallAd Control_ID_mnugenericTarjetas
  loc_5E62F2: FStAdFunc var_88
  loc_5E62F5: FLdPr var_88
  loc_5E62F8: Set from_stack_2 = Me(from_stack_1)
  loc_5E62FD: FLdPr var_8C
  loc_5E6300:  = Me.Tag
  loc_5E6305: FLdZeroAd var_90
  loc_5E6308: CVarStr var_A4
  loc_5E630B: FLdRfVar var_94
  loc_5E630E: ImpAdLdPr unk_460BCA
  loc_5E6311: MemLdPr global_0
  loc_5E6314:  = Forms
  loc_5E6319: FLdPr var_94
  loc_5E631C: from_stack_2 = Me.Item(from_stack_1)
  loc_5E6321: FLdRfVar var_B4
  loc_5E6324: LdPrVar
  loc_5E6326: LateMemCall
  loc_5E632C: FFreeAd var_88 = "": var_8C = ""
  loc_5E6335: FFreeVar var_A4 = ""
  loc_5E633C: ExitProcHresult
End Sub

Private Sub mnugenericSubReportes2_Click(Index As Integer) '5ECDE0
  'Data Table: 460894
  loc_5ECD64: LitI4 3
  loc_5ECD69: ILdI2 Index
  loc_5ECD6C: CI4UI1
  loc_5ECD6D: LitI4 1
  loc_5ECD72: ImpAdLdPr unk_460BCE
  loc_5ECD75: MemLdRfVar from_stack_1.global_480
  loc_5ECD78: AryInRecLdRf
  loc_5ECD7E: CDargRef
  loc_5ECD82: FLdRfVar var_B4
  loc_5ECD85: FLdRfVar var_90
  loc_5ECD88: FLdRfVar var_8C
  loc_5ECD8B: ILdI2 Index
  loc_5ECD8E: FLdPrThis
  loc_5ECD8F: VCallAd Control_ID_mnugenericSubReportes2
  loc_5ECD92: FStAdFunc var_88
  loc_5ECD95: FLdPr var_88
  loc_5ECD98: Set from_stack_2 = Me(from_stack_1)
  loc_5ECD9D: FLdPr var_8C
  loc_5ECDA0:  = Me.Tag
  loc_5ECDA5: FLdZeroAd var_90
  loc_5ECDA8: CVarStr var_A4
  loc_5ECDAB: FLdRfVar var_94
  loc_5ECDAE: ImpAdLdPr unk_460BCA
  loc_5ECDB1: MemLdPr global_0
  loc_5ECDB4:  = Forms
  loc_5ECDB9: FLdPr var_94
  loc_5ECDBC: from_stack_2 = Me.Item(from_stack_1)
  loc_5ECDC1: FLdRfVar var_B4
  loc_5ECDC4: LdPrVar
  loc_5ECDC6: LateMemCall
  loc_5ECDCC: FFreeAd var_88 = "": var_8C = ""
  loc_5ECDD5: FFreeVar var_A4 = ""
  loc_5ECDDC: ExitProcHresult
End Sub

Private Sub mnugenericSubReportes1_Click(Index As Integer) '5ECF68
  'Data Table: 460894
  loc_5ECEEC: LitI4 2
  loc_5ECEF1: ILdI2 Index
  loc_5ECEF4: CI4UI1
  loc_5ECEF5: LitI4 1
  loc_5ECEFA: ImpAdLdPr unk_460BCE
  loc_5ECEFD: MemLdRfVar from_stack_1.global_480
  loc_5ECF00: AryInRecLdRf
  loc_5ECF06: CDargRef
  loc_5ECF0A: FLdRfVar var_B4
  loc_5ECF0D: FLdRfVar var_90
  loc_5ECF10: FLdRfVar var_8C
  loc_5ECF13: ILdI2 Index
  loc_5ECF16: FLdPrThis
  loc_5ECF17: VCallAd Control_ID_mnugenericSubReportes1
  loc_5ECF1A: FStAdFunc var_88
  loc_5ECF1D: FLdPr var_88
  loc_5ECF20: Set from_stack_2 = Me(from_stack_1)
  loc_5ECF25: FLdPr var_8C
  loc_5ECF28:  = Me.Tag
  loc_5ECF2D: FLdZeroAd var_90
  loc_5ECF30: CVarStr var_A4
  loc_5ECF33: FLdRfVar var_94
  loc_5ECF36: ImpAdLdPr unk_460BCA
  loc_5ECF39: MemLdPr global_0
  loc_5ECF3C:  = Forms
  loc_5ECF41: FLdPr var_94
  loc_5ECF44: from_stack_2 = Me.Item(from_stack_1)
  loc_5ECF49: FLdRfVar var_B4
  loc_5ECF4C: LdPrVar
  loc_5ECF4E: LateMemCall
  loc_5ECF54: FFreeAd var_88 = "": var_8C = ""
  loc_5ECF5D: FFreeVar var_A4 = ""
  loc_5ECF64: ExitProcHresult
End Sub

Private Sub SETUP_AUTORIZA_Click() '5F6990
  'Data Table: 460894
  loc_5F68E0: LitI4 4
  loc_5F68E5: ImpAdLdRf MemVar_74A170
  loc_5F68E8: Ary1LdI2
  loc_5F68E9: NotI4
  loc_5F68EA: CVarBoolI2 var_104
  loc_5F68EE: LitVarI2 var_B4, 3
  loc_5F68F3: LitI4 1
  loc_5F68F8: ImpAdLdRf MemVar_74BF90
  loc_5F68FB: CVarRef
  loc_5F6900: FLdRfVar var_C4
  loc_5F6903: ImpAdCallFPR4  = Mid(, , )
  loc_5F6908: FLdRfVar var_C4
  loc_5F690B: LitVarStr var_D4, "\\."
  loc_5F6910: HardType
  loc_5F6911: EqVar var_E4
  loc_5F6915: NotVar var_F4
  loc_5F6919: AndVar var_114
  loc_5F691D: CBoolVarNull
  loc_5F691F: FFreeVar var_B4 = "": var_C4 = ""
  loc_5F6928: BranchF loc_5F6931
  loc_5F692B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5F6930: ExitProcHresult
  loc_5F6931: LitI2_Byte &H1A
  loc_5F6933: PopTmpLdAd2 var_116
  loc_5F6936: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5F693B: NotI4
  loc_5F693C: BranchF loc_5F6940
  loc_5F693F: ExitProcHresult
  loc_5F6940: from_stack_1v = Proc_162_229_63F80C()
  loc_5F6945: LitI2_Byte &HFF
  loc_5F6947: FLdPrThis
  loc_5F6948: VCallAd Control_ID_Text1
  loc_5F694B: FStAdFunc var_11C
  loc_5F694E: FLdPr var_11C
  loc_5F6951: Me.Visible = from_stack_1b
  loc_5F6956: FFree1Ad var_11C
  loc_5F6959: LitI2_Byte 0
  loc_5F695B: PopTmpLdAd2 var_116
  loc_5F695E: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5F6963: BranchF loc_5F697B
  loc_5F6966: LitVar_Missing var_A4
  loc_5F6969: PopAdLdVar
  loc_5F696A: LitVarI2 var_94, 1
  loc_5F696F: PopAdLdVar
  loc_5F6970: ImpAdLdRf MemVar_74E3CC
  loc_5F6973: NewIfNullPr Form_Autoriza
  loc_5F6976: Form_Autoriza.Show from_stack_1, from_stack_2
  loc_5F697B: LitI2_Byte 0
  loc_5F697D: FLdPrThis
  loc_5F697E: VCallAd Control_ID_Text1
  loc_5F6981: FStAdFunc var_11C
  loc_5F6984: FLdPr var_11C
  loc_5F6987: Me.Visible = from_stack_1b
  loc_5F698C: FFree1Ad var_11C
  loc_5F698F: ExitProcHresult
End Sub

Private Sub GESTION_PUERTOS_Click() '5ED590
  'Data Table: 460894
  loc_5ED50C: LitI4 &H19
  loc_5ED511: ImpAdLdRf MemVar_74A170
  loc_5ED514: Ary1LdI2
  loc_5ED515: NotI4
  loc_5ED516: CVarBoolI2 var_104
  loc_5ED51A: LitVarI2 var_B4, 3
  loc_5ED51F: LitI4 1
  loc_5ED524: ImpAdLdRf MemVar_74BF90
  loc_5ED527: CVarRef
  loc_5ED52C: FLdRfVar var_C4
  loc_5ED52F: ImpAdCallFPR4  = Mid(, , )
  loc_5ED534: FLdRfVar var_C4
  loc_5ED537: LitVarStr var_D4, "\\."
  loc_5ED53C: HardType
  loc_5ED53D: EqVar var_E4
  loc_5ED541: NotVar var_F4
  loc_5ED545: AndVar var_114
  loc_5ED549: CBoolVarNull
  loc_5ED54B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5ED554: BranchF loc_5ED55D
  loc_5ED557: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5ED55C: ExitProcHresult
  loc_5ED55D: LitI2_Byte &H2D
  loc_5ED55F: PopTmpLdAd2 var_116
  loc_5ED562: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5ED567: NotI4
  loc_5ED568: BranchF loc_5ED56C
  loc_5ED56B: ExitProcHresult
  loc_5ED56C: LitI2_Byte 0
  loc_5ED56E: PopTmpLdAd2 var_116
  loc_5ED571: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5ED576: BranchF loc_5ED58E
  loc_5ED579: LitVar_Missing var_A4
  loc_5ED57C: PopAdLdVar
  loc_5ED57D: LitVarI2 var_94, 1
  loc_5ED582: PopAdLdVar
  loc_5ED583: ImpAdLdRf MemVar_74D860
  loc_5ED586: NewIfNullPr ConfiguracionPuertos
  loc_5ED589: ConfiguracionPuertos.Show from_stack_1, from_stack_2
  loc_5ED58E: ExitProcHresult
End Sub

Private Sub mnuControlPlayeros_Click() '5D621C
  'Data Table: 460894
  loc_5D61F4: LitI2_Byte &H3D
  loc_5D61F6: PopTmpLdAd2 var_86
  loc_5D61F9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D61FE: NotI4
  loc_5D61FF: BranchF loc_5D6203
  loc_5D6202: ExitProcHresult
  loc_5D6203: LitVar_Missing var_A8
  loc_5D6206: PopAdLdVar
  loc_5D6207: LitVarI4
  loc_5D620F: PopAdLdVar
  loc_5D6210: ImpAdLdRf MemVar_74D8C4
  loc_5D6213: NewIfNullPr frmControlPlayeros
  loc_5D6216: frmControlPlayeros.Show from_stack_1, from_stack_2
  loc_5D621B: ExitProcHresult
End Sub

Private Sub MnuAjusteMansualN_Click() '5D5FB4
  'Data Table: 460894
  loc_5D5F8C: LitStr "J"
  loc_5D5F8F: ImpAdLdRf MemVar_74DD94
  loc_5D5F92: NewIfNullPr FrmFechas
  loc_5D5F95: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D5F9A: LitVar_Missing var_A4
  loc_5D5F9D: PopAdLdVar
  loc_5D5F9E: LitVarI4
  loc_5D5FA6: PopAdLdVar
  loc_5D5FA7: ImpAdLdRf MemVar_74DD94
  loc_5D5FAA: NewIfNullPr FrmFechas
  loc_5D5FAD: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D5FB2: ExitProcHresult
End Sub

Private Sub RepDelAnteriores_Click() '5D8E18
  'Data Table: 460894
  loc_5D8DE8: LitI2_Byte &H6D
  loc_5D8DEA: PopTmpLdAd2 var_86
  loc_5D8DED: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D8DF2: NotI4
  loc_5D8DF3: BranchF loc_5D8DF7
  loc_5D8DF6: ExitProcHresult
  loc_5D8DF7: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_5D8DFC: FLdRfVar var_86
  loc_5D8DFF: LitVarI2 var_A8, 1
  loc_5D8E04: LitStr "ClickButtonAnteriores"
  loc_5D8E07: ImpAdLdPr unk_4608E6
  loc_5D8E0A: MemLdPr global_0
  loc_5D8E0D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5D8E12: FFree1Var var_A8 = ""
  loc_5D8E15: ExitProcHresult
End Sub

Private Sub mnugenericGestion_Click(Index As Integer) '5E6090
  'Data Table: 460894
  loc_5E602C: LitVarStr var_C4, vbNullString
  loc_5E6031: PopAdLdVar
  loc_5E6032: FLdRfVar var_B4
  loc_5E6035: FLdRfVar var_90
  loc_5E6038: FLdRfVar var_8C
  loc_5E603B: ILdI2 Index
  loc_5E603E: FLdPrThis
  loc_5E603F: VCallAd Control_ID_mnugenericGestion
  loc_5E6042: FStAdFunc var_88
  loc_5E6045: FLdPr var_88
  loc_5E6048: Set from_stack_2 = Me(from_stack_1)
  loc_5E604D: FLdPr var_8C
  loc_5E6050:  = Me.Tag
  loc_5E6055: FLdZeroAd var_90
  loc_5E6058: CVarStr var_A4
  loc_5E605B: FLdRfVar var_94
  loc_5E605E: ImpAdLdPr unk_460BCA
  loc_5E6061: MemLdPr global_0
  loc_5E6064:  = Forms
  loc_5E6069: FLdPr var_94
  loc_5E606C: from_stack_2 = Me.Item(from_stack_1)
  loc_5E6071: FLdRfVar var_B4
  loc_5E6074: LdPrVar
  loc_5E6076: LateMemCall
  loc_5E607C: FFreeAd var_88 = "": var_8C = ""
  loc_5E6085: FFreeVar var_A4 = ""
  loc_5E608C: ExitProcHresult
End Sub

Private Sub mnuCierresPeriodoN_Click() '60EEAC
  'Data Table: 460894
  loc_60ED9C: LitI2_Byte &H4B
  loc_60ED9E: PopTmpLdAd2 var_86
  loc_60EDA1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_60EDA6: NotI4
  loc_60EDA7: BranchF loc_60EDAB
  loc_60EDAA: ExitProcHresult
  loc_60EDAB: LitStr "periodo"
  loc_60EDAE: FLdPr Me
  loc_60EDB1: MemStStrCopy
  loc_60EDB5: LitI2_Byte &HFF
  loc_60EDB7: ImpAdLdRf MemVar_74D9DC
  loc_60EDBA: NewIfNullPr frmCierresRed21Mensuales
  loc_60EDBD: VCallAd Control_ID_Frame1
  loc_60EDC0: FStAdFunc var_8C
  loc_60EDC3: FLdPr var_8C
  loc_60EDC6: frmCierresRed21Mensuales.Frame.Visible = from_stack_1b
  loc_60EDCB: FFree1Ad var_8C
  loc_60EDCE: LitI2_Byte &HFF
  loc_60EDD0: ImpAdLdRf MemVar_74D9DC
  loc_60EDD3: NewIfNullPr frmCierresRed21Mensuales
  loc_60EDD6: VCallAd Control_ID_CmbDay
  loc_60EDD9: FStAdFunc var_8C
  loc_60EDDC: FLdPr var_8C
  loc_60EDDF: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EDE4: FFree1Ad var_8C
  loc_60EDE7: LitI2_Byte &HFF
  loc_60EDE9: ImpAdLdRf MemVar_74D9DC
  loc_60EDEC: NewIfNullPr frmCierresRed21Mensuales
  loc_60EDEF: VCallAd Control_ID_cmbDay2
  loc_60EDF2: FStAdFunc var_8C
  loc_60EDF5: FLdPr var_8C
  loc_60EDF8: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EDFD: FFree1Ad var_8C
  loc_60EE00: LitI2_Byte &HFF
  loc_60EE02: ImpAdLdRf MemVar_74D9DC
  loc_60EE05: NewIfNullPr frmCierresRed21Mensuales
  loc_60EE08: VCallAd Control_ID_cmbMonth2
  loc_60EE0B: FStAdFunc var_8C
  loc_60EE0E: FLdPr var_8C
  loc_60EE11: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EE16: FFree1Ad var_8C
  loc_60EE19: LitI2_Byte &HFF
  loc_60EE1B: ImpAdLdRf MemVar_74D9DC
  loc_60EE1E: NewIfNullPr frmCierresRed21Mensuales
  loc_60EE21: VCallAd Control_ID_cmbYear2
  loc_60EE24: FStAdFunc var_8C
  loc_60EE27: FLdPr var_8C
  loc_60EE2A: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EE2F: FFree1Ad var_8C
  loc_60EE32: LitI2_Byte &HFF
  loc_60EE34: ImpAdLdRf MemVar_74D9DC
  loc_60EE37: NewIfNullPr frmCierresRed21Mensuales
  loc_60EE3A: VCallAd Control_ID_Frame2
  loc_60EE3D: FStAdFunc var_8C
  loc_60EE40: FLdPr var_8C
  loc_60EE43: frmCierresRed21Mensuales.Frame.Visible = from_stack_1b
  loc_60EE48: FFree1Ad var_8C
  loc_60EE4B: LitI2_Byte &HFF
  loc_60EE4D: ImpAdLdRf MemVar_74D9DC
  loc_60EE50: NewIfNullPr frmCierresRed21Mensuales
  loc_60EE53: VCallAd Control_ID_Label14
  loc_60EE56: FStAdFunc var_8C
  loc_60EE59: FLdPr var_8C
  loc_60EE5C: frmCierresRed21Mensuales.Label.Visible = from_stack_1b
  loc_60EE61: FFree1Ad var_8C
  loc_60EE64: LitI2_Byte &HFF
  loc_60EE66: ImpAdLdRf MemVar_74D9DC
  loc_60EE69: NewIfNullPr frmCierresRed21Mensuales
  loc_60EE6C: VCallAd Control_ID_Label15
  loc_60EE6F: FStAdFunc var_8C
  loc_60EE72: FLdPr var_8C
  loc_60EE75: frmCierresRed21Mensuales.Label.Visible = from_stack_1b
  loc_60EE7A: FFree1Ad var_8C
  loc_60EE7D: LitI2_Byte &HFF
  loc_60EE7F: ImpAdLdRf MemVar_74D9DC
  loc_60EE82: NewIfNullPr frmCierresRed21Mensuales
  loc_60EE85: VCallAd Control_ID_Label13
  loc_60EE88: FStAdFunc var_8C
  loc_60EE8B: FLdPr var_8C
  loc_60EE8E: frmCierresRed21Mensuales.Label.Visible = from_stack_1b
  loc_60EE93: FFree1Ad var_8C
  loc_60EE96: LitVar_Missing var_AC
  loc_60EE99: PopAdLdVar
  loc_60EE9A: LitVarI2 var_9C, 1
  loc_60EE9F: PopAdLdVar
  loc_60EEA0: ImpAdLdRf MemVar_74D9DC
  loc_60EEA3: NewIfNullPr frmCierresRed21Mensuales
  loc_60EEA6: frmCierresRed21Mensuales.Show from_stack_1, from_stack_2
  loc_60EEAB: ExitProcHresult
End Sub

Private Sub mnuProductos_Click() '5F9F9C
  'Data Table: 460894
  loc_5F9EFC: OnErrorGoto loc_5F9F6F
  loc_5F9EFF: FLdRfVar var_1D4
  loc_5F9F02: LitVar_Missing var_1D0
  loc_5F9F05: LitVar_Missing var_1B0
  loc_5F9F08: LitVar_Missing var_190
  loc_5F9F0B: LitVar_Missing var_170
  loc_5F9F0E: LitVar_Missing var_150
  loc_5F9F11: LitVar_Missing var_130
  loc_5F9F14: LitVar_Missing var_110
  loc_5F9F17: LitVar_Missing var_F0
  loc_5F9F1A: LitVar_Missing var_D0
  loc_5F9F1D: LitVar_Missing var_B0
  loc_5F9F20: LitStr "No se pudo cargar el reporte"
  loc_5F9F23: FStStrCopy var_90
  loc_5F9F26: FLdRfVar var_90
  loc_5F9F29: LitI4 &H92
  loc_5F9F2E: PopTmpLdAdStr var_8C
  loc_5F9F31: LitI2_Byte &HA
  loc_5F9F33: PopTmpLdAd2 var_86
  loc_5F9F36: ImpAdLdRf MemVar_74C7D0
  loc_5F9F39: NewIfNullPr clsMsg
  loc_5F9F3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_5F9F41: ILdRf var_1D4
  loc_5F9F44: FLdPr Me
  loc_5F9F47: MemStStrCopy
  loc_5F9F4B: FFreeStr var_90 = ""
  loc_5F9F52: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_5F9F69: from_stack_2v = Proc_162_218_68B984(from_stack_1v)
  loc_5F9F6E: ExitProcHresult
  loc_5F9F6F: LitVar_Missing var_D0
  loc_5F9F72: LitVar_Missing var_B0
  loc_5F9F75: ImpAdLdRf MemVar_74BF24
  loc_5F9F78: CVarRef
  loc_5F9F7D: LitI4 &H40
  loc_5F9F82: FLdPr Me
  loc_5F9F85: MemLdRfVar from_stack_1.global_7572
  loc_5F9F88: CVarRef
  loc_5F9F8D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F9F92: FFreeVar var_B0 = ""
  loc_5F9F99: ExitProcHresult
End Sub

Private Sub mnuExisteciasN_Click() '5D6064
  'Data Table: 460894
  loc_5D603C: LitI2_Byte &H2F
  loc_5D603E: PopTmpLdAd2 var_86
  loc_5D6041: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D6046: NotI4
  loc_5D6047: BranchF loc_5D604B
  loc_5D604A: ExitProcHresult
  loc_5D604B: LitVar_Missing var_A8
  loc_5D604E: PopAdLdVar
  loc_5D604F: LitVarI4
  loc_5D6057: PopAdLdVar
  loc_5D6058: ImpAdLdRf MemVar_74DA2C
  loc_5D605B: NewIfNullPr frmExistenciasProductos
  loc_5D605E: frmExistenciasProductos.Show from_stack_1, from_stack_2
  loc_5D6063: ExitProcHresult
End Sub

Private Sub mnugenericSubGestion2_Click(Index As Integer) '5ECC58
  'Data Table: 460894
  loc_5ECBDC: LitI4 3
  loc_5ECBE1: ILdI2 Index
  loc_5ECBE4: CI4UI1
  loc_5ECBE5: LitI4 1
  loc_5ECBEA: ImpAdLdPr unk_460BCE
  loc_5ECBED: MemLdRfVar from_stack_1.global_1440
  loc_5ECBF0: AryInRecLdRf
  loc_5ECBF6: CDargRef
  loc_5ECBFA: FLdRfVar var_B4
  loc_5ECBFD: FLdRfVar var_90
  loc_5ECC00: FLdRfVar var_8C
  loc_5ECC03: ILdI2 Index
  loc_5ECC06: FLdPrThis
  loc_5ECC07: VCallAd Control_ID_mnugenericSubGestion2
  loc_5ECC0A: FStAdFunc var_88
  loc_5ECC0D: FLdPr var_88
  loc_5ECC10: Set from_stack_2 = Me(from_stack_1)
  loc_5ECC15: FLdPr var_8C
  loc_5ECC18:  = Me.Tag
  loc_5ECC1D: FLdZeroAd var_90
  loc_5ECC20: CVarStr var_A4
  loc_5ECC23: FLdRfVar var_94
  loc_5ECC26: ImpAdLdPr unk_460BCA
  loc_5ECC29: MemLdPr global_0
  loc_5ECC2C:  = Forms
  loc_5ECC31: FLdPr var_94
  loc_5ECC34: from_stack_2 = Me.Item(from_stack_1)
  loc_5ECC39: FLdRfVar var_B4
  loc_5ECC3C: LdPrVar
  loc_5ECC3E: LateMemCall
  loc_5ECC44: FFreeAd var_88 = "": var_8C = ""
  loc_5ECC4D: FFreeVar var_A4 = ""
  loc_5ECC54: ExitProcHresult
End Sub

Private Sub MnuAnulacionAjusteN_Click() '5D62CC
  'Data Table: 460894
  loc_5D62A4: LitStr "I"
  loc_5D62A7: ImpAdLdRf MemVar_74DD94
  loc_5D62AA: NewIfNullPr FrmFechas
  loc_5D62AD: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D62B2: LitVar_Missing var_A4
  loc_5D62B5: PopAdLdVar
  loc_5D62B6: LitVarI4
  loc_5D62BE: PopAdLdVar
  loc_5D62BF: ImpAdLdRf MemVar_74DD94
  loc_5D62C2: NewIfNullPr FrmFechas
  loc_5D62C5: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D62CA: ExitProcHresult
End Sub

Private Sub mnuFlotas_Click() '621C58
  'Data Table: 460894
  loc_621B1C: FLdRfVar var_1D4
  loc_621B1F: LitVar_Missing var_1D0
  loc_621B22: LitVar_Missing var_1B0
  loc_621B25: LitVar_Missing var_190
  loc_621B28: LitVar_Missing var_170
  loc_621B2B: LitVar_Missing var_150
  loc_621B2E: LitVar_Missing var_130
  loc_621B31: LitVar_Missing var_110
  loc_621B34: LitVar_Missing var_F0
  loc_621B37: LitVar_Missing var_D0
  loc_621B3A: LitVar_Missing var_B0
  loc_621B3D: LitStr "Hubo un error al cargar la aplicación de YPF en Ruta."
  loc_621B40: FStStrCopy var_90
  loc_621B43: FLdRfVar var_90
  loc_621B46: LitI4 &H91
  loc_621B4B: PopTmpLdAdStr var_8C
  loc_621B4E: LitI2_Byte &HA
  loc_621B50: PopTmpLdAd2 var_86
  loc_621B53: ImpAdLdRf MemVar_74C7D0
  loc_621B56: NewIfNullPr clsMsg
  loc_621B59: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_621B5E: ILdRf var_1D4
  loc_621B61: FLdPr Me
  loc_621B64: MemStStrCopy
  loc_621B68: FFreeStr var_90 = ""
  loc_621B6F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_621B88: LitI2_Byte &H4D
  loc_621B8A: PopTmpLdAd2 var_86
  loc_621B8D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_621B92: NotI4
  loc_621B93: BranchF loc_621B99
  loc_621B98: ExitProcHresult
  loc_621B9D: OnErrorGoto loc_621C38
  loc_621BA2: FLdPr Me
  loc_621BA5: MemLdFPR8 global_104
  loc_621BA8: LitI2_Byte 0
  loc_621BAA: CR8I2
  loc_621BAB: NeR8
  loc_621BAC: BranchF loc_621BCA
  loc_621BB1: LitVar_Missing var_B0
  loc_621BB4: FLdPr Me
  loc_621BB7: MemLdRfVar from_stack_1.global_104
  loc_621BBA: CVarRef
  loc_621BBF: ImpAdCallFPR4 AppActivate(, )
  loc_621BC4: FFree1Var var_B0 = ""
  loc_621BC7: Branch loc_621C33
  loc_621BCE: On Error Resume Next
  loc_621BD3: LitI2_Byte 0
  loc_621BD5: CR8I2
  loc_621BD6: FLdPr Me
  loc_621BD9: MemStFPR8 global_104
  loc_621BDE: LitI4 1
  loc_621BE3: FLdPr Me
  loc_621BE6: MemLdRfVar from_stack_1.sFlotasEXE
  loc_621BE9: CVarRef
  loc_621BEE: ImpAdCallFPR4 push Shell(, )
  loc_621BF3: FLdPr Me
  loc_621BF6: MemStFPR8 global_104
  loc_621BFB: FLdPr Me
  loc_621BFE: MemLdFPR8 global_104
  loc_621C01: LitI2_Byte 0
  loc_621C03: CR8I2
  loc_621C04: EqR4
  loc_621C05: BranchF loc_621C31
  loc_621C0A: LitVar_Missing var_F0
  loc_621C0D: LitVar_Missing var_D0
  loc_621C10: LitVar_Missing var_B0
  loc_621C13: LitI4 &H10
  loc_621C18: FLdPr Me
  loc_621C1B: MemLdRfVar from_stack_1.global_7568
  loc_621C1E: CVarRef
  loc_621C23: ImpAdCallFPR4 MsgBox(, , , , )
  loc_621C28: FFreeVar var_B0 = "": var_D0 = ""
  loc_621C37: ExitProcHresult
  loc_621C3A: LitI4 1
  loc_621C3F: FLdPr Me
  loc_621C42: MemLdRfVar from_stack_1.sFlotasEXE
  loc_621C45: CVarRef
  loc_621C4A: ImpAdCallFPR4 push Shell(, )
  loc_621C4F: FLdPr Me
  loc_621C52: MemStFPR8 global_104
  loc_621C57: ExitProcHresult
End Sub

Private Sub mnuTarjetaContado_Click() '602C44
  'Data Table: 460894
  loc_602B70: LitI2_Byte &H63
  loc_602B72: PopTmpLdAd2 var_86
  loc_602B75: ImpAdCallI2 Proc_94_7_603DD0()
  loc_602B7A: NotI4
  loc_602B7B: BranchF loc_602B81
  loc_602B80: ExitProcHresult
  loc_602B85: OnErrorGoto loc_602C22
  loc_602B8A: FLdPr Me
  loc_602B8D: MemLdFPR8 global_120
  loc_602B90: LitI2_Byte 0
  loc_602B92: CR8I2
  loc_602B93: NeR8
  loc_602B94: BranchF loc_602BB2
  loc_602B99: LitVar_Missing var_B8
  loc_602B9C: FLdPr Me
  loc_602B9F: MemLdRfVar from_stack_1.global_120
  loc_602BA2: CVarRef
  loc_602BA7: ImpAdCallFPR4 AppActivate(, )
  loc_602BAC: FFree1Var var_B8 = ""
  loc_602BAF: Branch loc_602C1D
  loc_602BB6: On Error Resume Next
  loc_602BBB: LitI2_Byte 0
  loc_602BBD: CR8I2
  loc_602BBE: FLdPr Me
  loc_602BC1: MemStFPR8 global_120
  loc_602BC6: LitI4 1
  loc_602BCB: FLdPr Me
  loc_602BCE: MemLdRfVar from_stack_1.sTarjetaContadoEXE
  loc_602BD1: CVarRef
  loc_602BD6: ImpAdCallFPR4 push Shell(, )
  loc_602BDB: FLdPr Me
  loc_602BDE: MemStFPR8 global_120
  loc_602BE3: FLdPr Me
  loc_602BE6: MemLdFPR8 global_120
  loc_602BE9: LitI2_Byte 0
  loc_602BEB: CR8I2
  loc_602BEC: EqR4
  loc_602BED: BranchF loc_602C1B
  loc_602BF2: LitVar_Missing var_108
  loc_602BF5: LitVar_Missing var_E8
  loc_602BF8: LitVar_Missing var_C8
  loc_602BFB: LitI4 &H10
  loc_602C00: LitVarStr var_98, "Hubo un error al cargar la aplicación de TarjetaContado"
  loc_602C05: FStVarCopyObj var_B8
  loc_602C08: FLdRfVar var_B8
  loc_602C0B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_602C10: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_602C21: ExitProcHresult
  loc_602C24: LitI4 1
  loc_602C29: FLdPr Me
  loc_602C2C: MemLdRfVar from_stack_1.sTarjetaContadoEXE
  loc_602C2F: CVarRef
  loc_602C34: ImpAdCallFPR4 push Shell(, )
  loc_602C39: FLdPr Me
  loc_602C3C: MemStFPR8 global_120
  loc_602C41: ExitProcHresult
End Sub

Private Sub mnuCierreRed21N_Click() '5E3F00
  'Data Table: 460894
  loc_5E3E98: LitI2_Byte &H25
  loc_5E3E9A: PopTmpLdAd2 var_86
  loc_5E3E9D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E3EA2: NotI4
  loc_5E3EA3: BranchF loc_5E3EA7
  loc_5E3EA6: ExitProcHresult
  loc_5E3EA7: LitI2_Byte 0
  loc_5E3EA9: FLdPrThis
  loc_5E3EAA: VCallAd Control_ID_Reloj
  loc_5E3EAD: FStAdFunc var_8C
  loc_5E3EB0: FLdPr var_8C
  loc_5E3EB3: Me.Enabled = from_stack_1b
  loc_5E3EB8: FFree1Ad var_8C
  loc_5E3EBB: LitStr "R"
  loc_5E3EBE: ImpAdLdRf MemVar_74DC6C
  loc_5E3EC1: NewIfNullPr Reportes_Anteriores
  loc_5E3EC4: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E3EC9: LitI2_Byte 0
  loc_5E3ECB: ImpAdLdRf MemVar_74DC6C
  loc_5E3ECE: NewIfNullPr Reportes_Anteriores
  loc_5E3ED1: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5E3ED6: LitVar_Missing var_AC
  loc_5E3ED9: PopAdLdVar
  loc_5E3EDA: LitVarI2 var_9C, 1
  loc_5E3EDF: PopAdLdVar
  loc_5E3EE0: ImpAdLdRf MemVar_74DC6C
  loc_5E3EE3: NewIfNullPr Reportes_Anteriores
  loc_5E3EE6: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E3EEB: LitI2_Byte &HFF
  loc_5E3EED: FLdPrThis
  loc_5E3EEE: VCallAd Control_ID_Reloj
  loc_5E3EF1: FStAdFunc var_8C
  loc_5E3EF4: FLdPr var_8C
  loc_5E3EF7: Me.Enabled = from_stack_1b
  loc_5E3EFC: FFree1Ad var_8C
  loc_5E3EFF: ExitProcHresult
End Sub

Private Sub mnugenericConfiguracion_Click(Index As Integer) '5E69F8
  'Data Table: 460894
  loc_5E6994: LitVarStr var_C4, vbNullString
  loc_5E6999: PopAdLdVar
  loc_5E699A: FLdRfVar var_B4
  loc_5E699D: FLdRfVar var_90
  loc_5E69A0: FLdRfVar var_8C
  loc_5E69A3: ILdI2 Index
  loc_5E69A6: FLdPrThis
  loc_5E69A7: VCallAd Control_ID_mnugenericConfiguracion
  loc_5E69AA: FStAdFunc var_88
  loc_5E69AD: FLdPr var_88
  loc_5E69B0: Set from_stack_2 = Me(from_stack_1)
  loc_5E69B5: FLdPr var_8C
  loc_5E69B8:  = Me.Tag
  loc_5E69BD: FLdZeroAd var_90
  loc_5E69C0: CVarStr var_A4
  loc_5E69C3: FLdRfVar var_94
  loc_5E69C6: ImpAdLdPr unk_460BCA
  loc_5E69C9: MemLdPr global_0
  loc_5E69CC:  = Forms
  loc_5E69D1: FLdPr var_94
  loc_5E69D4: from_stack_2 = Me.Item(from_stack_1)
  loc_5E69D9: FLdRfVar var_B4
  loc_5E69DC: LdPrVar
  loc_5E69DE: LateMemCall
  loc_5E69E4: FFreeAd var_88 = "": var_8C = ""
  loc_5E69ED: FFreeVar var_A4 = ""
  loc_5E69F4: ExitProcHresult
End Sub

Private Sub MnuTipoCierre_Click() '5D5404
  'Data Table: 460894
  loc_5D53DC: LitI2_Byte &H25
  loc_5D53DE: PopTmpLdAd2 var_86
  loc_5D53E1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D53E6: NotI4
  loc_5D53E7: BranchF loc_5D53EB
  loc_5D53EA: ExitProcHresult
  loc_5D53EB: LitVar_Missing var_A8
  loc_5D53EE: PopAdLdVar
  loc_5D53EF: LitVarI4
  loc_5D53F7: PopAdLdVar
  loc_5D53F8: ImpAdLdRf MemVar_74DCA8
  loc_5D53FB: NewIfNullPr TiposCierres
  loc_5D53FE: TiposCierres.Show from_stack_1, from_stack_2
  loc_5D5403: ExitProcHresult
End Sub

Private Sub mnuCierresRed21MensualesN_Click() '60EC24
  'Data Table: 460894
  loc_60EB14: LitI2_Byte &H25
  loc_60EB16: PopTmpLdAd2 var_86
  loc_60EB19: ImpAdCallI2 Proc_94_7_603DD0()
  loc_60EB1E: NotI4
  loc_60EB1F: BranchF loc_60EB23
  loc_60EB22: ExitProcHresult
  loc_60EB23: LitStr "mensual"
  loc_60EB26: FLdPr Me
  loc_60EB29: MemStStrCopy
  loc_60EB2D: LitI2_Byte 0
  loc_60EB2F: ImpAdLdRf MemVar_74D9DC
  loc_60EB32: NewIfNullPr frmCierresRed21Mensuales
  loc_60EB35: VCallAd Control_ID_Frame1
  loc_60EB38: FStAdFunc var_8C
  loc_60EB3B: FLdPr var_8C
  loc_60EB3E: frmCierresRed21Mensuales.Frame.Visible = from_stack_1b
  loc_60EB43: FFree1Ad var_8C
  loc_60EB46: LitI2_Byte 0
  loc_60EB48: ImpAdLdRf MemVar_74D9DC
  loc_60EB4B: NewIfNullPr frmCierresRed21Mensuales
  loc_60EB4E: VCallAd Control_ID_CmbDay
  loc_60EB51: FStAdFunc var_8C
  loc_60EB54: FLdPr var_8C
  loc_60EB57: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EB5C: FFree1Ad var_8C
  loc_60EB5F: LitI2_Byte 0
  loc_60EB61: ImpAdLdRf MemVar_74D9DC
  loc_60EB64: NewIfNullPr frmCierresRed21Mensuales
  loc_60EB67: VCallAd Control_ID_cmbDay2
  loc_60EB6A: FStAdFunc var_8C
  loc_60EB6D: FLdPr var_8C
  loc_60EB70: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EB75: FFree1Ad var_8C
  loc_60EB78: LitI2_Byte 0
  loc_60EB7A: ImpAdLdRf MemVar_74D9DC
  loc_60EB7D: NewIfNullPr frmCierresRed21Mensuales
  loc_60EB80: VCallAd Control_ID_cmbMonth2
  loc_60EB83: FStAdFunc var_8C
  loc_60EB86: FLdPr var_8C
  loc_60EB89: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EB8E: FFree1Ad var_8C
  loc_60EB91: LitI2_Byte 0
  loc_60EB93: ImpAdLdRf MemVar_74D9DC
  loc_60EB96: NewIfNullPr frmCierresRed21Mensuales
  loc_60EB99: VCallAd Control_ID_cmbYear2
  loc_60EB9C: FStAdFunc var_8C
  loc_60EB9F: FLdPr var_8C
  loc_60EBA2: frmCierresRed21Mensuales.ComboBox.Visible = from_stack_1b
  loc_60EBA7: FFree1Ad var_8C
  loc_60EBAA: LitI2_Byte 0
  loc_60EBAC: ImpAdLdRf MemVar_74D9DC
  loc_60EBAF: NewIfNullPr frmCierresRed21Mensuales
  loc_60EBB2: VCallAd Control_ID_Frame2
  loc_60EBB5: FStAdFunc var_8C
  loc_60EBB8: FLdPr var_8C
  loc_60EBBB: frmCierresRed21Mensuales.Frame.Visible = from_stack_1b
  loc_60EBC0: FFree1Ad var_8C
  loc_60EBC3: LitI2_Byte 0
  loc_60EBC5: ImpAdLdRf MemVar_74D9DC
  loc_60EBC8: NewIfNullPr frmCierresRed21Mensuales
  loc_60EBCB: VCallAd Control_ID_Label14
  loc_60EBCE: FStAdFunc var_8C
  loc_60EBD1: FLdPr var_8C
  loc_60EBD4: frmCierresRed21Mensuales.Label.Visible = from_stack_1b
  loc_60EBD9: FFree1Ad var_8C
  loc_60EBDC: LitI2_Byte 0
  loc_60EBDE: ImpAdLdRf MemVar_74D9DC
  loc_60EBE1: NewIfNullPr frmCierresRed21Mensuales
  loc_60EBE4: VCallAd Control_ID_Label15
  loc_60EBE7: FStAdFunc var_8C
  loc_60EBEA: FLdPr var_8C
  loc_60EBED: frmCierresRed21Mensuales.Label.Visible = from_stack_1b
  loc_60EBF2: FFree1Ad var_8C
  loc_60EBF5: LitI2_Byte 0
  loc_60EBF7: ImpAdLdRf MemVar_74D9DC
  loc_60EBFA: NewIfNullPr frmCierresRed21Mensuales
  loc_60EBFD: VCallAd Control_ID_Label13
  loc_60EC00: FStAdFunc var_8C
  loc_60EC03: FLdPr var_8C
  loc_60EC06: frmCierresRed21Mensuales.Label.Visible = from_stack_1b
  loc_60EC0B: FFree1Ad var_8C
  loc_60EC0E: LitVar_Missing var_AC
  loc_60EC11: PopAdLdVar
  loc_60EC12: LitVarI2 var_9C, 1
  loc_60EC17: PopAdLdVar
  loc_60EC18: ImpAdLdRf MemVar_74D9DC
  loc_60EC1B: NewIfNullPr frmCierresRed21Mensuales
  loc_60EC1E: frmCierresRed21Mensuales.Show from_stack_1, from_stack_2
  loc_60EC23: ExitProcHresult
End Sub

Private Sub mnuIntranet_Click() '5F50E4
  'Data Table: 460894
  loc_5F503C: LitI2_Byte &H66
  loc_5F503E: PopTmpLdAd2 var_8A
  loc_5F5041: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5F5046: NotI4
  loc_5F5047: BranchF loc_5F504B
  loc_5F504A: ExitProcHresult
  loc_5F504B: LitI4 &H3E8
  loc_5F5050: ImpAdCallI2 Space$()
  loc_5F5055: FStStr var_88
  loc_5F5058: LitStr "CEM44.INI"
  loc_5F505B: FLdRfVar var_A0
  loc_5F505E: CStr2Ansi
  loc_5F505F: ILdRf var_A0
  loc_5F5062: LitI4 &H3E8
  loc_5F5067: ILdRf var_88
  loc_5F506A: FLdRfVar var_9C
  loc_5F506D: CStr2Ansi
  loc_5F506E: ILdRf var_9C
  loc_5F5071: LitStr vbNullString
  loc_5F5074: FLdRfVar var_98
  loc_5F5077: CStr2Ansi
  loc_5F5078: ILdRf var_98
  loc_5F507B: LitStr "PaginaInicial"
  loc_5F507E: FLdRfVar var_94
  loc_5F5081: CStr2Ansi
  loc_5F5082: ILdRf var_94
  loc_5F5085: LitStr "Intranet"
  loc_5F5088: FLdRfVar var_90
  loc_5F508B: CStr2Ansi
  loc_5F508C: ILdRf var_90
  loc_5F508F: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_5F5094: SetLastSystemError
  loc_5F5095: ILdRf var_9C
  loc_5F5098: FLdRfVar var_88
  loc_5F509B: CStr2Uni
  loc_5F509D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_5F50AA: ILdRf var_88
  loc_5F50AD: ImpAdCallI2 Trim$()
  loc_5F50B2: FStStr var_88
  loc_5F50B5: ILdRf var_88
  loc_5F50B8: FnLenStr
  loc_5F50B9: LitI4 0
  loc_5F50BE: GtI4
  loc_5F50BF: BranchF loc_5F50E3
  loc_5F50C2: ILdRf var_88
  loc_5F50C5: ImpAdLdRf MemVar_74DC1C
  loc_5F50C8: NewIfNullPr CEMBrowser
  loc_5F50CB: Call CEMBrowser.StartingAddressPut(from_stack_1v)
  loc_5F50D0: LitVar_Missing var_C0
  loc_5F50D3: PopAdLdVar
  loc_5F50D4: LitVar_Missing var_B0
  loc_5F50D7: PopAdLdVar
  loc_5F50D8: ImpAdLdRf MemVar_74DC1C
  loc_5F50DB: NewIfNullPr CEMBrowser
  loc_5F50DE: CEMBrowser.Show from_stack_1, from_stack_2
  loc_5F50E3: ExitProcHresult
End Sub

Private Sub RESUMEN_DE_CUENTA_Click() '5D8390
  'Data Table: 460894
  loc_5D835C: LitI2_Byte &H12
  loc_5D835E: PopTmpLdAd2 var_86
  loc_5D8361: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D8366: NotI4
  loc_5D8367: BranchF loc_5D836B
  loc_5D836A: ExitProcHresult
  loc_5D836B: LitI2_Byte 0
  loc_5D836D: PopTmpLdAd2 var_86
  loc_5D8370: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5D8375: BranchF loc_5D838D
  loc_5D8378: LitVar_Missing var_A8
  loc_5D837B: PopAdLdVar
  loc_5D837C: LitVarI2 var_98, 1
  loc_5D8381: PopAdLdVar
  loc_5D8382: ImpAdLdRf MemVar_74DADC
  loc_5D8385: NewIfNullPr ResumenDeCuenta
  loc_5D8388: ResumenDeCuenta.Show from_stack_1, from_stack_2
  loc_5D838D: ExitProcHresult
End Sub

Private Sub mnugenericSubOperMan2_Click(Index As Integer) '5ED4C4
  'Data Table: 460894
  loc_5ED448: LitI4 3
  loc_5ED44D: ILdI2 Index
  loc_5ED450: CI4UI1
  loc_5ED451: LitI4 1
  loc_5ED456: ImpAdLdPr unk_460BCE
  loc_5ED459: MemLdRfVar from_stack_1.global_2880
  loc_5ED45C: AryInRecLdRf
  loc_5ED462: CDargRef
  loc_5ED466: FLdRfVar var_B4
  loc_5ED469: FLdRfVar var_90
  loc_5ED46C: FLdRfVar var_8C
  loc_5ED46F: ILdI2 Index
  loc_5ED472: FLdPrThis
  loc_5ED473: VCallAd Control_ID_mnugenericSubOperMan2
  loc_5ED476: FStAdFunc var_88
  loc_5ED479: FLdPr var_88
  loc_5ED47C: Set from_stack_2 = Me(from_stack_1)
  loc_5ED481: FLdPr var_8C
  loc_5ED484:  = Me.Tag
  loc_5ED489: FLdZeroAd var_90
  loc_5ED48C: CVarStr var_A4
  loc_5ED48F: FLdRfVar var_94
  loc_5ED492: ImpAdLdPr unk_460BCA
  loc_5ED495: MemLdPr global_0
  loc_5ED498:  = Forms
  loc_5ED49D: FLdPr var_94
  loc_5ED4A0: from_stack_2 = Me.Item(from_stack_1)
  loc_5ED4A5: FLdRfVar var_B4
  loc_5ED4A8: LdPrVar
  loc_5ED4AA: LateMemCall
  loc_5ED4B0: FFreeAd var_88 = "": var_8C = ""
  loc_5ED4B9: FFreeVar var_A4 = ""
  loc_5ED4C0: ExitProcHresult
End Sub

Private Sub CAMBIO_NRO_COMPRO_Click() '5E9C10
  'Data Table: 460894
  loc_5E9B98: LitI4 &H25
  loc_5E9B9D: ImpAdLdRf MemVar_74A170
  loc_5E9BA0: Ary1LdI2
  loc_5E9BA1: NotI4
  loc_5E9BA2: CVarBoolI2 var_104
  loc_5E9BA6: LitVarI2 var_B4, 3
  loc_5E9BAB: LitI4 1
  loc_5E9BB0: ImpAdLdRf MemVar_74BF90
  loc_5E9BB3: CVarRef
  loc_5E9BB8: FLdRfVar var_C4
  loc_5E9BBB: ImpAdCallFPR4  = Mid(, , )
  loc_5E9BC0: FLdRfVar var_C4
  loc_5E9BC3: LitVarStr var_D4, "\\."
  loc_5E9BC8: HardType
  loc_5E9BC9: EqVar var_E4
  loc_5E9BCD: NotVar var_F4
  loc_5E9BD1: AndVar var_114
  loc_5E9BD5: CBoolVarNull
  loc_5E9BD7: FFreeVar var_B4 = "": var_C4 = ""
  loc_5E9BE0: BranchF loc_5E9BE9
  loc_5E9BE3: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5E9BE8: ExitProcHresult
  loc_5E9BE9: LitI2_Byte &H17
  loc_5E9BEB: PopTmpLdAd2 var_116
  loc_5E9BEE: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E9BF3: NotI4
  loc_5E9BF4: BranchF loc_5E9BF8
  loc_5E9BF7: ExitProcHresult
  loc_5E9BF8: LitVar_Missing var_A4
  loc_5E9BFB: PopAdLdVar
  loc_5E9BFC: LitVarI2 var_94, 1
  loc_5E9C01: PopAdLdVar
  loc_5E9C02: ImpAdLdRf MemVar_74DB40
  loc_5E9C05: NewIfNullPr NewInvoiceNumber
  loc_5E9C08: NewInvoiceNumber.Show from_stack_1, from_stack_2
  loc_5E9C0D: ExitProcHresult
End Sub

Private Sub mnuServiclub_Click() '6222D8
  'Data Table: 460894
  loc_62219C: LitI2_Byte &H4E
  loc_62219E: PopTmpLdAd2 var_86
  loc_6221A1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6221A6: NotI4
  loc_6221A7: BranchF loc_6221AD
  loc_6221AC: ExitProcHresult
  loc_6221B1: OnErrorGoto loc_6222B8
  loc_6221B6: FLdPr Me
  loc_6221B9: MemLdFPR8 global_112
  loc_6221BC: LitI2_Byte 0
  loc_6221BE: CR8I2
  loc_6221BF: NeR8
  loc_6221C0: BranchF loc_6221DE
  loc_6221C5: LitVar_Missing var_B8
  loc_6221C8: FLdPr Me
  loc_6221CB: MemLdRfVar from_stack_1.global_112
  loc_6221CE: CVarRef
  loc_6221D3: ImpAdCallFPR4 AppActivate(, )
  loc_6221D8: FFree1Var var_B8 = ""
  loc_6221DB: Branch loc_6222B3
  loc_6221E2: On Error Resume Next
  loc_6221E7: LitI2_Byte 0
  loc_6221E9: CR8I2
  loc_6221EA: FLdPr Me
  loc_6221ED: MemStFPR8 global_112
  loc_6221F2: LitI4 1
  loc_6221F7: FLdPr Me
  loc_6221FA: MemLdRfVar from_stack_1.sServiclubEXE
  loc_6221FD: CVarRef
  loc_622202: ImpAdCallFPR4 push Shell(, )
  loc_622207: FLdPr Me
  loc_62220A: MemStFPR8 global_112
  loc_62220F: FLdRfVar var_1D4
  loc_622212: LitVar_Missing var_1D0
  loc_622215: LitVar_Missing var_1B0
  loc_622218: LitVar_Missing var_190
  loc_62221B: LitVar_Missing var_170
  loc_62221E: LitVar_Missing var_150
  loc_622221: LitVar_Missing var_130
  loc_622224: LitVar_Missing var_110
  loc_622227: LitVar_Missing var_F0
  loc_62222A: LitVar_Missing var_D0
  loc_62222D: LitVar_Missing var_B8
  loc_622230: LitStr "Hubo un error al cargar la aplicación de Serviclub."
  loc_622233: FStStrCopy var_C0
  loc_622236: FLdRfVar var_C0
  loc_622239: LitI4 &H96
  loc_62223E: PopTmpLdAdStr var_BC
  loc_622241: LitI2_Byte &HA
  loc_622243: PopTmpLdAd2 var_86
  loc_622246: ImpAdLdRf MemVar_74C7D0
  loc_622249: NewIfNullPr clsMsg
  loc_62224C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_622251: ILdRf var_1D4
  loc_622254: FLdPr Me
  loc_622257: MemStStrCopy
  loc_62225B: FFreeStr var_C0 = ""
  loc_622262: FFreeVar var_B8 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_62227B: FLdPr Me
  loc_62227E: MemLdFPR8 global_112
  loc_622281: LitI2_Byte 0
  loc_622283: CR8I2
  loc_622284: EqR4
  loc_622285: BranchF loc_6222B1
  loc_62228A: LitVar_Missing var_F0
  loc_62228D: LitVar_Missing var_D0
  loc_622290: LitVar_Missing var_B8
  loc_622293: LitI4 &H10
  loc_622298: FLdPr Me
  loc_62229B: MemLdRfVar from_stack_1.global_7592
  loc_62229E: CVarRef
  loc_6222A3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6222A8: FFreeVar var_B8 = "": var_D0 = ""
  loc_6222B7: ExitProcHresult
  loc_6222BA: LitI4 1
  loc_6222BF: FLdPr Me
  loc_6222C2: MemLdRfVar from_stack_1.sServiclubEXE
  loc_6222C5: CVarRef
  loc_6222CA: ImpAdCallFPR4 push Shell(, )
  loc_6222CF: FLdPr Me
  loc_6222D2: MemStFPR8 global_112
  loc_6222D7: ExitProcHresult
End Sub

Private Sub mnugenericOperMan_Click(Index As Integer) '5E6544
  'Data Table: 460894
  loc_5E64E0: LitVarStr var_C4, vbNullString
  loc_5E64E5: PopAdLdVar
  loc_5E64E6: FLdRfVar var_B4
  loc_5E64E9: FLdRfVar var_90
  loc_5E64EC: FLdRfVar var_8C
  loc_5E64EF: ILdI2 Index
  loc_5E64F2: FLdPrThis
  loc_5E64F3: VCallAd Control_ID_mnugenericOperMan
  loc_5E64F6: FStAdFunc var_88
  loc_5E64F9: FLdPr var_88
  loc_5E64FC: Set from_stack_2 = Me(from_stack_1)
  loc_5E6501: FLdPr var_8C
  loc_5E6504:  = Me.Tag
  loc_5E6509: FLdZeroAd var_90
  loc_5E650C: CVarStr var_A4
  loc_5E650F: FLdRfVar var_94
  loc_5E6512: ImpAdLdPr unk_460BCA
  loc_5E6515: MemLdPr global_0
  loc_5E6518:  = Forms
  loc_5E651D: FLdPr var_94
  loc_5E6520: from_stack_2 = Me.Item(from_stack_1)
  loc_5E6525: FLdRfVar var_B4
  loc_5E6528: LdPrVar
  loc_5E652A: LateMemCall
  loc_5E6530: FFreeAd var_88 = "": var_8C = ""
  loc_5E6539: FFreeVar var_A4 = ""
  loc_5E6540: ExitProcHresult
End Sub

Private Sub mnuAlSalir_Click() '5C80AC
  'Data Table: 460894
  loc_5C80A8: End
  loc_5C80AA: ExitProcHresult
End Sub

Private Sub mnuOperacionesEspecialesn_Click() '5D57CC
  'Data Table: 460894
  loc_5D57A4: LitI2_Byte &H26
  loc_5D57A6: PopTmpLdAd2 var_86
  loc_5D57A9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D57AE: NotI4
  loc_5D57AF: BranchF loc_5D57B3
  loc_5D57B2: ExitProcHresult
  loc_5D57B3: LitVar_Missing var_A8
  loc_5D57B6: PopAdLdVar
  loc_5D57B7: LitVarI4
  loc_5D57BF: PopAdLdVar
  loc_5D57C0: ImpAdLdRf MemVar_74E18C
  loc_5D57C3: NewIfNullPr OperacionesEspeciales
  loc_5D57C6: OperacionesEspeciales.Show from_stack_1, from_stack_2
  loc_5D57CB: ExitProcHresult
End Sub

Private Sub mnuUltimaFacturaDif_Click() '5F3310
  'Data Table: 460894
  loc_5F3270: LitI2_Byte 0
  loc_5F3272: FLdPrThis
  loc_5F3273: VCallAd Control_ID_Reloj
  loc_5F3276: FStAdFunc var_88
  loc_5F3279: FLdPr var_88
  loc_5F327C: Me.Enabled = from_stack_1b
  loc_5F3281: FFree1Ad var_88
  loc_5F3284: LitVar_TRUE var_98
  loc_5F3287: PopAdLdVar
  loc_5F3288: FLdPrThis
  loc_5F3289: VCallAd Control_ID_PanelCierres
  loc_5F328C: FStAdFunc var_88
  loc_5F328F: FLdPr var_88
  loc_5F3292: LateIdSt
  loc_5F3297: FFree1Ad var_88
  loc_5F329A: FLdPr Me
  loc_5F329D: MemLdStr global_7544
  loc_5F32A0: CVarStr var_98
  loc_5F32A3: PopAdLdVar
  loc_5F32A4: FLdPrThis
  loc_5F32A5: VCallAd Control_ID_PanelCierres
  loc_5F32A8: FStAdFunc var_88
  loc_5F32AB: FLdPr var_88
  loc_5F32AE: LateIdSt
  loc_5F32B3: FFree1Ad var_88
  loc_5F32B6: LitVar_Missing var_F8
  loc_5F32B9: LitVar_Missing var_D8
  loc_5F32BC: LitVar_Missing var_B8
  loc_5F32BF: LitI4 0
  loc_5F32C4: FLdPr Me
  loc_5F32C7: MemLdRfVar from_stack_1.global_7548
  loc_5F32CA: CVarRef
  loc_5F32CF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_5F32D4: FFreeVar var_B8 = "": var_D8 = ""
  loc_5F32DD: LitI2_Byte 0
  loc_5F32DF: Call ImpresionFacturaDiferencia(from_stack_1v)
  loc_5F32E4: LitVar_FALSE
  loc_5F32E8: PopAdLdVar
  loc_5F32E9: FLdPrThis
  loc_5F32EA: VCallAd Control_ID_PanelCierres
  loc_5F32ED: FStAdFunc var_88
  loc_5F32F0: FLdPr var_88
  loc_5F32F3: LateIdSt
  loc_5F32F8: FFree1Ad var_88
  loc_5F32FB: LitI2_Byte &HFF
  loc_5F32FD: FLdPrThis
  loc_5F32FE: VCallAd Control_ID_Reloj
  loc_5F3301: FStAdFunc var_88
  loc_5F3304: FLdPr var_88
  loc_5F3307: Me.Enabled = from_stack_1b
  loc_5F330C: FFree1Ad var_88
  loc_5F330F: ExitProcHresult
End Sub

Private Sub MnuMezcla_Click() '5CDCB0
  'Data Table: 460894
  loc_5CDCA4: FLdRfVar var_94
  loc_5CDCA7: from_stack_1v = ReporteMezclas()
  loc_5CDCAC: FFree1Var var_94 = ""
  loc_5CDCAF: ExitProcHresult
End Sub

Private Sub RepDelCurso_Click() '5D8D50
  'Data Table: 460894
  loc_5D8D20: LitI2_Byte &H6C
  loc_5D8D22: PopTmpLdAd2 var_86
  loc_5D8D25: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D8D2A: NotI4
  loc_5D8D2B: BranchF loc_5D8D2F
  loc_5D8D2E: ExitProcHresult
  loc_5D8D2F: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_5D8D34: FLdRfVar var_86
  loc_5D8D37: LitVarI2 var_A8, 1
  loc_5D8D3C: LitStr "ClickButtonEnCurso"
  loc_5D8D3F: ImpAdLdPr unk_4608E6
  loc_5D8D42: MemLdPr global_0
  loc_5D8D45: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_5D8D4A: FFree1Var var_A8 = ""
  loc_5D8D4D: ExitProcHresult
End Sub

Private Sub mnuMinimizar_Click() '6140B8
  'Data Table: 460894
  loc_613FB8: FLdPr Me
  loc_613FBB: Me.Hide
  loc_613FC0: FLdRfVar var_8A
  loc_613FC3: FLdRfVar var_88
  loc_613FC6: ImpAdLdRf MemVar_7520D4
  loc_613FC9: NewIfNullPr Global
  loc_613FCC:  = Global.App
  loc_613FD1: FLdPr var_88
  loc_613FD4:  = App.PrevInstance
  loc_613FD9: FLdI2 var_8A
  loc_613FDC: FFree1Ad var_88
  loc_613FDF: BranchF loc_613FFE
  loc_613FE2: Call mnuRestaurar_Click()
  loc_613FE7: ILdRf Me
  loc_613FEA: FStAdNoPop
  loc_613FEE: ImpAdLdRf MemVar_7520D4
  loc_613FF1: NewIfNullPr Global
  loc_613FF4: Global.Unload from_stack_1
  loc_613FF9: FFree1Ad var_88
  loc_613FFC: End
  loc_613FFE: LitI4 &H58
  loc_614003: FLdPr Me
  loc_614006: MemStI4 sSeccionesSeleccionadas92
  loc_614009: FLdRfVar var_90
  loc_61400C: FLdPrThis
  loc_61400D: VCallAd Control_ID_Picture1
  loc_614010: FStAdFunc var_88
  loc_614013: FLdPr var_88
  loc_614016:  = Me.hWnd
  loc_61401B: ILdRf var_90
  loc_61401E: FLdPr Me
  loc_614021: MemStI4 sSeccionesSeleccionadas96
  loc_614024: FFree1Ad var_88
  loc_614027: LitI4 1
  loc_61402C: FLdPr Me
  loc_61402F: MemStI4 global_7700
  loc_614032: LitI4 7
  loc_614037: FLdPr Me
  loc_61403A: MemStI4 global_7704
  loc_61403D: LitI4 &H200
  loc_614042: FLdPr Me
  loc_614045: MemStI4 global_7708
  loc_614048: FLdRfVar var_88
  loc_61404B: FLdPr Me
  loc_61404E:  = Me.Icon
  loc_614053: FLdPr var_88
  loc_614056: LateIdLdVar var_A0 DispID_0 0
  loc_61405D: CI4Var
  loc_61405F: FLdPr Me
  loc_614062: MemStI4 global_7712
  loc_614065: FFree1Ad var_88
  loc_614068: FFree1Var var_A0 = ""
  loc_61406B: LitStr "CEM44 Consola Remota"
  loc_61406E: LitI4 0
  loc_614073: ImpAdCallI2 Chr$()
  loc_614078: FStStrNoPop var_A4
  loc_61407B: ConcatStr
  loc_61407C: FStStrNoPop var_A8
  loc_61407F: FLdPr Me
  loc_614082: MemLdRfVar from_stack_1.global_7716
  loc_614085: StFixedStr
  loc_614088: FFreeStr var_A4 = ""
  loc_61408F: FLdPr Me
  loc_614092: MemLdRfVar from_stack_1.sSeccionesSeleccionadas92
  loc_614095: FLdRfVar var_100
  loc_614098: CRec2Ansi arg_1B9
  loc_61409B: FLdRfVar var_100
  loc_61409E: LitI4 0
  loc_6140A3: ImpAdCallFPR4 Shell_NotifyIcon(, )
  loc_6140A8: SetLastSystemError
  loc_6140A9: FLdRfVar var_100
  loc_6140AC: FLdPr Me
  loc_6140AF: MemLdRfVar from_stack_1.sSeccionesSeleccionadas92
  loc_6140B2: CRec2Uni arg_1B9
  loc_6140B5: ExitProcHresult
End Sub

Private Sub frmAcercaDe_Click() '5D280C
  'Data Table: 460894
  loc_5D27F0: LitVar_Missing var_A4
  loc_5D27F3: PopAdLdVar
  loc_5D27F4: LitVarI4
  loc_5D27FC: PopAdLdVar
  loc_5D27FD: ImpAdLdRf MemVar_74CAEC
  loc_5D2800: NewIfNullPr frmAbout
  loc_5D2803: frmAbout.Show from_stack_1, from_stack_2
  loc_5D2808: ExitProcHresult
End Sub

Private Sub mnuColor_Click() '5D65E4
  'Data Table: 460894
  loc_5D65BC: LitI2_Byte &H60
  loc_5D65BE: PopTmpLdAd2 var_86
  loc_5D65C1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D65C6: NotI4
  loc_5D65C7: BranchF loc_5D65CB
  loc_5D65CA: ExitProcHresult
  loc_5D65CB: LitVar_Missing var_A8
  loc_5D65CE: PopAdLdVar
  loc_5D65CF: LitVarI4
  loc_5D65D7: PopAdLdVar
  loc_5D65D8: ImpAdLdRf MemVar_74E240
  loc_5D65DB: NewIfNullPr frmProductColor
  loc_5D65DE: frmProductColor.Show from_stack_1, from_stack_2
  loc_5D65E3: ExitProcHresult
End Sub

Private Sub mnugenericPrecios_Click(Index As Integer) '5E694C
  'Data Table: 460894
  loc_5E68E8: LitVarStr var_C4, vbNullString
  loc_5E68ED: PopAdLdVar
  loc_5E68EE: FLdRfVar var_B4
  loc_5E68F1: FLdRfVar var_90
  loc_5E68F4: FLdRfVar var_8C
  loc_5E68F7: ILdI2 Index
  loc_5E68FA: FLdPrThis
  loc_5E68FB: VCallAd Control_ID_mnugenericPrecios
  loc_5E68FE: FStAdFunc var_88
  loc_5E6901: FLdPr var_88
  loc_5E6904: Set from_stack_2 = Me(from_stack_1)
  loc_5E6909: FLdPr var_8C
  loc_5E690C:  = Me.Tag
  loc_5E6911: FLdZeroAd var_90
  loc_5E6914: CVarStr var_A4
  loc_5E6917: FLdRfVar var_94
  loc_5E691A: ImpAdLdPr unk_460BCA
  loc_5E691D: MemLdPr global_0
  loc_5E6920:  = Forms
  loc_5E6925: FLdPr var_94
  loc_5E6928: from_stack_2 = Me.Item(from_stack_1)
  loc_5E692D: FLdRfVar var_B4
  loc_5E6930: LdPrVar
  loc_5E6932: LateMemCall
  loc_5E6938: FFreeAd var_88 = "": var_8C = ""
  loc_5E6941: FFreeVar var_A4 = ""
  loc_5E6948: ExitProcHresult
End Sub

Private Sub Debitos_Click() '5E52C0
  'Data Table: 460894
  loc_5E524C: LitI2_Byte 0
  loc_5E524E: FLdPrThis
  loc_5E524F: VCallAd Control_ID_Reloj
  loc_5E5252: FStAdFunc var_88
  loc_5E5255: FLdPr var_88
  loc_5E5258: Me.Enabled = from_stack_1b
  loc_5E525D: FFree1Ad var_88
  loc_5E5260: LitI2_Byte &H3C
  loc_5E5262: PopTmpLdAd2 var_8A
  loc_5E5265: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E526A: NotI4
  loc_5E526B: BranchF loc_5E5283
  loc_5E526E: LitI2_Byte &HFF
  loc_5E5270: FLdPrThis
  loc_5E5271: VCallAd Control_ID_Reloj
  loc_5E5274: FStAdFunc var_88
  loc_5E5277: FLdPr var_88
  loc_5E527A: Me.Enabled = from_stack_1b
  loc_5E527F: FFree1Ad var_88
  loc_5E5282: ExitProcHresult
  loc_5E5283: LitStr "B"
  loc_5E5286: ImpAdLdRf MemVar_74DC6C
  loc_5E5289: NewIfNullPr Reportes_Anteriores
  loc_5E528C: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E5291: LitVar_Missing var_AC
  loc_5E5294: PopAdLdVar
  loc_5E5295: LitVarI4
  loc_5E529D: PopAdLdVar
  loc_5E529E: ImpAdLdRf MemVar_74DC6C
  loc_5E52A1: NewIfNullPr Reportes_Anteriores
  loc_5E52A4: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E52A9: LitI2_Byte &HFF
  loc_5E52AB: FLdPrThis
  loc_5E52AC: VCallAd Control_ID_Reloj
  loc_5E52AF: FStAdFunc var_88
  loc_5E52B2: FLdPr var_88
  loc_5E52B5: Me.Enabled = from_stack_1b
  loc_5E52BA: FFree1Ad var_88
  loc_5E52BD: ExitProcHresult
End Sub

Private Sub mnuProgramacion_Click() '5EA678
  'Data Table: 460894
  loc_5EA5FC: LitI4 &H2A
  loc_5EA601: ImpAdLdRf MemVar_74A170
  loc_5EA604: Ary1LdI2
  loc_5EA605: NotI4
  loc_5EA606: CVarBoolI2 var_104
  loc_5EA60A: LitVarI2 var_B4, 3
  loc_5EA60F: LitI4 1
  loc_5EA614: ImpAdLdRf MemVar_74BF90
  loc_5EA617: CVarRef
  loc_5EA61C: FLdRfVar var_C4
  loc_5EA61F: ImpAdCallFPR4  = Mid(, , )
  loc_5EA624: FLdRfVar var_C4
  loc_5EA627: LitVarStr var_D4, "\\."
  loc_5EA62C: HardType
  loc_5EA62D: EqVar var_E4
  loc_5EA631: NotVar var_F4
  loc_5EA635: AndVar var_114
  loc_5EA639: CBoolVarNull
  loc_5EA63B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EA644: BranchF loc_5EA64D
  loc_5EA647: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EA64C: ExitProcHresult
  loc_5EA64D: LitI2_Byte &H39
  loc_5EA64F: PopTmpLdAd2 var_116
  loc_5EA652: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EA657: NotI4
  loc_5EA658: BranchF loc_5EA65C
  loc_5EA65B: ExitProcHresult
  loc_5EA65C: LitVar_Missing var_A4
  loc_5EA65F: PopAdLdVar
  loc_5EA660: LitVarI4
  loc_5EA668: PopAdLdVar
  loc_5EA669: ImpAdLdRf MemVar_74CA44
  loc_5EA66C: NewIfNullPr frmProgramacionEventos
  loc_5EA66F: frmProgramacionEventos.Show from_stack_1, from_stack_2
  loc_5EA674: ExitProcHresult
End Sub

Private Sub tmrHardLock_Timer() '5D72A4
  'Data Table: 460894
  loc_5D7274: ImpAdLdI2 MemVar_74BFE0
  loc_5D7277: BranchF loc_5D727B
  loc_5D727A: ExitProcHresult
  loc_5D727B: FLdPr Me
  loc_5D727E: MemLdI2 global_90
  loc_5D7281: LitI2_Byte 5
  loc_5D7283: GtI2
  loc_5D7284: BranchF loc_5D7294
  loc_5D7287: ImpAdCallFPR4 Proc_167_26_62E538()
  loc_5D728C: ImpAdCallFPR4 Proc_167_27_69B6AC()
  loc_5D7291: Branch loc_5D72A3
  loc_5D7294: FLdPr Me
  loc_5D7297: MemLdI2 global_90
  loc_5D729A: LitI2_Byte 1
  loc_5D729C: AddI2
  loc_5D729D: FLdPr Me
  loc_5D72A0: MemStI2 global_90
  loc_5D72A3: ExitProcHresult
End Sub

Private Sub mnuReporteTicket_Click() '5D566C
  'Data Table: 460894
  loc_5D5644: LitI2_Byte &H4C
  loc_5D5646: PopTmpLdAd2 var_86
  loc_5D5649: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D564E: NotI4
  loc_5D564F: BranchF loc_5D5653
  loc_5D5652: ExitProcHresult
  loc_5D5653: LitVar_Missing var_A8
  loc_5D5656: PopAdLdVar
  loc_5D5657: LitVarI4
  loc_5D565F: PopAdLdVar
  loc_5D5660: ImpAdLdRf MemVar_74E204
  loc_5D5663: NewIfNullPr frmReporteTickets
  loc_5D5666: frmReporteTickets.Show from_stack_1, from_stack_2
  loc_5D566B: ExitProcHresult
End Sub

Private Sub mnuListadoClientes_Click() '5D5A34
  'Data Table: 460894
  loc_5D5A0C: LitI2_Byte &H48
  loc_5D5A0E: PopTmpLdAd2 var_86
  loc_5D5A11: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D5A16: NotI4
  loc_5D5A17: BranchF loc_5D5A1B
  loc_5D5A1A: ExitProcHresult
  loc_5D5A1B: LitVar_Missing var_A8
  loc_5D5A1E: PopAdLdVar
  loc_5D5A1F: LitVarI4
  loc_5D5A27: PopAdLdVar
  loc_5D5A28: ImpAdLdRf MemVar_74DA54
  loc_5D5A2B: NewIfNullPr frmListadoClientes
  loc_5D5A2E: frmListadoClientes.Show from_stack_1, from_stack_2
  loc_5D5A33: ExitProcHresult
End Sub

Private Sub SETUP_MANUAL_Click() '6AA8E8
  'Data Table: 460894
  loc_6AA1C4: ImpAdLdI2 MemVar_74C7C2
  loc_6AA1C7: BranchF loc_6AA1F4
  loc_6AA1CA: LitVar_Missing var_110
  loc_6AA1CD: LitVar_Missing var_F0
  loc_6AA1D0: LitVar_Missing var_D0
  loc_6AA1D3: LitI4 &H40
  loc_6AA1D8: LitVarStr var_A0, "No se puede cambiar la configuración remotamente"
  loc_6AA1DD: FStVarCopyObj var_B0
  loc_6AA1E0: FLdRfVar var_B0
  loc_6AA1E3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6AA1E8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_6AA1F3: ExitProcHresult
  loc_6AA1F4: LitStr vbNullString
  loc_6AA1F7: FStStrCopy var_8C
  loc_6AA1FA: FLdRfVar var_B0
  loc_6AA1FD: FLdRfVar var_88
  loc_6AA200: FLdRfVar var_114
  loc_6AA203: ImpAdLdRf MemVar_74C760
  loc_6AA206: NewIfNullPr Formx
  loc_6AA209: from_stack_1v = Formx.global_4589716Get()
  loc_6AA20E: FLdPr var_114
  loc_6AA211: Call 0.Method_arg_1EC ()
  loc_6AA216: FLdRfVar var_B0
  loc_6AA219: NotVar var_D0
  loc_6AA21D: CBoolVarNull
  loc_6AA21F: FFree1Ad var_114
  loc_6AA222: FFree1Var var_B0 = ""
  loc_6AA225: BranchF loc_6AA23F
  loc_6AA228: FLdRfVar var_B0
  loc_6AA22B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6AA230: FLdRfVar var_B0
  loc_6AA233: CBoolVarNull
  loc_6AA235: FFree1Var var_B0 = ""
  loc_6AA238: BranchF loc_6AA23C
  loc_6AA23B: ExitProcHresult
  loc_6AA23C: Branch loc_6AA1FA
  loc_6AA23F: FLdRfVar var_1E4
  loc_6AA242: LitVar_Missing var_1E0
  loc_6AA245: LitVar_Missing var_1C0
  loc_6AA248: LitVar_Missing var_1A0
  loc_6AA24B: LitVar_Missing var_180
  loc_6AA24E: LitVar_Missing var_160
  loc_6AA251: LitVar_Missing var_140
  loc_6AA254: LitVar_Missing var_110
  loc_6AA257: LitVar_Missing var_F0
  loc_6AA25A: LitVar_Missing var_D0
  loc_6AA25D: LitVar_Missing var_B0
  loc_6AA260: LitStr "Turno"
  loc_6AA263: FStStrCopy var_120
  loc_6AA266: FLdRfVar var_120
  loc_6AA269: LitI4 &H97
  loc_6AA26E: PopTmpLdAdStr var_11C
  loc_6AA271: LitI2_Byte &HA
  loc_6AA273: PopTmpLdAd2 var_116
  loc_6AA276: ImpAdLdRf MemVar_74C7D0
  loc_6AA279: NewIfNullPr clsMsg
  loc_6AA27C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA281: ILdRf var_1E4
  loc_6AA284: FLdPr Me
  loc_6AA287: MemStStrCopy
  loc_6AA28B: FFreeStr var_120 = ""
  loc_6AA292: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA2A9: FLdRfVar var_1E4
  loc_6AA2AC: LitVar_Missing var_1E0
  loc_6AA2AF: LitVar_Missing var_1C0
  loc_6AA2B2: LitVar_Missing var_1A0
  loc_6AA2B5: LitVar_Missing var_180
  loc_6AA2B8: LitVar_Missing var_160
  loc_6AA2BB: LitVar_Missing var_140
  loc_6AA2BE: LitVar_Missing var_110
  loc_6AA2C1: LitVar_Missing var_F0
  loc_6AA2C4: LitVar_Missing var_D0
  loc_6AA2C7: LitVar_Missing var_B0
  loc_6AA2CA: LitStr "Día"
  loc_6AA2CD: FStStrCopy var_120
  loc_6AA2D0: FLdRfVar var_120
  loc_6AA2D3: LitI4 &H98
  loc_6AA2D8: PopTmpLdAdStr var_11C
  loc_6AA2DB: LitI2_Byte &HA
  loc_6AA2DD: PopTmpLdAd2 var_116
  loc_6AA2E0: ImpAdLdRf MemVar_74C7D0
  loc_6AA2E3: NewIfNullPr clsMsg
  loc_6AA2E6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA2EB: ILdRf var_1E4
  loc_6AA2EE: FLdPr Me
  loc_6AA2F1: MemStStrCopy
  loc_6AA2F5: FFreeStr var_120 = ""
  loc_6AA2FC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA313: FLdRfVar var_1E4
  loc_6AA316: LitVar_Missing var_1E0
  loc_6AA319: LitVar_Missing var_1C0
  loc_6AA31C: LitVar_Missing var_1A0
  loc_6AA31F: LitVar_Missing var_180
  loc_6AA322: LitVar_Missing var_160
  loc_6AA325: LitVar_Missing var_140
  loc_6AA328: LitVar_Missing var_110
  loc_6AA32B: LitVar_Missing var_F0
  loc_6AA32E: LitVar_Missing var_D0
  loc_6AA331: LitVar_Missing var_B0
  loc_6AA334: LitStr "Mes"
  loc_6AA337: FStStrCopy var_120
  loc_6AA33A: FLdRfVar var_120
  loc_6AA33D: LitI4 &H99
  loc_6AA342: PopTmpLdAdStr var_11C
  loc_6AA345: LitI2_Byte &HA
  loc_6AA347: PopTmpLdAd2 var_116
  loc_6AA34A: ImpAdLdRf MemVar_74C7D0
  loc_6AA34D: NewIfNullPr clsMsg
  loc_6AA350: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA355: ILdRf var_1E4
  loc_6AA358: FLdPr Me
  loc_6AA35B: MemStStrCopy
  loc_6AA35F: FFreeStr var_120 = ""
  loc_6AA366: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA37D: FLdRfVar var_1E4
  loc_6AA380: LitVar_Missing var_1E0
  loc_6AA383: LitVar_Missing var_1C0
  loc_6AA386: LitVar_Missing var_1A0
  loc_6AA389: LitVar_Missing var_180
  loc_6AA38C: LitVar_Missing var_160
  loc_6AA38F: LitVar_Missing var_140
  loc_6AA392: LitVar_Missing var_110
  loc_6AA395: LitVar_Missing var_F0
  loc_6AA398: LitVar_Missing var_D0
  loc_6AA39B: LitVar_Missing var_B0
  loc_6AA39E: LitStr "y"
  loc_6AA3A1: FStStrCopy var_120
  loc_6AA3A4: FLdRfVar var_120
  loc_6AA3A7: LitI4 &H9A
  loc_6AA3AC: PopTmpLdAdStr var_11C
  loc_6AA3AF: LitI2_Byte &HA
  loc_6AA3B1: PopTmpLdAd2 var_116
  loc_6AA3B4: ImpAdLdRf MemVar_74C7D0
  loc_6AA3B7: NewIfNullPr clsMsg
  loc_6AA3BA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA3BF: ILdRf var_1E4
  loc_6AA3C2: FLdPr Me
  loc_6AA3C5: MemStStrCopy
  loc_6AA3C9: FFreeStr var_120 = ""
  loc_6AA3D0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA3E7: FLdRfVar var_1E4
  loc_6AA3EA: LitVar_Missing var_1E0
  loc_6AA3ED: LitVar_Missing var_1C0
  loc_6AA3F0: LitVar_Missing var_1A0
  loc_6AA3F3: LitVar_Missing var_180
  loc_6AA3F6: LitVar_Missing var_160
  loc_6AA3F9: LitVar_Missing var_140
  loc_6AA3FC: LitVar_Missing var_110
  loc_6AA3FF: LitVar_Missing var_F0
  loc_6AA402: LitVar_Missing var_D0
  loc_6AA405: LitVar_Missing var_B0
  loc_6AA408: LitStr "Tiene abierto un"
  loc_6AA40B: FStStrCopy var_120
  loc_6AA40E: FLdRfVar var_120
  loc_6AA411: LitI4 &H9B
  loc_6AA416: PopTmpLdAdStr var_11C
  loc_6AA419: LitI2_Byte &HA
  loc_6AA41B: PopTmpLdAd2 var_116
  loc_6AA41E: ImpAdLdRf MemVar_74C7D0
  loc_6AA421: NewIfNullPr clsMsg
  loc_6AA424: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA429: ILdRf var_1E4
  loc_6AA42C: FLdPr Me
  loc_6AA42F: MemStStrCopy
  loc_6AA433: FFreeStr var_120 = ""
  loc_6AA43A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA451: FLdRfVar var_1E4
  loc_6AA454: LitVar_Missing var_1E0
  loc_6AA457: LitVar_Missing var_1C0
  loc_6AA45A: LitVar_Missing var_1A0
  loc_6AA45D: LitVar_Missing var_180
  loc_6AA460: LitVar_Missing var_160
  loc_6AA463: LitVar_Missing var_140
  loc_6AA466: LitVar_Missing var_110
  loc_6AA469: LitVar_Missing var_F0
  loc_6AA46C: LitVar_Missing var_D0
  loc_6AA46F: LitVar_Missing var_B0
  loc_6AA472: LitStr "Tiene un surtidor fuera de linea con aforadores manuales cargados"
  loc_6AA475: FStStrCopy var_120
  loc_6AA478: FLdRfVar var_120
  loc_6AA47B: LitI4 &H9C
  loc_6AA480: PopTmpLdAdStr var_11C
  loc_6AA483: LitI2_Byte &HA
  loc_6AA485: PopTmpLdAd2 var_116
  loc_6AA488: ImpAdLdRf MemVar_74C7D0
  loc_6AA48B: NewIfNullPr clsMsg
  loc_6AA48E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA493: ILdRf var_1E4
  loc_6AA496: FLdPr Me
  loc_6AA499: MemStStrCopy
  loc_6AA49D: FFreeStr var_120 = ""
  loc_6AA4A4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA4BB: FLdRfVar var_1E4
  loc_6AA4BE: LitVar_Missing var_1E0
  loc_6AA4C1: LitVar_Missing var_1C0
  loc_6AA4C4: LitVar_Missing var_1A0
  loc_6AA4C7: LitVar_Missing var_180
  loc_6AA4CA: LitVar_Missing var_160
  loc_6AA4CD: LitVar_Missing var_140
  loc_6AA4D0: LitVar_Missing var_110
  loc_6AA4D3: LitVar_Missing var_F0
  loc_6AA4D6: LitVar_Missing var_D0
  loc_6AA4D9: LitVar_Missing var_B0
  loc_6AA4DC: LitStr "Ademas tiene un surtidor fuera de linea con aforadores manuales cargados"
  loc_6AA4DF: FStStrCopy var_120
  loc_6AA4E2: FLdRfVar var_120
  loc_6AA4E5: LitI4 &H9D
  loc_6AA4EA: PopTmpLdAdStr var_11C
  loc_6AA4ED: LitI2_Byte &HA
  loc_6AA4EF: PopTmpLdAd2 var_116
  loc_6AA4F2: ImpAdLdRf MemVar_74C7D0
  loc_6AA4F5: NewIfNullPr clsMsg
  loc_6AA4F8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA4FD: ILdRf var_1E4
  loc_6AA500: FLdPr Me
  loc_6AA503: MemStStrCopy
  loc_6AA507: FFreeStr var_120 = ""
  loc_6AA50E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA525: FLdRfVar var_1E4
  loc_6AA528: LitVar_Missing var_1E0
  loc_6AA52B: LitVar_Missing var_1C0
  loc_6AA52E: LitVar_Missing var_1A0
  loc_6AA531: LitVar_Missing var_180
  loc_6AA534: LitVar_Missing var_160
  loc_6AA537: LitVar_Missing var_140
  loc_6AA53A: LitVar_Missing var_110
  loc_6AA53D: LitVar_Missing var_F0
  loc_6AA540: LitVar_Missing var_D0
  loc_6AA543: LitVar_Missing var_B0
  loc_6AA546: LitStr "Puede haber cambios que no se apliquen. ¿Desea continuar?"
  loc_6AA549: FStStrCopy var_120
  loc_6AA54C: FLdRfVar var_120
  loc_6AA54F: LitI4 &H9E
  loc_6AA554: PopTmpLdAdStr var_11C
  loc_6AA557: LitI2_Byte &HA
  loc_6AA559: PopTmpLdAd2 var_116
  loc_6AA55C: ImpAdLdRf MemVar_74C7D0
  loc_6AA55F: NewIfNullPr clsMsg
  loc_6AA562: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6AA567: ILdRf var_1E4
  loc_6AA56A: FLdPr Me
  loc_6AA56D: MemStStrCopy
  loc_6AA571: FFreeStr var_120 = ""
  loc_6AA578: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = ""
  loc_6AA58F: LitI2_Byte 0
  loc_6AA591: ImpAdStI2 MemVar_74C6B4
  loc_6AA594: LitVarI2 var_B0, 1
  loc_6AA599: LitI4 1
  loc_6AA59E: FLdRfVar var_88
  loc_6AA5A1: CVarRef
  loc_6AA5A6: FLdRfVar var_D0
  loc_6AA5A9: ImpAdCallFPR4  = Mid(, , )
  loc_6AA5AE: FLdRfVar var_D0
  loc_6AA5B1: LitVarStr var_E0, "1"
  loc_6AA5B6: HardType
  loc_6AA5B7: EqVarBool
  loc_6AA5B9: FFreeVar var_B0 = ""
  loc_6AA5C0: BranchF loc_6AA611
  loc_6AA5C3: FLdPr Me
  loc_6AA5C6: MemLdStr global_7596
  loc_6AA5C9: LitStr ", "
  loc_6AA5CC: ConcatStr
  loc_6AA5CD: FStStrNoPop var_120
  loc_6AA5D0: FLdPr Me
  loc_6AA5D3: MemLdStr sSeccionesSeleccionadas00
  loc_6AA5D6: ConcatStr
  loc_6AA5D7: FStStrNoPop var_1E4
  loc_6AA5DA: LitStr " "
  loc_6AA5DD: ConcatStr
  loc_6AA5DE: FStStrNoPop var_1E8
  loc_6AA5E1: FLdPr Me
  loc_6AA5E4: MemLdStr sSeccionesSeleccionadas08
  loc_6AA5E7: ConcatStr
  loc_6AA5E8: FStStrNoPop var_1EC
  loc_6AA5EB: LitStr " "
  loc_6AA5EE: ConcatStr
  loc_6AA5EF: FStStrNoPop var_1F0
  loc_6AA5F2: FLdPr Me
  loc_6AA5F5: MemLdStr sSeccionesSeleccionadas04
  loc_6AA5F8: ConcatStr
  loc_6AA5F9: FStStr var_8C
  loc_6AA5FC: FFreeStr var_120 = "": var_1E4 = "": var_1E8 = "": var_1EC = ""
  loc_6AA609: LitI2_Byte &HFF
  loc_6AA60B: ImpAdStI2 MemVar_74C6B4
  loc_6AA60E: Branch loc_6AA6C3
  loc_6AA611: LitVarI2 var_B0, 1
  loc_6AA616: LitI4 2
  loc_6AA61B: FLdRfVar var_88
  loc_6AA61E: CVarRef
  loc_6AA623: FLdRfVar var_D0
  loc_6AA626: ImpAdCallFPR4  = Mid(, , )
  loc_6AA62B: FLdRfVar var_D0
  loc_6AA62E: LitVarStr var_E0, "1"
  loc_6AA633: HardType
  loc_6AA634: EqVarBool
  loc_6AA636: FFreeVar var_B0 = ""
  loc_6AA63D: BranchF loc_6AA682
  loc_6AA640: FLdPr Me
  loc_6AA643: MemLdStr sSeccionesSeleccionadas00
  loc_6AA646: LitStr " "
  loc_6AA649: ConcatStr
  loc_6AA64A: FStStrNoPop var_120
  loc_6AA64D: FLdPr Me
  loc_6AA650: MemLdStr sSeccionesSeleccionadas08
  loc_6AA653: ConcatStr
  loc_6AA654: FStStrNoPop var_1E4
  loc_6AA657: LitStr " "
  loc_6AA65A: ConcatStr
  loc_6AA65B: FStStrNoPop var_1E8
  loc_6AA65E: FLdPr Me
  loc_6AA661: MemLdStr sSeccionesSeleccionadas04
  loc_6AA664: ConcatStr
  loc_6AA665: FStStrNoPop var_1EC
  loc_6AA668: LitStr ". "
  loc_6AA66B: ConcatStr
  loc_6AA66C: FStStr var_8C
  loc_6AA66F: FFreeStr var_120 = "": var_1E4 = "": var_1E8 = ""
  loc_6AA67A: LitI2_Byte &HFF
  loc_6AA67C: ImpAdStI2 MemVar_74C6B4
  loc_6AA67F: Branch loc_6AA6C3
  loc_6AA682: LitVarI2 var_B0, 1
  loc_6AA687: LitI4 3
  loc_6AA68C: FLdRfVar var_88
  loc_6AA68F: CVarRef
  loc_6AA694: FLdRfVar var_D0
  loc_6AA697: ImpAdCallFPR4  = Mid(, , )
  loc_6AA69C: FLdRfVar var_D0
  loc_6AA69F: LitVarStr var_E0, "1"
  loc_6AA6A4: HardType
  loc_6AA6A5: EqVarBool
  loc_6AA6A7: FFreeVar var_B0 = ""
  loc_6AA6AE: BranchF loc_6AA6C3
  loc_6AA6B1: FLdPr Me
  loc_6AA6B4: MemLdStr sSeccionesSeleccionadas04
  loc_6AA6B7: LitStr ". "
  loc_6AA6BA: ConcatStr
  loc_6AA6BB: FStStr var_8C
  loc_6AA6BE: LitI2_Byte &HFF
  loc_6AA6C0: ImpAdStI2 MemVar_74C6B4
  loc_6AA6C3: ILdRf var_8C
  loc_6AA6C6: LitStr vbNullString
  loc_6AA6C9: NeStr
  loc_6AA6CB: BranchF loc_6AA6E5
  loc_6AA6CE: FLdPr Me
  loc_6AA6D1: MemLdStr sSeccionesSeleccionadas12
  loc_6AA6D4: LitStr "  "
  loc_6AA6D7: ConcatStr
  loc_6AA6D8: FStStrNoPop var_120
  loc_6AA6DB: ILdRf var_8C
  loc_6AA6DE: ConcatStr
  loc_6AA6DF: FStStr var_8C
  loc_6AA6E2: FFree1Str var_120
  loc_6AA6E5: LitVarI2 var_B0, 1
  loc_6AA6EA: LitI4 5
  loc_6AA6EF: FLdRfVar var_88
  loc_6AA6F2: CVarRef
  loc_6AA6F7: FLdRfVar var_D0
  loc_6AA6FA: ImpAdCallFPR4  = Mid(, , )
  loc_6AA6FF: FLdRfVar var_D0
  loc_6AA702: LitVarStr var_E0, "1"
  loc_6AA707: HardType
  loc_6AA708: EqVarBool
  loc_6AA70A: FFreeVar var_B0 = ""
  loc_6AA711: BranchF loc_6AA75F
  loc_6AA714: ILdRf var_8C
  loc_6AA717: LitStr vbNullString
  loc_6AA71A: EqStr
  loc_6AA71C: BranchF loc_6AA72B
  loc_6AA71F: FLdPr Me
  loc_6AA722: MemLdStr sSeccionesSeleccionadas16
  loc_6AA725: FStStrCopy var_8C
  loc_6AA728: Branch loc_6AA75F
  loc_6AA72B: ILdRf var_8C
  loc_6AA72E: CVarStr var_A0
  loc_6AA731: LitI4 &HD
  loc_6AA736: FLdRfVar var_B0
  loc_6AA739: ImpAdCallFPR4  = Chr()
  loc_6AA73E: FLdRfVar var_B0
  loc_6AA741: ConcatVar var_D0
  loc_6AA745: FLdPr Me
  loc_6AA748: MemLdStr sSeccionesSeleccionadas20
  loc_6AA74B: CVarStr var_C0
  loc_6AA74E: ConcatVar var_F0
  loc_6AA752: CStrVarTmp
  loc_6AA753: FStStr var_8C
  loc_6AA756: FFreeVar var_B0 = "": var_D0 = ""
  loc_6AA75F: ILdRf var_8C
  loc_6AA762: LitStr vbNullString
  loc_6AA765: NeStr
  loc_6AA767: BranchF loc_6AA7BD
  loc_6AA76A: LitI4 &HD
  loc_6AA76F: FLdRfVar var_B0
  loc_6AA772: ImpAdCallFPR4  = Chr()
  loc_6AA777: LitVar_Missing var_160
  loc_6AA77A: LitVar_Missing var_140
  loc_6AA77D: LitVar_Missing var_110
  loc_6AA780: LitI4 &H44
  loc_6AA785: ILdRf var_8C
  loc_6AA788: CVarStr var_A0
  loc_6AA78B: FLdRfVar var_B0
  loc_6AA78E: ConcatVar var_D0
  loc_6AA792: FLdPr Me
  loc_6AA795: MemLdStr sSeccionesSeleccionadas24
  loc_6AA798: CVarStr var_C0
  loc_6AA79B: ConcatVar var_F0
  loc_6AA79F: ImpAdCallI2 MsgBox(, , , , )
  loc_6AA7A4: LitI4 7
  loc_6AA7A9: EqI4
  loc_6AA7AA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_140 = ""
  loc_6AA7B9: BranchF loc_6AA7BD
  loc_6AA7BC: ExitProcHresult
  loc_6AA7BD: LitI4 &H23
  loc_6AA7C2: ImpAdLdRf MemVar_74A170
  loc_6AA7C5: Ary1LdI2
  loc_6AA7C6: NotI4
  loc_6AA7C7: CVarBoolI2 var_100
  loc_6AA7CB: LitVarI2 var_B0, 3
  loc_6AA7D0: LitI4 1
  loc_6AA7D5: ImpAdLdRf MemVar_74BF90
  loc_6AA7D8: CVarRef
  loc_6AA7DD: FLdRfVar var_D0
  loc_6AA7E0: ImpAdCallFPR4  = Mid(, , )
  loc_6AA7E5: FLdRfVar var_D0
  loc_6AA7E8: LitVarStr var_E0, "\\."
  loc_6AA7ED: HardType
  loc_6AA7EE: EqVar var_F0
  loc_6AA7F2: NotVar var_110
  loc_6AA7F6: AndVar var_140
  loc_6AA7FA: CBoolVarNull
  loc_6AA7FC: FFreeVar var_B0 = "": var_D0 = ""
  loc_6AA805: BranchF loc_6AA80E
  loc_6AA808: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_6AA80D: ExitProcHresult
  loc_6AA80E: LitI2_Byte &H14
  loc_6AA810: PopTmpLdAd2 var_116
  loc_6AA813: ImpAdCallI2 Proc_94_7_603DD0()
  loc_6AA818: NotI4
  loc_6AA819: BranchF loc_6AA81D
  loc_6AA81C: ExitProcHresult
  loc_6AA81D: from_stack_1v = Proc_162_229_63F80C()
  loc_6AA822: LitI2_Byte &HFF
  loc_6AA824: FLdPrThis
  loc_6AA825: VCallAd Control_ID_Text1
  loc_6AA828: FStAdFunc var_114
  loc_6AA82B: FLdPr var_114
  loc_6AA82E: Me.Visible = from_stack_1b
  loc_6AA833: FFree1Ad var_114
  loc_6AA836: LitI2_Byte 0
  loc_6AA838: FLdPr Me
  loc_6AA83B: MemStI2 Cancelado
  loc_6AA83E: LitI2_Byte 0
  loc_6AA840: PopTmpLdAd2 var_116
  loc_6AA843: ImpAdCallI2 Proc_53_4_718EF4()
  loc_6AA848: BranchF loc_6AA8AF
  loc_6AA84B: ImpAdLdUI1
  loc_6AA84F: CI2UI1
  loc_6AA851: LitI2_Byte 1
  loc_6AA853: EqI2
  loc_6AA854: BranchF loc_6AA88B
  loc_6AA857: LitVar_FALSE
  loc_6AA85B: PopAdLdVar
  loc_6AA85C: ImpAdLdRf MemVar_74E150
  loc_6AA85F: NewIfNullPr fTipoProducto
  loc_6AA862: VCallAd Control_ID_SSCommand1
  loc_6AA865: FStAdFunc var_114
  loc_6AA868: FLdPr var_114
  loc_6AA86B: LateIdSt
  loc_6AA870: FFree1Ad var_114
  loc_6AA873: LitVar_Missing var_C0
  loc_6AA876: PopAdLdVar
  loc_6AA877: LitVarI2 var_A0, 1
  loc_6AA87C: PopAdLdVar
  loc_6AA87D: ImpAdLdRf MemVar_74E150
  loc_6AA880: NewIfNullPr fTipoProducto
  loc_6AA883: fTipoProducto.Show from_stack_1, from_stack_2
  loc_6AA888: Branch loc_6AA8AF
  loc_6AA88B: LitVar_Missing var_C0
  loc_6AA88E: PopAdLdVar
  loc_6AA88F: LitVarI2 var_A0, 1
  loc_6AA894: PopAdLdVar
  loc_6AA895: ImpAdLdRf MemVar_74E330
  loc_6AA898: NewIfNullPr fSurtidores
  loc_6AA89B: fSurtidores.Show from_stack_1, from_stack_2
  loc_6AA8A0: FLdPr Me
  loc_6AA8A3: MemLdI2 Cancelado
  loc_6AA8A6: NotI4
  loc_6AA8A7: BranchF loc_6AA8AF
  loc_6AA8AA: ImpAdCallFPR4 Proc_87_17_729AA4()
  loc_6AA8AF: LitI2_Byte 0
  loc_6AA8B1: FLdPrThis
  loc_6AA8B2: VCallAd Control_ID_Text1
  loc_6AA8B5: FStAdFunc var_114
  loc_6AA8B8: FLdPr var_114
  loc_6AA8BB: Me.Visible = from_stack_1b
  loc_6AA8C0: FFree1Ad var_114
  loc_6AA8C3: FLdRfVar var_116
  loc_6AA8C6: ImpAdLdRf MemVar_74A220
  loc_6AA8C9: NewIfNullPr clsProducts
  loc_6AA8CC: clsProducts.Top = from_stack_1s
  loc_6AA8D1: FLdI2 var_116
  loc_6AA8D4: FLdPrThis
  loc_6AA8D5: VCallAd Control_ID_MnuMezcla
  loc_6AA8D8: FStAdFunc var_114
  loc_6AA8DB: FLdPr var_114
  loc_6AA8DE: Me.Visible = from_stack_1b
  loc_6AA8E3: FFree1Ad var_114
  loc_6AA8E6: ExitProcHresult
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '5C96C0
  'Data Table: 460894
  loc_5C96B8: LitI2_Byte 0
  loc_5C96BA: ImpAdStI2 MemVar_74C7B0
  loc_5C96BD: ExitProcHresult
End Sub

Private Sub MnuRendicionVentasN_Click() '5D9760
  'Data Table: 460894
  loc_5D972C: LitI2_Byte &H2D
  loc_5D972E: ImpAdLdRf MemVar_74DD94
  loc_5D9731: NewIfNullPr FrmFechas
  loc_5D9734: Call FrmFechas.HistoricoPut(from_stack_1v)
  loc_5D9739: LitStr "G"
  loc_5D973C: ImpAdLdRf MemVar_74DD94
  loc_5D973F: NewIfNullPr FrmFechas
  loc_5D9742: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D9747: LitVar_Missing var_A8
  loc_5D974A: PopAdLdVar
  loc_5D974B: LitVarI4
  loc_5D9753: PopAdLdVar
  loc_5D9754: ImpAdLdRf MemVar_74DD94
  loc_5D9757: NewIfNullPr FrmFechas
  loc_5D975A: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D975F: ExitProcHresult
End Sub

Private Sub mnugenericSubPrecios0_Click(Index As Integer) '5ED33C
  'Data Table: 460894
  loc_5ED2C0: LitI4 1
  loc_5ED2C5: ILdI2 Index
  loc_5ED2C8: CI4UI1
  loc_5ED2C9: LitI4 1
  loc_5ED2CE: ImpAdLdPr unk_460BCE
  loc_5ED2D1: MemLdRfVar from_stack_1.global_1920
  loc_5ED2D4: AryInRecLdRf
  loc_5ED2DA: CDargRef
  loc_5ED2DE: FLdRfVar var_B4
  loc_5ED2E1: FLdRfVar var_90
  loc_5ED2E4: FLdRfVar var_8C
  loc_5ED2E7: ILdI2 Index
  loc_5ED2EA: FLdPrThis
  loc_5ED2EB: VCallAd Control_ID_mnugenericSubPrecios0
  loc_5ED2EE: FStAdFunc var_88
  loc_5ED2F1: FLdPr var_88
  loc_5ED2F4: Set from_stack_2 = Me(from_stack_1)
  loc_5ED2F9: FLdPr var_8C
  loc_5ED2FC:  = Me.Tag
  loc_5ED301: FLdZeroAd var_90
  loc_5ED304: CVarStr var_A4
  loc_5ED307: FLdRfVar var_94
  loc_5ED30A: ImpAdLdPr unk_460BCA
  loc_5ED30D: MemLdPr global_0
  loc_5ED310:  = Forms
  loc_5ED315: FLdPr var_94
  loc_5ED318: from_stack_2 = Me.Item(from_stack_1)
  loc_5ED31D: FLdRfVar var_B4
  loc_5ED320: LdPrVar
  loc_5ED322: LateMemCall
  loc_5ED328: FFreeAd var_88 = "": var_8C = ""
  loc_5ED331: FFreeVar var_A4 = ""
  loc_5ED338: ExitProcHresult
End Sub

Private Sub mnugenericSubPrecios2_Click(Index As Integer) '5ECD1C
  'Data Table: 460894
  loc_5ECCA0: LitI4 3
  loc_5ECCA5: ILdI2 Index
  loc_5ECCA8: CI4UI1
  loc_5ECCA9: LitI4 1
  loc_5ECCAE: ImpAdLdPr unk_460BCE
  loc_5ECCB1: MemLdRfVar from_stack_1.global_1920
  loc_5ECCB4: AryInRecLdRf
  loc_5ECCBA: CDargRef
  loc_5ECCBE: FLdRfVar var_B4
  loc_5ECCC1: FLdRfVar var_90
  loc_5ECCC4: FLdRfVar var_8C
  loc_5ECCC7: ILdI2 Index
  loc_5ECCCA: FLdPrThis
  loc_5ECCCB: VCallAd Control_ID_mnugenericSubPrecios2
  loc_5ECCCE: FStAdFunc var_88
  loc_5ECCD1: FLdPr var_88
  loc_5ECCD4: Set from_stack_2 = Me(from_stack_1)
  loc_5ECCD9: FLdPr var_8C
  loc_5ECCDC:  = Me.Tag
  loc_5ECCE1: FLdZeroAd var_90
  loc_5ECCE4: CVarStr var_A4
  loc_5ECCE7: FLdRfVar var_94
  loc_5ECCEA: ImpAdLdPr unk_460BCA
  loc_5ECCED: MemLdPr global_0
  loc_5ECCF0:  = Forms
  loc_5ECCF5: FLdPr var_94
  loc_5ECCF8: from_stack_2 = Me.Item(from_stack_1)
  loc_5ECCFD: FLdRfVar var_B4
  loc_5ECD00: LdPrVar
  loc_5ECD02: LateMemCall
  loc_5ECD08: FFreeAd var_88 = "": var_8C = ""
  loc_5ECD11: FFreeVar var_A4 = ""
  loc_5ECD18: ExitProcHresult
End Sub

Private Sub mnugenericSubPrecios1_Click(Index As Integer) '5ECEA4
  'Data Table: 460894
  loc_5ECE28: LitI4 2
  loc_5ECE2D: ILdI2 Index
  loc_5ECE30: CI4UI1
  loc_5ECE31: LitI4 1
  loc_5ECE36: ImpAdLdPr unk_460BCE
  loc_5ECE39: MemLdRfVar from_stack_1.global_1920
  loc_5ECE3C: AryInRecLdRf
  loc_5ECE42: CDargRef
  loc_5ECE46: FLdRfVar var_B4
  loc_5ECE49: FLdRfVar var_90
  loc_5ECE4C: FLdRfVar var_8C
  loc_5ECE4F: ILdI2 Index
  loc_5ECE52: FLdPrThis
  loc_5ECE53: VCallAd Control_ID_mnugenericSubPrecios1
  loc_5ECE56: FStAdFunc var_88
  loc_5ECE59: FLdPr var_88
  loc_5ECE5C: Set from_stack_2 = Me(from_stack_1)
  loc_5ECE61: FLdPr var_8C
  loc_5ECE64:  = Me.Tag
  loc_5ECE69: FLdZeroAd var_90
  loc_5ECE6C: CVarStr var_A4
  loc_5ECE6F: FLdRfVar var_94
  loc_5ECE72: ImpAdLdPr unk_460BCA
  loc_5ECE75: MemLdPr global_0
  loc_5ECE78:  = Forms
  loc_5ECE7D: FLdPr var_94
  loc_5ECE80: from_stack_2 = Me.Item(from_stack_1)
  loc_5ECE85: FLdRfVar var_B4
  loc_5ECE88: LdPrVar
  loc_5ECE8A: LateMemCall
  loc_5ECE90: FFreeAd var_88 = "": var_8C = ""
  loc_5ECE99: FFreeVar var_A4 = ""
  loc_5ECEA0: ExitProcHresult
End Sub

Private Sub mnugenericSubGestion1_Click(Index As Integer) '5EC328
  'Data Table: 460894
  loc_5EC2AC: LitI4 2
  loc_5EC2B1: ILdI2 Index
  loc_5EC2B4: CI4UI1
  loc_5EC2B5: LitI4 1
  loc_5EC2BA: ImpAdLdPr unk_460BCE
  loc_5EC2BD: MemLdRfVar from_stack_1.global_1440
  loc_5EC2C0: AryInRecLdRf
  loc_5EC2C6: CDargRef
  loc_5EC2CA: FLdRfVar var_B4
  loc_5EC2CD: FLdRfVar var_90
  loc_5EC2D0: FLdRfVar var_8C
  loc_5EC2D3: ILdI2 Index
  loc_5EC2D6: FLdPrThis
  loc_5EC2D7: VCallAd Control_ID_mnugenericSubGestion1
  loc_5EC2DA: FStAdFunc var_88
  loc_5EC2DD: FLdPr var_88
  loc_5EC2E0: Set from_stack_2 = Me(from_stack_1)
  loc_5EC2E5: FLdPr var_8C
  loc_5EC2E8:  = Me.Tag
  loc_5EC2ED: FLdZeroAd var_90
  loc_5EC2F0: CVarStr var_A4
  loc_5EC2F3: FLdRfVar var_94
  loc_5EC2F6: ImpAdLdPr unk_460BCA
  loc_5EC2F9: MemLdPr global_0
  loc_5EC2FC:  = Forms
  loc_5EC301: FLdPr var_94
  loc_5EC304: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC309: FLdRfVar var_B4
  loc_5EC30C: LdPrVar
  loc_5EC30E: LateMemCall
  loc_5EC314: FFreeAd var_88 = "": var_8C = ""
  loc_5EC31D: FFreeVar var_A4 = ""
  loc_5EC324: ExitProcHresult
End Sub

Private Sub mnuCierreMes_Click() '609AD8
  'Data Table: 460894
  loc_6099EC: FLdRfVar var_8E
  loc_6099EF: FLdPrThis
  loc_6099F0: VCallAd Control_ID_mnuCierreMes
  loc_6099F3: FStAdFunc var_8C
  loc_6099F6: FLdPr var_8C
  loc_6099F9:  = Me.Checked
  loc_6099FE: FLdI2 var_8E
  loc_609A01: NotI4
  loc_609A02: FLdPrThis
  loc_609A03: VCallAd Control_ID_mnuCierreMes
  loc_609A06: FStAdFunc var_94
  loc_609A09: FLdPr var_94
  loc_609A0C: Me.Checked = from_stack_1b
  loc_609A11: FFreeAd var_8C = ""
  loc_609A18: FLdRfVar var_8E
  loc_609A1B: FLdPrThis
  loc_609A1C: VCallAd Control_ID_mnuCierreMes
  loc_609A1F: FStAdFunc var_8C
  loc_609A22: FLdPr var_8C
  loc_609A25:  = Me.Checked
  loc_609A2A: FLdI2 var_8E
  loc_609A2D: FFree1Ad var_8C
  loc_609A30: BranchF loc_609A82
  loc_609A33: LitVarI2 var_B4, 1
  loc_609A38: LitI4 6
  loc_609A3D: ImpAdLdI4 MemVar_74BEAC
  loc_609A40: ImpAdCallI2 Mid$(, , )
  loc_609A45: FStStrNoPop var_B8
  loc_609A48: CUI1Str
  loc_609A4A: FStUI1 var_86
  loc_609A4E: FFree1Str var_B8
  loc_609A51: FFree1Var var_B4 = ""
  loc_609A54: FLdUI1
  loc_609A58: CI2UI1
  loc_609A5A: LitI2_Byte 4
  loc_609A5C: OrI4
  loc_609A5D: CUI1I2
  loc_609A5F: FStUI1 var_86
  loc_609A63: ImpAdLdRf MemVar_74BEAC
  loc_609A66: LitI4 6
  loc_609A6B: LitI4 1
  loc_609A70: FLdUI1
  loc_609A74: CStrI2
  loc_609A76: FStStrNoPop var_B8
  loc_609A79: MidStr arg_0
  loc_609A7C: FFree1Str var_B8
  loc_609A7F: Branch loc_609ACE
  loc_609A82: LitVarI2 var_B4, 1
  loc_609A87: LitI4 6
  loc_609A8C: ImpAdLdI4 MemVar_74BEAC
  loc_609A8F: ImpAdCallI2 Mid$(, , )
  loc_609A94: FStStrNoPop var_B8
  loc_609A97: CUI1Str
  loc_609A99: FStUI1 var_86
  loc_609A9D: FFree1Str var_B8
  loc_609AA0: FFree1Var var_B4 = ""
  loc_609AA3: FLdUI1
  loc_609AA7: CI2UI1
  loc_609AA9: LitI2_Byte 4
  loc_609AAB: SubI2
  loc_609AAC: CUI1I2
  loc_609AAE: FStUI1 var_86
  loc_609AB2: ImpAdLdRf MemVar_74BEAC
  loc_609AB5: LitI4 6
  loc_609ABA: LitI4 1
  loc_609ABF: FLdUI1
  loc_609AC3: CStrI2
  loc_609AC5: FStStrNoPop var_B8
  loc_609AC8: MidStr arg_0
  loc_609ACB: FFree1Str var_B8
  loc_609ACE: ImpAdLdRf MemVar_74BEAC
  loc_609AD1: ImpAdCallFPR4 Proc_167_22_5DC21C()
  loc_609AD6: ExitProcHresult
End Sub

Private Sub mnugenericSubCierre1_Click(Index As Integer) '5EBD08
  'Data Table: 460894
  loc_5EBC8C: LitI4 2
  loc_5EBC91: ILdI2 Index
  loc_5EBC94: CI4UI1
  loc_5EBC95: LitI4 1
  loc_5EBC9A: ImpAdLdPr unk_460BCE
  loc_5EBC9D: MemLdRfVar from_stack_1.global_0
  loc_5EBCA0: AryInRecLdRf
  loc_5EBCA6: CDargRef
  loc_5EBCAA: FLdRfVar var_B4
  loc_5EBCAD: FLdRfVar var_90
  loc_5EBCB0: FLdRfVar var_8C
  loc_5EBCB3: ILdI2 Index
  loc_5EBCB6: FLdPrThis
  loc_5EBCB7: VCallAd Control_ID_mnugenericSubCierre1
  loc_5EBCBA: FStAdFunc var_88
  loc_5EBCBD: FLdPr var_88
  loc_5EBCC0: Set from_stack_2 = Me(from_stack_1)
  loc_5EBCC5: FLdPr var_8C
  loc_5EBCC8:  = Me.Tag
  loc_5EBCCD: FLdZeroAd var_90
  loc_5EBCD0: CVarStr var_A4
  loc_5EBCD3: FLdRfVar var_94
  loc_5EBCD6: ImpAdLdPr unk_460BCA
  loc_5EBCD9: MemLdPr global_0
  loc_5EBCDC:  = Forms
  loc_5EBCE1: FLdPr var_94
  loc_5EBCE4: from_stack_2 = Me.Item(from_stack_1)
  loc_5EBCE9: FLdRfVar var_B4
  loc_5EBCEC: LdPrVar
  loc_5EBCEE: LateMemCall
  loc_5EBCF4: FFreeAd var_88 = "": var_8C = ""
  loc_5EBCFD: FFreeVar var_A4 = ""
  loc_5EBD04: ExitProcHresult
End Sub

Private Sub mnugenericSubTarjetas0_Click(Index As Integer) '5EC884
  'Data Table: 460894
  loc_5EC808: LitI4 1
  loc_5EC80D: ILdI2 Index
  loc_5EC810: CI4UI1
  loc_5EC811: LitI4 1
  loc_5EC816: ImpAdLdPr unk_460BCE
  loc_5EC819: MemLdRfVar from_stack_1.global_960
  loc_5EC81C: AryInRecLdRf
  loc_5EC822: CDargRef
  loc_5EC826: FLdRfVar var_B4
  loc_5EC829: FLdRfVar var_90
  loc_5EC82C: FLdRfVar var_8C
  loc_5EC82F: ILdI2 Index
  loc_5EC832: FLdPrThis
  loc_5EC833: VCallAd Control_ID_mnugenericSubTarjetas0
  loc_5EC836: FStAdFunc var_88
  loc_5EC839: FLdPr var_88
  loc_5EC83C: Set from_stack_2 = Me(from_stack_1)
  loc_5EC841: FLdPr var_8C
  loc_5EC844:  = Me.Tag
  loc_5EC849: FLdZeroAd var_90
  loc_5EC84C: CVarStr var_A4
  loc_5EC84F: FLdRfVar var_94
  loc_5EC852: ImpAdLdPr unk_460BCA
  loc_5EC855: MemLdPr global_0
  loc_5EC858:  = Forms
  loc_5EC85D: FLdPr var_94
  loc_5EC860: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC865: FLdRfVar var_B4
  loc_5EC868: LdPrVar
  loc_5EC86A: LateMemCall
  loc_5EC870: FFreeAd var_88 = "": var_8C = ""
  loc_5EC879: FFreeVar var_A4 = ""
  loc_5EC880: ExitProcHresult
End Sub

Private Sub mnugenericSubOperMan0_Click(Index As Integer) '5ED1B4
  'Data Table: 460894
  loc_5ED138: LitI4 1
  loc_5ED13D: ILdI2 Index
  loc_5ED140: CI4UI1
  loc_5ED141: LitI4 1
  loc_5ED146: ImpAdLdPr unk_460BCE
  loc_5ED149: MemLdRfVar from_stack_1.global_2880
  loc_5ED14C: AryInRecLdRf
  loc_5ED152: CDargRef
  loc_5ED156: FLdRfVar var_B4
  loc_5ED159: FLdRfVar var_90
  loc_5ED15C: FLdRfVar var_8C
  loc_5ED15F: ILdI2 Index
  loc_5ED162: FLdPrThis
  loc_5ED163: VCallAd Control_ID_mnugenericSubOperMan0
  loc_5ED166: FStAdFunc var_88
  loc_5ED169: FLdPr var_88
  loc_5ED16C: Set from_stack_2 = Me(from_stack_1)
  loc_5ED171: FLdPr var_8C
  loc_5ED174:  = Me.Tag
  loc_5ED179: FLdZeroAd var_90
  loc_5ED17C: CVarStr var_A4
  loc_5ED17F: FLdRfVar var_94
  loc_5ED182: ImpAdLdPr unk_460BCA
  loc_5ED185: MemLdPr global_0
  loc_5ED188:  = Forms
  loc_5ED18D: FLdPr var_94
  loc_5ED190: from_stack_2 = Me.Item(from_stack_1)
  loc_5ED195: FLdRfVar var_B4
  loc_5ED198: LdPrVar
  loc_5ED19A: LateMemCall
  loc_5ED1A0: FFreeAd var_88 = "": var_8C = ""
  loc_5ED1A9: FFreeVar var_A4 = ""
  loc_5ED1B0: ExitProcHresult
End Sub

Private Sub NotaCombN_Click() '5D55BC
  'Data Table: 460894
  loc_5D5594: LitI2_Byte &H27
  loc_5D5596: PopTmpLdAd2 var_86
  loc_5D5599: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D559E: NotI4
  loc_5D559F: BranchF loc_5D55A3
  loc_5D55A2: ExitProcHresult
  loc_5D55A3: LitVar_Missing var_A8
  loc_5D55A6: PopAdLdVar
  loc_5D55A7: LitVarI4
  loc_5D55AF: PopAdLdVar
  loc_5D55B0: ImpAdLdRf MemVar_74E1B4
  loc_5D55B3: NewIfNullPr NotaLiquidoProducto
  loc_5D55B6: NotaLiquidoProducto.Show from_stack_1, from_stack_2
  loc_5D55BB: ExitProcHresult
End Sub

Private Sub mnugenericSubOperMan1_Click(Index As Integer) '5ED400
  'Data Table: 460894
  loc_5ED384: LitI4 2
  loc_5ED389: ILdI2 Index
  loc_5ED38C: CI4UI1
  loc_5ED38D: LitI4 1
  loc_5ED392: ImpAdLdPr unk_460BCE
  loc_5ED395: MemLdRfVar from_stack_1.global_2880
  loc_5ED398: AryInRecLdRf
  loc_5ED39E: CDargRef
  loc_5ED3A2: FLdRfVar var_B4
  loc_5ED3A5: FLdRfVar var_90
  loc_5ED3A8: FLdRfVar var_8C
  loc_5ED3AB: ILdI2 Index
  loc_5ED3AE: FLdPrThis
  loc_5ED3AF: VCallAd Control_ID_mnugenericSubOperMan1
  loc_5ED3B2: FStAdFunc var_88
  loc_5ED3B5: FLdPr var_88
  loc_5ED3B8: Set from_stack_2 = Me(from_stack_1)
  loc_5ED3BD: FLdPr var_8C
  loc_5ED3C0:  = Me.Tag
  loc_5ED3C5: FLdZeroAd var_90
  loc_5ED3C8: CVarStr var_A4
  loc_5ED3CB: FLdRfVar var_94
  loc_5ED3CE: ImpAdLdPr unk_460BCA
  loc_5ED3D1: MemLdPr global_0
  loc_5ED3D4:  = Forms
  loc_5ED3D9: FLdPr var_94
  loc_5ED3DC: from_stack_2 = Me.Item(from_stack_1)
  loc_5ED3E1: FLdRfVar var_B4
  loc_5ED3E4: LdPrVar
  loc_5ED3E6: LateMemCall
  loc_5ED3EC: FFreeAd var_88 = "": var_8C = ""
  loc_5ED3F5: FFreeVar var_A4 = ""
  loc_5ED3FC: ExitProcHresult
End Sub

Private Sub MnuTraspaso_Click() '5D503C
  'Data Table: 460894
  loc_5D5014: LitI2_Byte &H26
  loc_5D5016: PopTmpLdAd2 var_86
  loc_5D5019: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D501E: NotI4
  loc_5D501F: BranchF loc_5D5023
  loc_5D5022: ExitProcHresult
  loc_5D5023: LitVar_Missing var_A8
  loc_5D5026: PopAdLdVar
  loc_5D5027: LitVarI4
  loc_5D502F: PopAdLdVar
  loc_5D5030: ImpAdLdRf MemVar_74E1C8
  loc_5D5033: NewIfNullPr traspaso
  loc_5D5036: traspaso.Show from_stack_1, from_stack_2
  loc_5D503B: ExitProcHresult
End Sub

Private Sub mnugenericSubTarjetas1_Click(Index As Integer) '5EB9F8
  'Data Table: 460894
  loc_5EB97C: LitI4 2
  loc_5EB981: ILdI2 Index
  loc_5EB984: CI4UI1
  loc_5EB985: LitI4 1
  loc_5EB98A: ImpAdLdPr unk_460BCE
  loc_5EB98D: MemLdRfVar from_stack_1.global_960
  loc_5EB990: AryInRecLdRf
  loc_5EB996: CDargRef
  loc_5EB99A: FLdRfVar var_B4
  loc_5EB99D: FLdRfVar var_90
  loc_5EB9A0: FLdRfVar var_8C
  loc_5EB9A3: ILdI2 Index
  loc_5EB9A6: FLdPrThis
  loc_5EB9A7: VCallAd Control_ID_mnugenericSubTarjetas1
  loc_5EB9AA: FStAdFunc var_88
  loc_5EB9AD: FLdPr var_88
  loc_5EB9B0: Set from_stack_2 = Me(from_stack_1)
  loc_5EB9B5: FLdPr var_8C
  loc_5EB9B8:  = Me.Tag
  loc_5EB9BD: FLdZeroAd var_90
  loc_5EB9C0: CVarStr var_A4
  loc_5EB9C3: FLdRfVar var_94
  loc_5EB9C6: ImpAdLdPr unk_460BCA
  loc_5EB9C9: MemLdPr global_0
  loc_5EB9CC:  = Forms
  loc_5EB9D1: FLdPr var_94
  loc_5EB9D4: from_stack_2 = Me.Item(from_stack_1)
  loc_5EB9D9: FLdRfVar var_B4
  loc_5EB9DC: LdPrVar
  loc_5EB9DE: LateMemCall
  loc_5EB9E4: FFreeAd var_88 = "": var_8C = ""
  loc_5EB9ED: FFreeVar var_A4 = ""
  loc_5EB9F4: ExitProcHresult
End Sub

Private Sub mnugenericSubTarjetas2_Click(Index As Integer) '5EC264
  'Data Table: 460894
  loc_5EC1E8: LitI4 3
  loc_5EC1ED: ILdI2 Index
  loc_5EC1F0: CI4UI1
  loc_5EC1F1: LitI4 1
  loc_5EC1F6: ImpAdLdPr unk_460BCE
  loc_5EC1F9: MemLdRfVar from_stack_1.global_960
  loc_5EC1FC: AryInRecLdRf
  loc_5EC202: CDargRef
  loc_5EC206: FLdRfVar var_B4
  loc_5EC209: FLdRfVar var_90
  loc_5EC20C: FLdRfVar var_8C
  loc_5EC20F: ILdI2 Index
  loc_5EC212: FLdPrThis
  loc_5EC213: VCallAd Control_ID_mnugenericSubTarjetas2
  loc_5EC216: FStAdFunc var_88
  loc_5EC219: FLdPr var_88
  loc_5EC21C: Set from_stack_2 = Me(from_stack_1)
  loc_5EC221: FLdPr var_8C
  loc_5EC224:  = Me.Tag
  loc_5EC229: FLdZeroAd var_90
  loc_5EC22C: CVarStr var_A4
  loc_5EC22F: FLdRfVar var_94
  loc_5EC232: ImpAdLdPr unk_460BCA
  loc_5EC235: MemLdPr global_0
  loc_5EC238:  = Forms
  loc_5EC23D: FLdPr var_94
  loc_5EC240: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC245: FLdRfVar var_B4
  loc_5EC248: LdPrVar
  loc_5EC24A: LateMemCall
  loc_5EC250: FFreeAd var_88 = "": var_8C = ""
  loc_5EC259: FFreeVar var_A4 = ""
  loc_5EC260: ExitProcHresult
End Sub

Private Sub Ingreso_Recibos_Click() '5D8908
  'Data Table: 460894
  loc_5D88D4: LitI2_Byte &H13
  loc_5D88D6: PopTmpLdAd2 var_86
  loc_5D88D9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D88DE: NotI4
  loc_5D88DF: BranchF loc_5D88E3
  loc_5D88E2: ExitProcHresult
  loc_5D88E3: LitI2_Byte 0
  loc_5D88E5: PopTmpLdAd2 var_86
  loc_5D88E8: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5D88ED: BranchF loc_5D8905
  loc_5D88F0: LitVar_Missing var_A8
  loc_5D88F3: PopAdLdVar
  loc_5D88F4: LitVarI2 var_98, 1
  loc_5D88F9: PopAdLdVar
  loc_5D88FA: ImpAdLdRf MemVar_74DAC8
  loc_5D88FD: NewIfNullPr IngresoRecibos
  loc_5D8900: IngresoRecibos.Show from_stack_1, from_stack_2
  loc_5D8905: ExitProcHresult
End Sub

Private Sub PRECIOS_PENDIENTES_Click() '5FA4B4
  'Data Table: 460894
  loc_5FA3FC: LitI4 &H28
  loc_5FA401: ImpAdLdRf MemVar_74A170
  loc_5FA404: Ary1LdI2
  loc_5FA405: NotI4
  loc_5FA406: CVarBoolI2 var_104
  loc_5FA40A: LitVarI2 var_B4, 3
  loc_5FA40F: LitI4 1
  loc_5FA414: ImpAdLdRf MemVar_74BF90
  loc_5FA417: CVarRef
  loc_5FA41C: FLdRfVar var_C4
  loc_5FA41F: ImpAdCallFPR4  = Mid(, , )
  loc_5FA424: FLdRfVar var_C4
  loc_5FA427: LitVarStr var_D4, "\\."
  loc_5FA42C: HardType
  loc_5FA42D: EqVar var_E4
  loc_5FA431: NotVar var_F4
  loc_5FA435: AndVar var_114
  loc_5FA439: CBoolVarNull
  loc_5FA43B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5FA444: BranchF loc_5FA44D
  loc_5FA447: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5FA44C: ExitProcHresult
  loc_5FA44D: LitI2_Byte &H1B
  loc_5FA44F: PopTmpLdAd2 var_116
  loc_5FA452: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5FA457: NotI4
  loc_5FA458: BranchF loc_5FA45C
  loc_5FA45B: ExitProcHresult
  loc_5FA45C: LitVarI2 var_B4, 1
  loc_5FA461: LitI4 &HC
  loc_5FA466: ImpAdLdI4 MemVar_74BEAC
  loc_5FA469: ImpAdCallI2 Mid$(, , )
  loc_5FA46E: FStStrNoPop var_11C
  loc_5FA471: LitStr "1"
  loc_5FA474: EqStr
  loc_5FA476: FFree1Str var_11C
  loc_5FA479: FFree1Var var_B4 = ""
  loc_5FA47C: BranchF loc_5FA49A
  loc_5FA47F: LitVar_Missing var_A4
  loc_5FA482: PopAdLdVar
  loc_5FA483: LitVarI4
  loc_5FA48B: PopAdLdVar
  loc_5FA48C: ImpAdLdRf MemVar_74DDCC
  loc_5FA48F: NewIfNullPr CambiosdePrecio
  loc_5FA492: CambiosdePrecio.Show from_stack_1, from_stack_2
  loc_5FA497: Branch loc_5FA4B2
  loc_5FA49A: LitVar_Missing var_A4
  loc_5FA49D: PopAdLdVar
  loc_5FA49E: LitVarI4
  loc_5FA4A6: PopAdLdVar
  loc_5FA4A7: ImpAdLdRf MemVar_74E0D8
  loc_5FA4AA: NewIfNullPr Cambios_Diferidos
  loc_5FA4AD: Cambios_Diferidos.Show from_stack_1, from_stack_2
  loc_5FA4B2: ExitProcHresult
End Sub

Private Sub mnuTicket_Click() '5D545C
  'Data Table: 460894
  loc_5D5434: LitI2_Byte &H32
  loc_5D5436: PopTmpLdAd2 var_86
  loc_5D5439: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D543E: NotI4
  loc_5D543F: BranchF loc_5D5443
  loc_5D5442: ExitProcHresult
  loc_5D5443: LitVar_Missing var_A8
  loc_5D5446: PopAdLdVar
  loc_5D5447: LitVarI4
  loc_5D544F: PopAdLdVar
  loc_5D5450: ImpAdLdRf MemVar_74E0B0
  loc_5D5453: NewIfNullPr frmTicket
  loc_5D5456: frmTicket.Show from_stack_1, from_stack_2
  loc_5D545B: ExitProcHresult
End Sub

Private Sub REPORT_IN_PROGRESS_Click() '5C94C8
  'Data Table: 460894
  loc_5C94C0: ImpAdCallFPR4 Proc_167_13_6138BC()
  loc_5C94C5: ExitProcHresult
End Sub

Private Sub SETUP_DECIMAL_Click() '5F65B0
  'Data Table: 460894
  loc_5F6500: LitI4 &H26
  loc_5F6505: ImpAdLdRf MemVar_74A170
  loc_5F6508: Ary1LdI2
  loc_5F6509: NotI4
  loc_5F650A: CVarBoolI2 var_104
  loc_5F650E: LitVarI2 var_B4, 3
  loc_5F6513: LitI4 1
  loc_5F6518: ImpAdLdRf MemVar_74BF90
  loc_5F651B: CVarRef
  loc_5F6520: FLdRfVar var_C4
  loc_5F6523: ImpAdCallFPR4  = Mid(, , )
  loc_5F6528: FLdRfVar var_C4
  loc_5F652B: LitVarStr var_D4, "\\."
  loc_5F6530: HardType
  loc_5F6531: EqVar var_E4
  loc_5F6535: NotVar var_F4
  loc_5F6539: AndVar var_114
  loc_5F653D: CBoolVarNull
  loc_5F653F: FFreeVar var_B4 = "": var_C4 = ""
  loc_5F6548: BranchF loc_5F6551
  loc_5F654B: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5F6550: ExitProcHresult
  loc_5F6551: LitI2_Byte &H19
  loc_5F6553: PopTmpLdAd2 var_116
  loc_5F6556: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5F655B: NotI4
  loc_5F655C: BranchF loc_5F6560
  loc_5F655F: ExitProcHresult
  loc_5F6560: from_stack_1v = Proc_162_229_63F80C()
  loc_5F6565: LitI2_Byte &HFF
  loc_5F6567: FLdPrThis
  loc_5F6568: VCallAd Control_ID_Text1
  loc_5F656B: FStAdFunc var_11C
  loc_5F656E: FLdPr var_11C
  loc_5F6571: Me.Visible = from_stack_1b
  loc_5F6576: FFree1Ad var_11C
  loc_5F6579: LitI2_Byte 0
  loc_5F657B: PopTmpLdAd2 var_116
  loc_5F657E: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5F6583: BranchF loc_5F659B
  loc_5F6586: LitVar_Missing var_A4
  loc_5F6589: PopAdLdVar
  loc_5F658A: LitVarI2 var_94, 1
  loc_5F658F: PopAdLdVar
  loc_5F6590: ImpAdLdRf MemVar_74DCF8
  loc_5F6593: NewIfNullPr fOpcionDecimal
  loc_5F6596: fOpcionDecimal.Show from_stack_1, from_stack_2
  loc_5F659B: LitI2_Byte 0
  loc_5F659D: FLdPrThis
  loc_5F659E: VCallAd Control_ID_Text1
  loc_5F65A1: FStAdFunc var_11C
  loc_5F65A4: FLdPr var_11C
  loc_5F65A7: Me.Visible = from_stack_1b
  loc_5F65AC: FFree1Ad var_11C
  loc_5F65AF: ExitProcHresult
End Sub

Private Sub mnuVentasn_Click() '5D4EDC
  'Data Table: 460894
  loc_5D4EB4: LitI2_Byte &H35
  loc_5D4EB6: PopTmpLdAd2 var_86
  loc_5D4EB9: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D4EBE: NotI4
  loc_5D4EBF: BranchF loc_5D4EC3
  loc_5D4EC2: ExitProcHresult
  loc_5D4EC3: LitVar_Missing var_A8
  loc_5D4EC6: PopAdLdVar
  loc_5D4EC7: LitVarI4
  loc_5D4ECF: PopAdLdVar
  loc_5D4ED0: ImpAdLdRf MemVar_74E100
  loc_5D4ED3: NewIfNullPr frmVentasDiferenciales
  loc_5D4ED6: frmVentasDiferenciales.Show from_stack_1, from_stack_2
  loc_5D4EDB: ExitProcHresult
End Sub

Private Sub REPORT_MONTH_Click() '5E3C90
  'Data Table: 460894
  loc_5E3C28: LitI2_Byte &HA
  loc_5E3C2A: PopTmpLdAd2 var_86
  loc_5E3C2D: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5E3C32: NotI4
  loc_5E3C33: BranchF loc_5E3C37
  loc_5E3C36: ExitProcHresult
  loc_5E3C37: LitI2_Byte 0
  loc_5E3C39: FLdPrThis
  loc_5E3C3A: VCallAd Control_ID_Reloj
  loc_5E3C3D: FStAdFunc var_8C
  loc_5E3C40: FLdPr var_8C
  loc_5E3C43: Me.Enabled = from_stack_1b
  loc_5E3C48: FFree1Ad var_8C
  loc_5E3C4B: LitStr "M"
  loc_5E3C4E: ImpAdLdRf MemVar_74DC6C
  loc_5E3C51: NewIfNullPr Reportes_Anteriores
  loc_5E3C54: Call Reportes_Anteriores.TipoReportePut(from_stack_1v)
  loc_5E3C59: LitI2_Byte 0
  loc_5E3C5B: ImpAdLdRf MemVar_74DC6C
  loc_5E3C5E: NewIfNullPr Reportes_Anteriores
  loc_5E3C61: Call Reportes_Anteriores.SoloFechaPut(from_stack_1v)
  loc_5E3C66: LitVar_Missing var_AC
  loc_5E3C69: PopAdLdVar
  loc_5E3C6A: LitVarI2 var_9C, 1
  loc_5E3C6F: PopAdLdVar
  loc_5E3C70: ImpAdLdRf MemVar_74DC6C
  loc_5E3C73: NewIfNullPr Reportes_Anteriores
  loc_5E3C76: Reportes_Anteriores.Show from_stack_1, from_stack_2
  loc_5E3C7B: LitI2_Byte &HFF
  loc_5E3C7D: FLdPrThis
  loc_5E3C7E: VCallAd Control_ID_Reloj
  loc_5E3C81: FStAdFunc var_8C
  loc_5E3C84: FLdPr var_8C
  loc_5E3C87: Me.Enabled = from_stack_1b
  loc_5E3C8C: FFree1Ad var_8C
  loc_5E3C8F: ExitProcHresult
End Sub

Private Sub MnuAnuParcVentasN_Click() '5D80D4
  'Data Table: 460894
  loc_5D80A0: LitStr "L"
  loc_5D80A3: ImpAdLdRf MemVar_74DD94
  loc_5D80A6: NewIfNullPr FrmFechas
  loc_5D80A9: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D80AE: LitI2_Byte &H2D
  loc_5D80B0: ImpAdLdRf MemVar_74DD94
  loc_5D80B3: NewIfNullPr FrmFechas
  loc_5D80B6: Call FrmFechas.HistoricoPut(from_stack_1v)
  loc_5D80BB: LitVar_Missing var_A4
  loc_5D80BE: PopAdLdVar
  loc_5D80BF: LitVarI4
  loc_5D80C7: PopAdLdVar
  loc_5D80C8: ImpAdLdRf MemVar_74DD94
  loc_5D80CB: NewIfNullPr FrmFechas
  loc_5D80CE: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D80D3: ExitProcHresult
End Sub

Private Sub mnuListadoCTF_Click() '5D5614
  'Data Table: 460894
  loc_5D55EC: LitI2_Byte &H3E
  loc_5D55EE: PopTmpLdAd2 var_86
  loc_5D55F1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D55F6: NotI4
  loc_5D55F7: BranchF loc_5D55FB
  loc_5D55FA: ExitProcHresult
  loc_5D55FB: LitVar_Missing var_A8
  loc_5D55FE: PopAdLdVar
  loc_5D55FF: LitVarI4
  loc_5D5607: PopAdLdVar
  loc_5D5608: ImpAdLdRf MemVar_74E218
  loc_5D560B: NewIfNullPr frmListadoCTF
  loc_5D560E: frmListadoCTF.Show from_stack_1, from_stack_2
  loc_5D5613: ExitProcHresult
End Sub

Private Sub mnugenericSubGestion0_Click(Index As Integer) '5EC6FC
  'Data Table: 460894
  loc_5EC680: LitI4 1
  loc_5EC685: ILdI2 Index
  loc_5EC688: CI4UI1
  loc_5EC689: LitI4 1
  loc_5EC68E: ImpAdLdPr unk_460BCE
  loc_5EC691: MemLdRfVar from_stack_1.global_1440
  loc_5EC694: AryInRecLdRf
  loc_5EC69A: CDargRef
  loc_5EC69E: FLdRfVar var_B4
  loc_5EC6A1: FLdRfVar var_90
  loc_5EC6A4: FLdRfVar var_8C
  loc_5EC6A7: ILdI2 Index
  loc_5EC6AA: FLdPrThis
  loc_5EC6AB: VCallAd Control_ID_mnugenericSubGestion0
  loc_5EC6AE: FStAdFunc var_88
  loc_5EC6B1: FLdPr var_88
  loc_5EC6B4: Set from_stack_2 = Me(from_stack_1)
  loc_5EC6B9: FLdPr var_8C
  loc_5EC6BC:  = Me.Tag
  loc_5EC6C1: FLdZeroAd var_90
  loc_5EC6C4: CVarStr var_A4
  loc_5EC6C7: FLdRfVar var_94
  loc_5EC6CA: ImpAdLdPr unk_460BCA
  loc_5EC6CD: MemLdPr global_0
  loc_5EC6D0:  = Forms
  loc_5EC6D5: FLdPr var_94
  loc_5EC6D8: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC6DD: FLdRfVar var_B4
  loc_5EC6E0: LdPrVar
  loc_5EC6E2: LateMemCall
  loc_5EC6E8: FFreeAd var_88 = "": var_8C = ""
  loc_5EC6F1: FFreeVar var_A4 = ""
  loc_5EC6F8: ExitProcHresult
End Sub

Private Sub mnugenericSubConfiguracion2_Click(Index As Integer) '5EC7C0
  'Data Table: 460894
  loc_5EC744: LitI4 3
  loc_5EC749: ILdI2 Index
  loc_5EC74C: CI4UI1
  loc_5EC74D: LitI4 1
  loc_5EC752: ImpAdLdPr unk_460BCE
  loc_5EC755: MemLdRfVar from_stack_1.global_2400
  loc_5EC758: AryInRecLdRf
  loc_5EC75E: CDargRef
  loc_5EC762: FLdRfVar var_B4
  loc_5EC765: FLdRfVar var_90
  loc_5EC768: FLdRfVar var_8C
  loc_5EC76B: ILdI2 Index
  loc_5EC76E: FLdPrThis
  loc_5EC76F: VCallAd Control_ID_mnugenericSubConfiguracion2
  loc_5EC772: FStAdFunc var_88
  loc_5EC775: FLdPr var_88
  loc_5EC778: Set from_stack_2 = Me(from_stack_1)
  loc_5EC77D: FLdPr var_8C
  loc_5EC780:  = Me.Tag
  loc_5EC785: FLdZeroAd var_90
  loc_5EC788: CVarStr var_A4
  loc_5EC78B: FLdRfVar var_94
  loc_5EC78E: ImpAdLdPr unk_460BCA
  loc_5EC791: MemLdPr global_0
  loc_5EC794:  = Forms
  loc_5EC799: FLdPr var_94
  loc_5EC79C: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC7A1: FLdRfVar var_B4
  loc_5EC7A4: LdPrVar
  loc_5EC7A6: LateMemCall
  loc_5EC7AC: FFreeAd var_88 = "": var_8C = ""
  loc_5EC7B5: FFreeVar var_A4 = ""
  loc_5EC7BC: ExitProcHresult
End Sub

Private Sub mnugenericSubConfiguracion1_Click(Index As Integer) '5EBABC
  'Data Table: 460894
  loc_5EBA40: LitI4 2
  loc_5EBA45: ILdI2 Index
  loc_5EBA48: CI4UI1
  loc_5EBA49: LitI4 1
  loc_5EBA4E: ImpAdLdPr unk_460BCE
  loc_5EBA51: MemLdRfVar from_stack_1.global_2400
  loc_5EBA54: AryInRecLdRf
  loc_5EBA5A: CDargRef
  loc_5EBA5E: FLdRfVar var_B4
  loc_5EBA61: FLdRfVar var_90
  loc_5EBA64: FLdRfVar var_8C
  loc_5EBA67: ILdI2 Index
  loc_5EBA6A: FLdPrThis
  loc_5EBA6B: VCallAd Control_ID_mnugenericSubConfiguracion1
  loc_5EBA6E: FStAdFunc var_88
  loc_5EBA71: FLdPr var_88
  loc_5EBA74: Set from_stack_2 = Me(from_stack_1)
  loc_5EBA79: FLdPr var_8C
  loc_5EBA7C:  = Me.Tag
  loc_5EBA81: FLdZeroAd var_90
  loc_5EBA84: CVarStr var_A4
  loc_5EBA87: FLdRfVar var_94
  loc_5EBA8A: ImpAdLdPr unk_460BCA
  loc_5EBA8D: MemLdPr global_0
  loc_5EBA90:  = Forms
  loc_5EBA95: FLdPr var_94
  loc_5EBA98: from_stack_2 = Me.Item(from_stack_1)
  loc_5EBA9D: FLdRfVar var_B4
  loc_5EBAA0: LdPrVar
  loc_5EBAA2: LateMemCall
  loc_5EBAA8: FFreeAd var_88 = "": var_8C = ""
  loc_5EBAB1: FFreeVar var_A4 = ""
  loc_5EBAB8: ExitProcHresult
End Sub

Private Sub mnugenericSubConfiguracion0_Click(Index As Integer) '5EC0DC
  'Data Table: 460894
  loc_5EC060: LitI4 1
  loc_5EC065: ILdI2 Index
  loc_5EC068: CI4UI1
  loc_5EC069: LitI4 1
  loc_5EC06E: ImpAdLdPr unk_460BCE
  loc_5EC071: MemLdRfVar from_stack_1.global_2400
  loc_5EC074: AryInRecLdRf
  loc_5EC07A: CDargRef
  loc_5EC07E: FLdRfVar var_B4
  loc_5EC081: FLdRfVar var_90
  loc_5EC084: FLdRfVar var_8C
  loc_5EC087: ILdI2 Index
  loc_5EC08A: FLdPrThis
  loc_5EC08B: VCallAd Control_ID_mnugenericSubConfiguracion0
  loc_5EC08E: FStAdFunc var_88
  loc_5EC091: FLdPr var_88
  loc_5EC094: Set from_stack_2 = Me(from_stack_1)
  loc_5EC099: FLdPr var_8C
  loc_5EC09C:  = Me.Tag
  loc_5EC0A1: FLdZeroAd var_90
  loc_5EC0A4: CVarStr var_A4
  loc_5EC0A7: FLdRfVar var_94
  loc_5EC0AA: ImpAdLdPr unk_460BCA
  loc_5EC0AD: MemLdPr global_0
  loc_5EC0B0:  = Forms
  loc_5EC0B5: FLdPr var_94
  loc_5EC0B8: from_stack_2 = Me.Item(from_stack_1)
  loc_5EC0BD: FLdRfVar var_B4
  loc_5EC0C0: LdPrVar
  loc_5EC0C2: LateMemCall
  loc_5EC0C8: FFreeAd var_88 = "": var_8C = ""
  loc_5EC0D1: FFreeVar var_A4 = ""
  loc_5EC0D8: ExitProcHresult
End Sub

Private Sub mnuCierreDia_Click() '609D30
  'Data Table: 460894
  loc_609C44: FLdRfVar var_8E
  loc_609C47: FLdPrThis
  loc_609C48: VCallAd Control_ID_mnuCierreDia
  loc_609C4B: FStAdFunc var_8C
  loc_609C4E: FLdPr var_8C
  loc_609C51:  = Me.Checked
  loc_609C56: FLdI2 var_8E
  loc_609C59: NotI4
  loc_609C5A: FLdPrThis
  loc_609C5B: VCallAd Control_ID_mnuCierreDia
  loc_609C5E: FStAdFunc var_94
  loc_609C61: FLdPr var_94
  loc_609C64: Me.Checked = from_stack_1b
  loc_609C69: FFreeAd var_8C = ""
  loc_609C70: FLdRfVar var_8E
  loc_609C73: FLdPrThis
  loc_609C74: VCallAd Control_ID_mnuCierreDia
  loc_609C77: FStAdFunc var_8C
  loc_609C7A: FLdPr var_8C
  loc_609C7D:  = Me.Checked
  loc_609C82: FLdI2 var_8E
  loc_609C85: FFree1Ad var_8C
  loc_609C88: BranchF loc_609CDA
  loc_609C8B: LitVarI2 var_B4, 1
  loc_609C90: LitI4 6
  loc_609C95: ImpAdLdI4 MemVar_74BEAC
  loc_609C98: ImpAdCallI2 Mid$(, , )
  loc_609C9D: FStStrNoPop var_B8
  loc_609CA0: CUI1Str
  loc_609CA2: FStUI1 var_86
  loc_609CA6: FFree1Str var_B8
  loc_609CA9: FFree1Var var_B4 = ""
  loc_609CAC: FLdUI1
  loc_609CB0: CI2UI1
  loc_609CB2: LitI2_Byte 2
  loc_609CB4: OrI4
  loc_609CB5: CUI1I2
  loc_609CB7: FStUI1 var_86
  loc_609CBB: ImpAdLdRf MemVar_74BEAC
  loc_609CBE: LitI4 6
  loc_609CC3: LitI4 1
  loc_609CC8: FLdUI1
  loc_609CCC: CStrI2
  loc_609CCE: FStStrNoPop var_B8
  loc_609CD1: MidStr arg_0
  loc_609CD4: FFree1Str var_B8
  loc_609CD7: Branch loc_609D26
  loc_609CDA: LitVarI2 var_B4, 1
  loc_609CDF: LitI4 6
  loc_609CE4: ImpAdLdI4 MemVar_74BEAC
  loc_609CE7: ImpAdCallI2 Mid$(, , )
  loc_609CEC: FStStrNoPop var_B8
  loc_609CEF: CUI1Str
  loc_609CF1: FStUI1 var_86
  loc_609CF5: FFree1Str var_B8
  loc_609CF8: FFree1Var var_B4 = ""
  loc_609CFB: FLdUI1
  loc_609CFF: CI2UI1
  loc_609D01: LitI2_Byte 2
  loc_609D03: SubI2
  loc_609D04: CUI1I2
  loc_609D06: FStUI1 var_86
  loc_609D0A: ImpAdLdRf MemVar_74BEAC
  loc_609D0D: LitI4 6
  loc_609D12: LitI4 1
  loc_609D17: FLdUI1
  loc_609D1B: CStrI2
  loc_609D1D: FStStrNoPop var_B8
  loc_609D20: MidStr arg_0
  loc_609D23: FFree1Str var_B8
  loc_609D26: ImpAdLdRf MemVar_74BEAC
  loc_609D29: ImpAdCallFPR4 Proc_167_22_5DC21C()
  loc_609D2E: ExitProcHresult
End Sub

Private Sub mnuTiempoEspera_Click() '5EAEB8
  'Data Table: 460894
  loc_5EAE3C: LitI4 &H30
  loc_5EAE41: ImpAdLdRf MemVar_74A170
  loc_5EAE44: Ary1LdI2
  loc_5EAE45: NotI4
  loc_5EAE46: CVarBoolI2 var_104
  loc_5EAE4A: LitVarI2 var_B4, 3
  loc_5EAE4F: LitI4 1
  loc_5EAE54: ImpAdLdRf MemVar_74BF90
  loc_5EAE57: CVarRef
  loc_5EAE5C: FLdRfVar var_C4
  loc_5EAE5F: ImpAdCallFPR4  = Mid(, , )
  loc_5EAE64: FLdRfVar var_C4
  loc_5EAE67: LitVarStr var_D4, "\\."
  loc_5EAE6C: HardType
  loc_5EAE6D: EqVar var_E4
  loc_5EAE71: NotVar var_F4
  loc_5EAE75: AndVar var_114
  loc_5EAE79: CBoolVarNull
  loc_5EAE7B: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EAE84: BranchF loc_5EAE8D
  loc_5EAE87: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EAE8C: ExitProcHresult
  loc_5EAE8D: LitI2_Byte &H33
  loc_5EAE8F: PopTmpLdAd2 var_116
  loc_5EAE92: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EAE97: NotI4
  loc_5EAE98: BranchF loc_5EAE9C
  loc_5EAE9B: ExitProcHresult
  loc_5EAE9C: LitVar_Missing var_A4
  loc_5EAE9F: PopAdLdVar
  loc_5EAEA0: LitVarI4
  loc_5EAEA8: PopAdLdVar
  loc_5EAEA9: ImpAdLdRf MemVar_74C978
  loc_5EAEAC: NewIfNullPr frmTiempoEsperaCambioPrecios
  loc_5EAEAF: frmTiempoEsperaCambioPrecios.Show from_stack_1, from_stack_2
  loc_5EAEB4: ExitProcHresult
End Sub

Private Sub MnuAnulVentasN_Click() '5D8264
  'Data Table: 460894
  loc_5D8230: LitStr "F"
  loc_5D8233: ImpAdLdRf MemVar_74DD94
  loc_5D8236: NewIfNullPr FrmFechas
  loc_5D8239: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D823E: LitI2_Byte &H2D
  loc_5D8240: ImpAdLdRf MemVar_74DD94
  loc_5D8243: NewIfNullPr FrmFechas
  loc_5D8246: Call FrmFechas.HistoricoPut(from_stack_1v)
  loc_5D824B: LitVar_Missing var_A4
  loc_5D824E: PopAdLdVar
  loc_5D824F: LitVarI4
  loc_5D8257: PopAdLdVar
  loc_5D8258: ImpAdLdRf MemVar_74DD94
  loc_5D825B: NewIfNullPr FrmFechas
  loc_5D825E: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D8263: ExitProcHresult
End Sub

Private Sub PreciosComp_Click() '5D4F8C
  'Data Table: 460894
  loc_5D4F64: LitI2_Byte &H24
  loc_5D4F66: PopTmpLdAd2 var_86
  loc_5D4F69: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D4F6E: NotI4
  loc_5D4F6F: BranchF loc_5D4F73
  loc_5D4F72: ExitProcHresult
  loc_5D4F73: LitVar_Missing var_A8
  loc_5D4F76: PopAdLdVar
  loc_5D4F77: LitVarI2 var_98, 1
  loc_5D4F7C: PopAdLdVar
  loc_5D4F7D: ImpAdLdRf MemVar_74E1A0
  loc_5D4F80: NewIfNullPr PreciosCompetencia
  loc_5D4F83: PreciosCompetencia.Show from_stack_1, from_stack_2
  loc_5D4F88: ExitProcHresult
End Sub

Private Sub SubMenu0_Click(Index As Integer) '5D6978
  'Data Table: 460894
  loc_5D6950: LitI4 1
  loc_5D6955: ILdI2 Index
  loc_5D6958: LitI2_Byte 1
  loc_5D695A: AddI2
  loc_5D695B: CI4UI1
  loc_5D695C: FLdPr Me
  loc_5D695F: MemLdStr global_96
  loc_5D6962: AryLock
  loc_5D6965: Ary1LdRf
  loc_5D6966: CVarRef
  loc_5D696B: ImpAdCallFPR4 push Shell(, )
  loc_5D6970: FStFPR8 var_A0
  loc_5D6973: AryUnlock
  loc_5D6976: ExitProcHresult
End Sub

Private Sub mnuAlarmas_Click() '5EB3F8
  'Data Table: 460894
  loc_5EB37C: LitI4 &H2A
  loc_5EB381: ImpAdLdRf MemVar_74A170
  loc_5EB384: Ary1LdI2
  loc_5EB385: NotI4
  loc_5EB386: CVarBoolI2 var_104
  loc_5EB38A: LitVarI2 var_B4, 3
  loc_5EB38F: LitI4 1
  loc_5EB394: ImpAdLdRf MemVar_74BF90
  loc_5EB397: CVarRef
  loc_5EB39C: FLdRfVar var_C4
  loc_5EB39F: ImpAdCallFPR4  = Mid(, , )
  loc_5EB3A4: FLdRfVar var_C4
  loc_5EB3A7: LitVarStr var_D4, "\\."
  loc_5EB3AC: HardType
  loc_5EB3AD: EqVar var_E4
  loc_5EB3B1: NotVar var_F4
  loc_5EB3B5: AndVar var_114
  loc_5EB3B9: CBoolVarNull
  loc_5EB3BB: FFreeVar var_B4 = "": var_C4 = ""
  loc_5EB3C4: BranchF loc_5EB3CD
  loc_5EB3C7: ImpAdCallFPR4 Proc_17_0_5F4FDC()
  loc_5EB3CC: ExitProcHresult
  loc_5EB3CD: LitI2_Byte &H3A
  loc_5EB3CF: PopTmpLdAd2 var_116
  loc_5EB3D2: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EB3D7: NotI4
  loc_5EB3D8: BranchF loc_5EB3DC
  loc_5EB3DB: ExitProcHresult
  loc_5EB3DC: LitVar_Missing var_A4
  loc_5EB3DF: PopAdLdVar
  loc_5EB3E0: LitVarI4
  loc_5EB3E8: PopAdLdVar
  loc_5EB3E9: ImpAdLdRf MemVar_74CAC4
  loc_5EB3EC: NewIfNullPr frmDefinirAlarmas
  loc_5EB3EF: frmDefinirAlarmas.Show from_stack_1, from_stack_2
  loc_5EB3F4: ExitProcHresult
End Sub

Private Sub mnuPrintTotalsCTF_Click() '609C04
  'Data Table: 460894
  loc_609B18: FLdRfVar var_8E
  loc_609B1B: FLdPrThis
  loc_609B1C: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_609B1F: FStAdFunc var_8C
  loc_609B22: FLdPr var_8C
  loc_609B25:  = Me.Checked
  loc_609B2A: FLdI2 var_8E
  loc_609B2D: NotI4
  loc_609B2E: FLdPrThis
  loc_609B2F: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_609B32: FStAdFunc var_94
  loc_609B35: FLdPr var_94
  loc_609B38: Me.Checked = from_stack_1b
  loc_609B3D: FFreeAd var_8C = ""
  loc_609B44: FLdRfVar var_8E
  loc_609B47: FLdPrThis
  loc_609B48: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_609B4B: FStAdFunc var_8C
  loc_609B4E: FLdPr var_8C
  loc_609B51:  = Me.Checked
  loc_609B56: FLdI2 var_8E
  loc_609B59: FFree1Ad var_8C
  loc_609B5C: BranchF loc_609BAE
  loc_609B5F: LitVarI2 var_B4, 1
  loc_609B64: LitI4 &HC
  loc_609B69: ImpAdLdI4 MemVar_74BEAC
  loc_609B6C: ImpAdCallI2 Mid$(, , )
  loc_609B71: FStStrNoPop var_B8
  loc_609B74: CUI1Str
  loc_609B76: FStUI1 var_86
  loc_609B7A: FFree1Str var_B8
  loc_609B7D: FFree1Var var_B4 = ""
  loc_609B80: FLdUI1
  loc_609B84: CI2UI1
  loc_609B86: LitI2_Byte 1
  loc_609B88: OrI4
  loc_609B89: CUI1I2
  loc_609B8B: FStUI1 var_86
  loc_609B8F: ImpAdLdRf MemVar_74BEAC
  loc_609B92: LitI4 &HC
  loc_609B97: LitI4 1
  loc_609B9C: FLdUI1
  loc_609BA0: CStrI2
  loc_609BA2: FStStrNoPop var_B8
  loc_609BA5: MidStr arg_0
  loc_609BA8: FFree1Str var_B8
  loc_609BAB: Branch loc_609BFA
  loc_609BAE: LitVarI2 var_B4, 1
  loc_609BB3: LitI4 &HC
  loc_609BB8: ImpAdLdI4 MemVar_74BEAC
  loc_609BBB: ImpAdCallI2 Mid$(, , )
  loc_609BC0: FStStrNoPop var_B8
  loc_609BC3: CUI1Str
  loc_609BC5: FStUI1 var_86
  loc_609BC9: FFree1Str var_B8
  loc_609BCC: FFree1Var var_B4 = ""
  loc_609BCF: FLdUI1
  loc_609BD3: CI2UI1
  loc_609BD5: LitI2_Byte 1
  loc_609BD7: SubI2
  loc_609BD8: CUI1I2
  loc_609BDA: FStUI1 var_86
  loc_609BDE: ImpAdLdRf MemVar_74BEAC
  loc_609BE1: LitI4 &HC
  loc_609BE6: LitI4 1
  loc_609BEB: FLdUI1
  loc_609BEF: CStrI2
  loc_609BF1: FStStrNoPop var_B8
  loc_609BF4: MidStr arg_0
  loc_609BF7: FFree1Str var_B8
  loc_609BFA: ImpAdLdRf MemVar_74BEAC
  loc_609BFD: ImpAdCallFPR4 Proc_167_22_5DC21C()
  loc_609C02: ExitProcHresult
End Sub

Private Sub MnuDebitosN_Click() '5D7D50
  'Data Table: 460894
  loc_5D7D1C: LitI2_Byte &H3C
  loc_5D7D1E: PopTmpLdAd2 var_86
  loc_5D7D21: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D7D26: NotI4
  loc_5D7D27: BranchF loc_5D7D2B
  loc_5D7D2A: ExitProcHresult
  loc_5D7D2B: LitStr "B"
  loc_5D7D2E: ImpAdLdRf MemVar_74DD94
  loc_5D7D31: NewIfNullPr FrmFechas
  loc_5D7D34: Call FrmFechas.TipoReportePut(from_stack_1v)
  loc_5D7D39: LitVar_Missing var_A8
  loc_5D7D3C: PopAdLdVar
  loc_5D7D3D: LitVarI2 var_98, 1
  loc_5D7D42: PopAdLdVar
  loc_5D7D43: ImpAdLdRf MemVar_74DD94
  loc_5D7D46: NewIfNullPr FrmFechas
  loc_5D7D49: FrmFechas.Show from_stack_1, from_stack_2
  loc_5D7D4E: ExitProcHresult
End Sub

Public Function CanceladoGet() '4655CC
  CanceladoGet = Cancelado
End Function

Public Sub CanceladoPut(Value) '4655DB
  Cancelado = Value
End Sub

Public Function global_4589716Get() '4655EA
  global_4589716Get = global_4589716
End Function

Public Sub global_4589716Put(Value) '465604
  global_4589716 = Value
End Sub

Public Sub global_4589716Set(Value) '46561E
  global_4589716 = Value
End Sub

Public Function global_4589716Get() '465638
  global_4589716Get = global_4589716
End Function

Public Sub global_4589716Put(Value) '465652
  global_4589716 = Value
End Sub

Public Sub global_4589716Set(Value) '46566C
  global_4589716 = Value
End Sub

Public Function sFlotasEXEGet() '465686
  sFlotasEXEGet = sFlotasEXE
End Function

Public Sub sFlotasEXEPut(Value) '465695
  sFlotasEXE = Value
End Sub

Public Function sServiclubEXEGet() '4656A4
  sServiclubEXEGet = sServiclubEXE
End Function

Public Sub sServiclubEXEPut(Value) '4656B3
  sServiclubEXE = Value
End Sub

Public Function sTarjetaContadoEXEGet() '4656C2
  sTarjetaContadoEXEGet = sTarjetaContadoEXE
End Function

Public Sub sTarjetaContadoEXEPut(Value) '4656D1
  sTarjetaContadoEXE = Value
End Sub

Public Function sSeccionesSeleccionadasGet() '4656E0
  sSeccionesSeleccionadasGet = sSeccionesSeleccionadas
End Function

Public Sub sSeccionesSeleccionadasPut(Value) '4656EF
  sSeccionesSeleccionadas = Value
End Sub

Public Function nMedioPagoFlotaGet() '4656FE
  nMedioPagoFlotaGet = nMedioPagoFlota
End Function

Public Sub nMedioPagoFlotaPut(Value) '46570D
  nMedioPagoFlota = Value
End Sub

Public Function apiesGet() '46571C
  apiesGet = apies
End Function

Public Sub apiesPut(Value) '46572B
  apies = Value
End Sub

Public Function global_88Get() '46573A
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '465749
  global_88 = Value
End Sub

Public Function global_90Get() '465758
  global_90Get = global_90
End Function

Public Sub global_90Put(Value) '465767
  global_90 = Value
End Sub

Public Sub LoadRemoteConsoleConfiguration() '6227BC
  'Data Table: 460894
  loc_62267C: OnErrorGoto loc_62278E
  loc_62267F: FLdRfVar var_1D4
  loc_622682: LitVar_Missing var_1D0
  loc_622685: LitVar_Missing var_1B0
  loc_622688: LitVar_Missing var_190
  loc_62268B: LitVar_Missing var_170
  loc_62268E: LitVar_Missing var_150
  loc_622691: LitVar_Missing var_130
  loc_622694: LitVar_Missing var_110
  loc_622697: LitVar_Missing var_F0
  loc_62269A: LitVar_Missing var_D0
  loc_62269D: LitVar_Missing var_B0
  loc_6226A0: LitStr "Se producio un error al intentar leer del registro de Windows"
  loc_6226A3: FStStrCopy var_90
  loc_6226A6: FLdRfVar var_90
  loc_6226A9: LitI4 &H90
  loc_6226AE: PopTmpLdAdStr var_8C
  loc_6226B1: LitI2_Byte &HA
  loc_6226B3: PopTmpLdAd2 var_88
  loc_6226B6: ImpAdLdRf MemVar_74C7D0
  loc_6226B9: NewIfNullPr clsMsg
  loc_6226BC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6226C1: ILdRf var_1D4
  loc_6226C4: FLdPr Me
  loc_6226C7: MemStStrCopy
  loc_6226CB: FFreeStr var_90 = ""
  loc_6226D2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6226E9: LitI2_Byte 1
  loc_6226EB: CUI1I2
  loc_6226ED: FLdRfVar var_86
  loc_6226F0: LitI2_Byte &H30
  loc_6226F2: CUI1I2
  loc_6226F4: ForUI1 var_1D8
  loc_6226FA: LitVarStr var_A0, "0"
  loc_6226FF: PopAdLdVar
  loc_622700: LitStr "RemoteModule"
  loc_622703: FLdUI1
  loc_622707: CStrI2
  loc_622709: FStStrNoPop var_90
  loc_62270C: ConcatStr
  loc_62270D: FStStrNoPop var_1D4
  loc_622710: LitStr "Startup\Modules"
  loc_622713: LitStr "CEM44"
  loc_622716: ImpAdCallI2 GetSetting(, , , )
  loc_62271B: FStStrNoPop var_1DC
  loc_62271E: CBoolStr
  loc_622720: FLdUI1
  loc_622724: CI4UI1
  loc_622725: ImpAdLdRf MemVar_74A170
  loc_622728: Ary1StI2
  loc_622729: FFreeStr var_90 = "": var_1D4 = ""
  loc_622732: FLdRfVar var_86
  loc_622735: NextUI1
  loc_62273B: LitI2_Byte 1
  loc_62273D: CUI1I2
  loc_62273F: FLdRfVar var_86
  loc_622742: ImpAdLdUI1
  loc_622746: ForUI1 var_1E0
  loc_62274C: LitVarStr var_A0, "0"
  loc_622751: PopAdLdVar
  loc_622752: LitStr "RemotePump"
  loc_622755: FLdUI1
  loc_622759: CStrI2
  loc_62275B: FStStrNoPop var_90
  loc_62275E: ConcatStr
  loc_62275F: FStStrNoPop var_1D4
  loc_622762: LitStr "Startup\Pumps"
  loc_622765: LitStr "CEM44"
  loc_622768: ImpAdCallI2 GetSetting(, , , )
  loc_62276D: FStStrNoPop var_1DC
  loc_622770: CBoolStr
  loc_622772: FLdUI1
  loc_622776: CI4UI1
  loc_622777: ImpAdLdRf MemVar_74A188
  loc_62277A: Ary1StI2
  loc_62277B: FFreeStr var_90 = "": var_1D4 = ""
  loc_622784: FLdRfVar var_86
  loc_622787: NextUI1
  loc_62278D: ExitProcHresult
  loc_62278E: LitVar_Missing var_D0
  loc_622791: LitVar_Missing var_B0
  loc_622794: ImpAdLdRf MemVar_74BF24
  loc_622797: CVarRef
  loc_62279C: LitI4 &H40
  loc_6227A1: FLdPr Me
  loc_6227A4: MemLdRfVar from_stack_1.global_7564
  loc_6227A7: CVarRef
  loc_6227AC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6227B1: FFreeVar var_B0 = ""
  loc_6227B8: ExitProcHresult
  loc_6227B9: WMemLdUI1
End Sub

Public Function CargarUsuarios(arg_1C) '62BF60
  'Data Table: 460894
  loc_62BDDC: OnErrorGoto loc_62BF53
  loc_62BDDF: LitI4 &H3E8
  loc_62BDE4: FLdRfVar var_A8
  loc_62BDE7: ImpAdCallFPR4  = Space()
  loc_62BDEC: FLdRfVar var_A8
  loc_62BDEF: CStrVarTmp
  loc_62BDF0: FStStr var_8C
  loc_62BDF3: FFree1Var var_A8 = ""
  loc_62BDF6: LitI2_Byte 0
  loc_62BDF8: FStI2 var_86
  loc_62BDFB: FLdRfVar var_B0
  loc_62BDFE: FLdRfVar var_AC
  loc_62BE01: ImpAdLdRf MemVar_7520D4
  loc_62BE04: NewIfNullPr Global
  loc_62BE07:  = Global.App
  loc_62BE0C: FLdPr var_AC
  loc_62BE0F:  = App.Path
  loc_62BE14: ILdRf var_B0
  loc_62BE17: LitStr "\Usuarios.bin"
  loc_62BE1A: ConcatStr
  loc_62BE1B: FStStr var_98
  loc_62BE1E: FFree1Str var_B0
  loc_62BE21: FFree1Ad var_AC
  loc_62BE24: LitI2_Byte 1
  loc_62BE26: FLdRfVar var_88
  loc_62BE29: LitI2_Byte &HB
  loc_62BE2B: ForI2 var_B4
  loc_62BE31: LitStr "Usuario "
  loc_62BE34: FLdI2 var_88
  loc_62BE37: CStrUI1
  loc_62BE39: FStStrNoPop var_B0
  loc_62BE3C: ConcatStr
  loc_62BE3D: FStStr CargarUsuarios
  loc_62BE40: FFree1Str var_B0
  loc_62BE43: ILdRf var_98
  loc_62BE46: FLdRfVar var_C4
  loc_62BE49: CStr2Ansi
  loc_62BE4A: ILdRf var_C4
  loc_62BE4D: LitI4 &H3E8
  loc_62BE52: ILdRf var_8C
  loc_62BE55: FLdRfVar var_C0
  loc_62BE58: CStr2Ansi
  loc_62BE59: ILdRf var_C0
  loc_62BE5C: LitStr " "
  loc_62BE5F: FLdRfVar var_BC
  loc_62BE62: CStr2Ansi
  loc_62BE63: ILdRf var_BC
  loc_62BE66: ILdRf CargarUsuarios
  loc_62BE69: FLdRfVar var_B8
  loc_62BE6C: CStr2Ansi
  loc_62BE6D: ILdRf var_B8
  loc_62BE70: LitStr "Usuarios"
  loc_62BE73: FLdRfVar var_B0
  loc_62BE76: CStr2Ansi
  loc_62BE77: ILdRf var_B0
  loc_62BE7A: ImpAdCallI2 GetPrivateProfileString(, , , , , )
  loc_62BE7F: FStR4 var_C8
  loc_62BE82: SetLastSystemError
  loc_62BE83: ILdRf var_B8
  loc_62BE86: FLdRfVar CargarUsuarios
  loc_62BE89: CStr2Uni
  loc_62BE8B: ILdRf var_C0
  loc_62BE8E: FLdRfVar var_8C
  loc_62BE91: CStr2Uni
  loc_62BE93: ILdRf var_C4
  loc_62BE96: FLdRfVar var_98
  loc_62BE99: CStr2Uni
  loc_62BE9B: ILdRf var_C8
  loc_62BE9E: FStR4 var_90
  loc_62BEA1: FFreeStr var_B0 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_62BEAE: FLdRfVar var_8C
  loc_62BEB1: CVarRef
  loc_62BEB6: FLdRfVar var_A8
  loc_62BEB9: ImpAdCallFPR4  = Trim()
  loc_62BEBE: FLdRfVar var_A8
  loc_62BEC1: CStrVarTmp
  loc_62BEC2: FStStr var_8C
  loc_62BEC5: FFree1Var var_A8 = ""
  loc_62BEC8: ILdRf var_8C
  loc_62BECB: LitStr vbNullString
  loc_62BECE: NeStr
  loc_62BED0: ILdRf var_90
  loc_62BED3: LitI4 0
  loc_62BED8: NeI4
  loc_62BED9: AndI4
  loc_62BEDA: BranchF loc_62BF20
  loc_62BEDD: ILdRf var_8C
  loc_62BEE0: FnLenStr
  loc_62BEE1: LitI4 1
  loc_62BEE6: SubI4
  loc_62BEE7: CVarI4
  loc_62BEEB: LitI4 1
  loc_62BEF0: FLdRfVar var_8C
  loc_62BEF3: CVarRef
  loc_62BEF8: FLdRfVar var_F8
  loc_62BEFB: ImpAdCallFPR4  = Mid(, , )
  loc_62BF00: FLdRfVar var_F8
  loc_62BF03: CStrVarTmp
  loc_62BF04: PopTmpLdAdStr
  loc_62BF08: FLdRfVar var_88
  loc_62BF0B: ImpAdLdRf MemVar_74A218
  loc_62BF0E: NewIfNullPr clsUsers
  loc_62BF11: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_62BF16: FFree1Str var_B0
  loc_62BF19: FFreeVar var_A8 = ""
  loc_62BF20: LitI4 &H3E8
  loc_62BF25: FLdRfVar var_A8
  loc_62BF28: ImpAdCallFPR4  = Space()
  loc_62BF2D: FLdRfVar var_A8
  loc_62BF30: CStrVarTmp
  loc_62BF31: FStStr var_8C
  loc_62BF34: FFree1Var var_A8 = ""
  loc_62BF37: FLdRfVar var_88
  loc_62BF3A: NextI2 var_B4, loc_62BE31
  loc_62BF3F: FLdI2 var_88
  loc_62BF42: LitI2_Byte &HB
  loc_62BF44: EqI2
  loc_62BF45: BranchF loc_62BF4D
  loc_62BF48: LitI2_Byte &HFF
  loc_62BF4A: FStI2 var_86
  loc_62BF4D: ExitProcCbHresult
  loc_62BF53: LitI2_Byte 0
  loc_62BF55: FStI2 var_86
  loc_62BF58: ExitProcCbHresult
  loc_62BF5E: PopTmpLdAd8 arg_1CFF
End Function

Public Sub CierreEnCurso() '658368
  'Data Table: 460894
  loc_65806C: LitI2_Byte &HFF
  loc_65806E: BranchF loc_658367
  loc_658071: ImpAdCallFPR4 DoEvents()
  loc_658076: FLdRfVar var_9E
  loc_658079: FLdRfVar var_88
  loc_65807C: FLdRfVar var_9C
  loc_65807F: ImpAdLdRf MemVar_74C760
  loc_658082: NewIfNullPr Formx
  loc_658085: from_stack_1v = Formx.global_4589716Get()
  loc_65808A: FLdPr var_9C
  loc_65808D:  = Formx.Top
  loc_658092: FLdI2 var_9E
  loc_658095: NotI4
  loc_658096: FFree1Ad var_9C
  loc_658099: BranchF loc_6580B3
  loc_65809C: FLdRfVar var_B0
  loc_65809F: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6580A4: FLdRfVar var_B0
  loc_6580A7: CBoolVarNull
  loc_6580A9: FFree1Var var_B0 = ""
  loc_6580AC: BranchF loc_6580B0
  loc_6580AF: ExitProcHresult
  loc_6580B0: Branch loc_658076
  loc_6580B3: LitVarI2 var_B0, 1
  loc_6580B8: LitI4 &H21
  loc_6580BD: FLdRfVar var_88
  loc_6580C0: CVarRef
  loc_6580C5: FLdRfVar var_E0
  loc_6580C8: ImpAdCallFPR4  = Mid(, , )
  loc_6580CD: FLdRfVar var_E0
  loc_6580D0: CStrVarVal var_E4
  loc_6580D4: ImpAdCallI2 Asc()
  loc_6580D9: CStrUI1
  loc_6580DB: FStStr var_94
  loc_6580DE: FFree1Str var_E4
  loc_6580E1: FFreeVar var_B0 = ""
  loc_6580E8: ILdRf var_94
  loc_6580EB: FStStrCopy var_E8
  loc_6580EE: ILdRf var_E8
  loc_6580F1: LitI2_Byte 8
  loc_6580F3: CStrI2
  loc_6580F5: FStStrNoPop var_E4
  loc_6580F8: EqStr
  loc_6580FA: FFree1Str var_E4
  loc_6580FD: BranchF loc_65816C
  loc_658100: LitI2_Byte &HFF
  loc_658102: FStI2 var_8E
  loc_658105: LitVar_TRUE var_C0
  loc_658108: PopAdLdVar
  loc_658109: FLdPrThis
  loc_65810A: VCallAd Control_ID_PanelCierres
  loc_65810D: FStAdFunc var_9C
  loc_658110: FLdPr var_9C
  loc_658113: LateIdSt
  loc_658118: FFree1Ad var_9C
  loc_65811B: FLdPr Me
  loc_65811E: MemLdStr global_7516
  loc_658121: CVarStr var_C0
  loc_658124: PopAdLdVar
  loc_658125: FLdPrThis
  loc_658126: VCallAd Control_ID_PanelCierres
  loc_658129: FStAdFunc var_9C
  loc_65812C: FLdPr var_9C
  loc_65812F: LateIdSt
  loc_658134: FFree1Ad var_9C
  loc_658137: LitI4 &H3E8
  loc_65813C: ImpAdCallFPR4 Sleep()
  loc_658141: SetLastSystemError
  loc_658142: LitI2_Byte &HFF
  loc_658144: ImpAdStI2 MemVar_74C382
  loc_658147: LitI2_Byte 0
  loc_658149: PopTmpLdAd2 var_9E
  loc_65814C: ImpAdCallI2 Proc_53_4_718EF4()
  loc_658151: BranchF loc_658169
  loc_658154: LitVar_Missing var_D0
  loc_658157: PopAdLdVar
  loc_658158: LitVarI2 var_C0, 1
  loc_65815D: PopAdLdVar
  loc_65815E: ImpAdLdRf MemVar_74D8B0
  loc_658161: NewIfNullPr Consola
  loc_658164: Consola.Show from_stack_1, from_stack_2
  loc_658169: Branch loc_658359
  loc_65816C: ILdRf var_E8
  loc_65816F: LitI2_Byte 4
  loc_658171: CStrI2
  loc_658173: FStStrNoPop var_E4
  loc_658176: EqStr
  loc_658178: FFree1Str var_E4
  loc_65817B: BranchF loc_6581B8
  loc_65817E: LitI2_Byte &HFF
  loc_658180: FStI2 var_8E
  loc_658183: LitVar_TRUE var_C0
  loc_658186: PopAdLdVar
  loc_658187: FLdPrThis
  loc_658188: VCallAd Control_ID_PanelCierres
  loc_65818B: FStAdFunc var_9C
  loc_65818E: FLdPr var_9C
  loc_658191: LateIdSt
  loc_658196: FFree1Ad var_9C
  loc_658199: FLdPr Me
  loc_65819C: MemLdStr global_7520
  loc_65819F: CVarStr var_C0
  loc_6581A2: PopAdLdVar
  loc_6581A3: FLdPrThis
  loc_6581A4: VCallAd Control_ID_PanelCierres
  loc_6581A7: FStAdFunc var_9C
  loc_6581AA: FLdPr var_9C
  loc_6581AD: LateIdSt
  loc_6581B2: FFree1Ad var_9C
  loc_6581B5: Branch loc_658359
  loc_6581B8: ILdRf var_E8
  loc_6581BB: LitI2_Byte 1
  loc_6581BD: CStrI2
  loc_6581BF: FStStrNoPop var_E4
  loc_6581C2: EqStr
  loc_6581C4: FFree1Str var_E4
  loc_6581C7: BranchF loc_658359
  loc_6581CA: FLdI2 var_8E
  loc_6581CD: BranchF loc_658358
  loc_6581D0: FLdPr Me
  loc_6581D3: MemLdStr global_7524
  loc_6581D6: CVarStr var_C0
  loc_6581D9: PopAdLdVar
  loc_6581DA: FLdPrThis
  loc_6581DB: VCallAd Control_ID_PanelCierres
  loc_6581DE: FStAdFunc var_9C
  loc_6581E1: FLdPr var_9C
  loc_6581E4: LateIdSt
  loc_6581E9: FFree1Ad var_9C
  loc_6581EC: FLdRfVar var_EA
  loc_6581EF: FLdRfVar var_8C
  loc_6581F2: CVarRef
  loc_6581F7: LitI2_Byte &HFF
  loc_6581F9: PopTmpLdAd2 var_9E
  loc_6581FC: LitStr "T"
  loc_6581FF: FStStrCopy var_E4
  loc_658202: FLdRfVar var_E4
  loc_658205: FLdRfVar var_9C
  loc_658208: ImpAdLdRf MemVar_74C760
  loc_65820B: NewIfNullPr Formx
  loc_65820E: from_stack_1v = Formx.global_4589716Get()
  loc_658213: FLdPr var_9C
  loc_658216: Formx.WindowState = from_stack_1
  loc_65821B: FLdI2 var_EA
  loc_65821E: NotI4
  loc_65821F: FFree1Str var_E4
  loc_658222: FFree1Ad var_9C
  loc_658225: BranchF loc_65823F
  loc_658228: FLdRfVar var_B0
  loc_65822B: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_658230: FLdRfVar var_B0
  loc_658233: CBoolVarNull
  loc_658235: FFree1Var var_B0 = ""
  loc_658238: BranchF loc_65823C
  loc_65823B: ExitProcHresult
  loc_65823C: Branch loc_6581EC
  loc_65823F: LitVar_Missing var_B0
  loc_658242: ImpAdCallI2 FreeFile()
  loc_658247: CUI1I2
  loc_658249: FStUI1 var_96
  loc_65824D: FFree1Var var_B0 = ""
  loc_658250: FLdRfVar var_E4
  loc_658253: FLdRfVar var_9C
  loc_658256: ImpAdLdRf MemVar_7520D4
  loc_658259: NewIfNullPr Global
  loc_65825C:  = Global.App
  loc_658261: FLdPr var_9C
  loc_658264:  = App.Path
  loc_658269: ILdRf var_E4
  loc_65826C: LitStr "\details.csv"
  loc_65826F: ConcatStr
  loc_658270: FStStrNoPop var_F0
  loc_658273: FLdUI1
  loc_658277: CI2UI1
  loc_658279: LitI2_Byte &HFF
  loc_65827B: OpenFile
  loc_65827F: FFreeStr var_E4 = ""
  loc_658286: FFree1Ad var_9C
  loc_658289: ILdRf var_8C
  loc_65828C: FLdUI1
  loc_658290: CI2UI1
  loc_658292: PrintFile
  loc_658298: FLdUI1
  loc_65829C: CI2UI1
  loc_65829E: Close
  loc_6582A0: FLdRfVar var_EA
  loc_6582A3: FLdRfVar var_8C
  loc_6582A6: CVarRef
  loc_6582AB: LitI2_Byte 0
  loc_6582AD: PopTmpLdAd2 var_9E
  loc_6582B0: LitStr "T"
  loc_6582B3: FStStrCopy var_E4
  loc_6582B6: FLdRfVar var_E4
  loc_6582B9: FLdRfVar var_9C
  loc_6582BC: ImpAdLdRf MemVar_74C760
  loc_6582BF: NewIfNullPr Formx
  loc_6582C2: from_stack_1v = Formx.global_4589716Get()
  loc_6582C7: FLdPr var_9C
  loc_6582CA: Formx.WindowState = from_stack_1
  loc_6582CF: FLdI2 var_EA
  loc_6582D2: NotI4
  loc_6582D3: FFree1Str var_E4
  loc_6582D6: FFree1Ad var_9C
  loc_6582D9: BranchF loc_6582F3
  loc_6582DC: FLdRfVar var_B0
  loc_6582DF: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6582E4: FLdRfVar var_B0
  loc_6582E7: CBoolVarNull
  loc_6582E9: FFree1Var var_B0 = ""
  loc_6582EC: BranchF loc_6582F0
  loc_6582EF: ExitProcHresult
  loc_6582F0: Branch loc_6582A0
  loc_6582F3: LitVar_Missing var_B0
  loc_6582F6: ImpAdCallI2 FreeFile()
  loc_6582FB: CUI1I2
  loc_6582FD: FStUI1 var_96
  loc_658301: FFree1Var var_B0 = ""
  loc_658304: FLdRfVar var_E4
  loc_658307: FLdRfVar var_9C
  loc_65830A: ImpAdLdRf MemVar_7520D4
  loc_65830D: NewIfNullPr Global
  loc_658310:  = Global.App
  loc_658315: FLdPr var_9C
  loc_658318:  = App.Path
  loc_65831D: ILdRf var_E4
  loc_658320: LitStr "\header.csv"
  loc_658323: ConcatStr
  loc_658324: FStStrNoPop var_F0
  loc_658327: FLdUI1
  loc_65832B: CI2UI1
  loc_65832D: LitI2_Byte &HFF
  loc_65832F: OpenFile
  loc_658333: FFreeStr var_E4 = ""
  loc_65833A: FFree1Ad var_9C
  loc_65833D: ILdRf var_8C
  loc_658340: FLdUI1
  loc_658344: CI2UI1
  loc_658346: PrintFile
  loc_65834C: FLdUI1
  loc_658350: CI2UI1
  loc_658352: Close
  loc_658354: ExitProcHresult
  loc_658355: Branch loc_658359
  loc_658358: ExitProcHresult
  loc_658359: LitI4 &HC8
  loc_65835E: ImpAdCallFPR4 Sleep()
  loc_658363: SetLastSystemError
  loc_658364: Branch loc_65806C
  loc_658367: ExitProcHresult
End Sub

Public Sub FacturaDiferencia() '6B6FF8
  'Data Table: 460894
  loc_6B68C0: FLdRfVar var_11A
  loc_6B68C3: FLdRfVar var_90
  loc_6B68C6: FLdRfVar var_118
  loc_6B68C9: ImpAdLdRf MemVar_74C760
  loc_6B68CC: NewIfNullPr Formx
  loc_6B68CF: from_stack_1v = Formx.global_4589716Get()
  loc_6B68D4: FLdPr var_118
  loc_6B68D7:  = Formx.FontUnderline
  loc_6B68DC: FLdI2 var_11A
  loc_6B68DF: NotI4
  loc_6B68E0: FFree1Ad var_118
  loc_6B68E3: BranchF loc_6B6912
  loc_6B68E6: FLdRfVar var_12C
  loc_6B68E9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B68EE: FLdRfVar var_12C
  loc_6B68F1: CBoolVarNull
  loc_6B68F3: FFree1Var var_12C = ""
  loc_6B68F6: BranchF loc_6B690F
  loc_6B68F9: ILdRf Me
  loc_6B68FC: FStAdNoPop
  loc_6B6900: ImpAdLdRf MemVar_7520D4
  loc_6B6903: NewIfNullPr Global
  loc_6B6906: Global.Unload from_stack_1
  loc_6B690B: FFree1Ad var_118
  loc_6B690E: ExitProcHresult
  loc_6B690F: Branch loc_6B68C0
  loc_6B6912: LitI2_Byte 0
  loc_6B6914: PopTmpLdAd2 var_11A
  loc_6B6917: ImpAdCallI2 Proc_53_4_718EF4()
  loc_6B691C: NotI4
  loc_6B691D: BranchF loc_6B6921
  loc_6B6920: ExitProcHresult
  loc_6B6921: FLdRfVar var_11A
  loc_6B6924: FLdRfVar var_A4
  loc_6B6927: FLdRfVar var_A0
  loc_6B692A: FLdRfVar var_9C
  loc_6B692D: FLdRfVar var_98
  loc_6B6930: FLdRfVar var_118
  loc_6B6933: ImpAdLdRf MemVar_74C760
  loc_6B6936: NewIfNullPr Formx
  loc_6B6939: from_stack_1v = Formx.global_4589716Get()
  loc_6B693E: FLdPr var_118
  loc_6B6941: Formx.FontItalic = from_stack_1b
  loc_6B6946: FLdI2 var_11A
  loc_6B6949: NotI4
  loc_6B694A: FFree1Ad var_118
  loc_6B694D: BranchF loc_6B697C
  loc_6B6950: FLdRfVar var_12C
  loc_6B6953: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B6958: FLdRfVar var_12C
  loc_6B695B: CBoolVarNull
  loc_6B695D: FFree1Var var_12C = ""
  loc_6B6960: BranchF loc_6B6979
  loc_6B6963: ILdRf Me
  loc_6B6966: FStAdNoPop
  loc_6B696A: ImpAdLdRf MemVar_7520D4
  loc_6B696D: NewIfNullPr Global
  loc_6B6970: Global.Unload from_stack_1
  loc_6B6975: FFree1Ad var_118
  loc_6B6978: ExitProcHresult
  loc_6B6979: Branch loc_6B6921
  loc_6B697C: FLdRfVar var_11A
  loc_6B697F: FLdRfVar var_88
  loc_6B6982: FLdRfVar var_118
  loc_6B6985: ImpAdLdRf MemVar_74C760
  loc_6B6988: NewIfNullPr Formx
  loc_6B698B: from_stack_1v = Formx.global_4589716Get()
  loc_6B6990: FLdPr var_118
  loc_6B6993: Formx.FontUnderline = from_stack_1b
  loc_6B6998: FLdI2 var_11A
  loc_6B699B: NotI4
  loc_6B699C: FFree1Ad var_118
  loc_6B699F: BranchF loc_6B69D0
  loc_6B69A2: FLdRfVar var_12C
  loc_6B69A5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B69AA: FLdRfVar var_12C
  loc_6B69AD: CBoolVarNull
  loc_6B69AF: FFree1Var var_12C = ""
  loc_6B69B2: BranchF loc_6B69CD
  loc_6B69B5: LitVar_FALSE
  loc_6B69B9: PopAdLdVar
  loc_6B69BA: FLdPrThis
  loc_6B69BB: VCallAd Control_ID_PanelCierres
  loc_6B69BE: FStAdFunc var_118
  loc_6B69C1: FLdPr var_118
  loc_6B69C4: LateIdSt
  loc_6B69C9: FFree1Ad var_118
  loc_6B69CC: ExitProcHresult
  loc_6B69CD: Branch loc_6B697C
  loc_6B69D0: LitI2_Byte 1
  loc_6B69D2: CUI1I2
  loc_6B69D4: FStUI1 var_8C
  loc_6B69D8: LitI2_Byte 1
  loc_6B69DA: CUI1I2
  loc_6B69DC: FLdRfVar var_8A
  loc_6B69DF: LitI2_Byte &HA
  loc_6B69E1: CUI1I2
  loc_6B69E3: ForUI1 var_140
  loc_6B69E9: LitVarI2 var_12C, 8
  loc_6B69EE: FLdUI1
  loc_6B69F2: CI2UI1
  loc_6B69F4: LitI2_Byte 3
  loc_6B69F6: AddI2
  loc_6B69F7: CI4UI1
  loc_6B69F8: FLdRfVar var_88
  loc_6B69FB: CVarRef
  loc_6B6A00: FLdRfVar var_160
  loc_6B6A03: ImpAdCallFPR4  = Mid(, , )
  loc_6B6A08: FLdRfVar var_160
  loc_6B6A0B: FnCCurVar
  loc_6B6A0D: CR8Cy
  loc_6B6A0E: LitI2_Byte &H64
  loc_6B6A10: CR8I2
  loc_6B6A11: DivR8
  loc_6B6A12: CCyR4
  loc_6B6A13: FLdUI1
  loc_6B6A17: CI4UI1
  loc_6B6A18: FLdRfVar var_BC
  loc_6B6A1B: Ary1LdPr
  loc_6B6A1C: MemStR8 global_0
  loc_6B6A1F: FFreeVar var_12C = "": var_160 = ""
  loc_6B6A28: LitVarI2 var_12C, 2
  loc_6B6A2D: FLdUI1
  loc_6B6A31: CI4UI1
  loc_6B6A32: FLdRfVar var_88
  loc_6B6A35: CVarRef
  loc_6B6A3A: FLdRfVar var_160
  loc_6B6A3D: ImpAdCallFPR4  = Mid(, , )
  loc_6B6A42: FLdRfVar var_164
  loc_6B6A45: FLdRfVar var_160
  loc_6B6A48: FnCIntVar
  loc_6B6A4A: ImpAdLdRf MemVar_74A220
  loc_6B6A4D: NewIfNullPr clsProducts
  loc_6B6A55: ILdRf var_164
  loc_6B6A58: FLdUI1
  loc_6B6A5C: CI4UI1
  loc_6B6A5D: FLdRfVar var_BC
  loc_6B6A60: Ary1LdPr
  loc_6B6A61: MemStStrCopy
  loc_6B6A65: FFree1Str var_164
  loc_6B6A68: FFreeVar var_12C = "": var_160 = ""
  loc_6B6A71: LitVarI2 var_12C, 2
  loc_6B6A76: FLdUI1
  loc_6B6A7A: CI4UI1
  loc_6B6A7B: FLdRfVar var_88
  loc_6B6A7E: CVarRef
  loc_6B6A83: FLdRfVar var_160
  loc_6B6A86: ImpAdCallFPR4  = Mid(, , )
  loc_6B6A8B: FLdRfVar var_160
  loc_6B6A8E: FnCByteVar
  loc_6B6A90: FLdUI1
  loc_6B6A94: CI4UI1
  loc_6B6A95: FLdRfVar var_BC
  loc_6B6A98: Ary1LdPr
  loc_6B6A99: MemStUI1
  loc_6B6A9D: FFreeVar var_12C = "": var_160 = ""
  loc_6B6AA6: LitI4 1
  loc_6B6AAB: FLdUI1
  loc_6B6AAF: CI4UI1
  loc_6B6AB0: FLdRfVar var_BC
  loc_6B6AB3: Ary1LdPr
  loc_6B6AB4: MemLdUI1 global_12
  loc_6B6AB8: CI4UI1
  loc_6B6AB9: ImpAdLdRf MemVar_74C074
  loc_6B6ABC: AryLdPr
  loc_6B6ABF: MemLdR8 global_0
  loc_6B6AC2: FLdUI1
  loc_6B6AC6: CI4UI1
  loc_6B6AC7: FLdRfVar var_BC
  loc_6B6ACA: Ary1LdPr
  loc_6B6ACB: MemStR8 global_16
  loc_6B6ACE: LitVarI2 var_12C, 8
  loc_6B6AD3: FLdUI1
  loc_6B6AD7: CI2UI1
  loc_6B6AD9: LitI2_Byte &HC
  loc_6B6ADB: AddI2
  loc_6B6ADC: CI4UI1
  loc_6B6ADD: FLdRfVar var_88
  loc_6B6AE0: CVarRef
  loc_6B6AE5: FLdRfVar var_160
  loc_6B6AE8: ImpAdCallFPR4  = Mid(, , )
  loc_6B6AED: FLdRfVar var_160
  loc_6B6AF0: FnCCurVar
  loc_6B6AF2: CR8Cy
  loc_6B6AF3: ImpAdLdFPR4 MemVar_74C2E0
  loc_6B6AF6: DivR8
  loc_6B6AF7: CCyR4
  loc_6B6AF8: FLdUI1
  loc_6B6AFC: CI4UI1
  loc_6B6AFD: FLdRfVar var_BC
  loc_6B6B00: Ary1LdPr
  loc_6B6B01: MemStR8 global_24
  loc_6B6B04: FFreeVar var_12C = "": var_160 = ""
  loc_6B6B0D: FLdUI1
  loc_6B6B11: CI4UI1
  loc_6B6B12: FLdRfVar var_BC
  loc_6B6B15: Ary1LdPr
  loc_6B6B16: MemLdUI1 global_12
  loc_6B6B1A: CI4UI1
  loc_6B6B1B: ImpAdLdRf MemVar_74C094
  loc_6B6B1E: Ary1LdCy
  loc_6B6B1F: FLdUI1
  loc_6B6B23: CI4UI1
  loc_6B6B24: FLdRfVar var_BC
  loc_6B6B27: Ary1LdPr
  loc_6B6B28: MemStR8 global_32
  loc_6B6B2B: FLdR8 var_E4
  loc_6B6B2E: FLdUI1
  loc_6B6B32: CI4UI1
  loc_6B6B33: FLdRfVar var_BC
  loc_6B6B36: Ary1LdPr
  loc_6B6B37: MemLdR8 global_0
  loc_6B6B3A: FLdUI1
  loc_6B6B3E: CI4UI1
  loc_6B6B3F: FLdRfVar var_BC
  loc_6B6B42: Ary1LdPr
  loc_6B6B43: MemLdR8 global_32
  loc_6B6B46: MulCy
  loc_6B6B47: AddCy
  loc_6B6B48: FStR8 var_E4
  loc_6B6B4B: FLdR8 var_C4
  loc_6B6B4E: FLdUI1
  loc_6B6B52: CI4UI1
  loc_6B6B53: FLdRfVar var_BC
  loc_6B6B56: Ary1LdPr
  loc_6B6B57: MemLdR8 global_24
  loc_6B6B5A: AddCy
  loc_6B6B5B: FStR8 var_C4
  loc_6B6B5E: FLdUI1
  loc_6B6B62: CI2UI1
  loc_6B6B64: LitI2_Byte &H15
  loc_6B6B66: AddI2
  loc_6B6B67: CUI1I2
  loc_6B6B69: FStUI1 var_8C
  loc_6B6B6D: FLdRfVar var_8A
  loc_6B6B70: NextUI1
  loc_6B6B76: FLdR8 var_C4
  loc_6B6B79: FLdR8 var_E4
  loc_6B6B7C: SubCy
  loc_6B6B7D: FStR8 var_DC
  loc_6B6B80: ILdRf var_A4
  loc_6B6B83: ImpAdCallFPR4 push Val()
  loc_6B6B88: FStFPR8 var_16C
  loc_6B6B8B: FLdR8 var_DC
  loc_6B6B8E: CR8Cy
  loc_6B6B8F: FLdFPR8 var_16C
  loc_6B6B92: LitI2 10000
  loc_6B6B95: CR8I2
  loc_6B6B96: DivR8
  loc_6B6B97: MulR8
  loc_6B6B98: CCyR4
  loc_6B6B99: FStR8 var_D4
  loc_6B6B9C: FLdR8 var_DC
  loc_6B6B9F: FLdR8 var_D4
  loc_6B6BA2: SubCy
  loc_6B6BA3: FStR8 var_EC
  loc_6B6BA6: FLdR8 var_E4
  loc_6B6BA9: FLdR8 var_D4
  loc_6B6BAC: AddCy
  loc_6B6BAD: FLdR8 var_EC
  loc_6B6BB0: AddCy
  loc_6B6BB1: FStR8 var_C4
  loc_6B6BB4: OnErrorGoto loc_6B6F01
  loc_6B6BB7: LitI2_Byte 0
  loc_6B6BB9: FStI2 var_F6
  loc_6B6BBC: LitI4 1
  loc_6B6BC1: LitI4 1
  loc_6B6BC6: LitVarStr var_150, "0000"
  loc_6B6BCB: FStVarCopyObj var_12C
  loc_6B6BCE: FLdRfVar var_12C
  loc_6B6BD1: FLdRfVar var_A0
  loc_6B6BD4: CVarRef
  loc_6B6BD9: FLdRfVar var_160
  loc_6B6BDC: ImpAdCallFPR4  = Format(, )
  loc_6B6BE1: FLdRfVar var_160
  loc_6B6BE4: CStrVarTmp
  loc_6B6BE5: FStStr var_104
  loc_6B6BE8: FFreeVar var_12C = ""
  loc_6B6BEF: ILdRf var_9C
  loc_6B6BF2: FStStrCopy var_100
  loc_6B6BF5: LitStr "FB"
  loc_6B6BF8: FStStrCopy var_FC
  loc_6B6BFB: FLdRfVar var_12C
  loc_6B6BFE: ImpAdCallFPR4  = Date
  loc_6B6C03: FLdRfVar var_12C
  loc_6B6C06: FLdRfVar var_160
  loc_6B6C09: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_6B6C0E: FLdRfVar var_19C
  loc_6B6C11: ImpAdCallFPR4  = Date
  loc_6B6C16: FLdRfVar var_19C
  loc_6B6C19: FLdRfVar var_1AC
  loc_6B6C1C: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_6B6C21: FLdRfVar var_1EC
  loc_6B6C24: ImpAdCallFPR4  = Date
  loc_6B6C29: FLdRfVar var_1EC
  loc_6B6C2C: FLdRfVar var_1FC
  loc_6B6C2F: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_6B6C34: LitI4 1
  loc_6B6C39: LitI4 1
  loc_6B6C3E: LitVarStr var_13C, "0000"
  loc_6B6C43: FStVarCopyObj var_17C
  loc_6B6C46: FLdRfVar var_17C
  loc_6B6C49: FLdRfVar var_160
  loc_6B6C4C: FLdRfVar var_18C
  loc_6B6C4F: ImpAdCallFPR4  = Format(, )
  loc_6B6C54: FLdRfVar var_18C
  loc_6B6C57: LitI4 1
  loc_6B6C5C: LitI4 1
  loc_6B6C61: LitVarStr var_150, "00"
  loc_6B6C66: FStVarCopyObj var_1BC
  loc_6B6C69: FLdRfVar var_1BC
  loc_6B6C6C: FLdRfVar var_1AC
  loc_6B6C6F: FLdRfVar var_1CC
  loc_6B6C72: ImpAdCallFPR4  = Format(, )
  loc_6B6C77: FLdRfVar var_1CC
  loc_6B6C7A: ConcatVar var_1DC
  loc_6B6C7E: LitI4 1
  loc_6B6C83: LitI4 1
  loc_6B6C88: LitVarStr var_20C, "00"
  loc_6B6C8D: FStVarCopyObj var_21C
  loc_6B6C90: FLdRfVar var_21C
  loc_6B6C93: FLdRfVar var_1FC
  loc_6B6C96: FLdRfVar var_22C
  loc_6B6C99: ImpAdCallFPR4  = Format(, )
  loc_6B6C9E: FLdRfVar var_22C
  loc_6B6CA1: ConcatVar var_23C
  loc_6B6CA5: CStrVarTmp
  loc_6B6CA6: FStStr var_108
  loc_6B6CA9: FFreeVar var_12C = "": var_160 = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_18C = "": var_1CC = "": var_1EC = "": var_1FC = "": var_21C = "": var_1DC = "": var_22C = ""
  loc_6B6CC8: FLdRfVar var_12C
  loc_6B6CCB: ImpAdCallFPR4  = Time
  loc_6B6CD0: FLdRfVar var_12C
  loc_6B6CD3: FLdRfVar var_160
  loc_6B6CD6: ImpAdCallFPR4  = Hour()
  loc_6B6CDB: FLdRfVar var_19C
  loc_6B6CDE: ImpAdCallFPR4  = Time
  loc_6B6CE3: FLdRfVar var_19C
  loc_6B6CE6: FLdRfVar var_1AC
  loc_6B6CE9: ImpAdCallFPR4  = Minute()
  loc_6B6CEE: LitI4 1
  loc_6B6CF3: LitI4 1
  loc_6B6CF8: LitVarStr var_13C, "00"
  loc_6B6CFD: FStVarCopyObj var_17C
  loc_6B6D00: FLdRfVar var_17C
  loc_6B6D03: FLdRfVar var_160
  loc_6B6D06: FLdRfVar var_18C
  loc_6B6D09: ImpAdCallFPR4  = Format(, )
  loc_6B6D0E: FLdRfVar var_18C
  loc_6B6D11: LitI4 1
  loc_6B6D16: LitI4 1
  loc_6B6D1B: LitVarStr var_150, "00"
  loc_6B6D20: FStVarCopyObj var_1BC
  loc_6B6D23: FLdRfVar var_1BC
  loc_6B6D26: FLdRfVar var_1AC
  loc_6B6D29: FLdRfVar var_1CC
  loc_6B6D2C: ImpAdCallFPR4  = Format(, )
  loc_6B6D31: FLdRfVar var_1CC
  loc_6B6D34: ConcatVar var_1DC
  loc_6B6D38: CStrVarTmp
  loc_6B6D39: FStStr var_10C
  loc_6B6D3C: FFreeVar var_12C = "": var_160 = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_18C = "": var_1CC = ""
  loc_6B6D51: On Error GoTo 0
  loc_6B6D54: ILdRf var_100
  loc_6B6D57: ImpAdCallFPR4 push Val()
  loc_6B6D5C: FStFPR8 var_16C
  loc_6B6D5F: LitI4 1
  loc_6B6D64: LitI4 1
  loc_6B6D69: LitVarStr var_150, "00000000"
  loc_6B6D6E: FStVarCopyObj var_160
  loc_6B6D71: FLdRfVar var_160
  loc_6B6D74: FLdFPR8 var_16C
  loc_6B6D77: LitI2_Byte 1
  loc_6B6D79: CR8I2
  loc_6B6D7A: AddR8
  loc_6B6D7B: CVarR8
  loc_6B6D7F: FLdRfVar var_17C
  loc_6B6D82: ImpAdCallFPR4  = Format(, )
  loc_6B6D87: FLdRfVar var_11A
  loc_6B6D8A: FLdRfVar var_17C
  loc_6B6D8D: CStrVarTmp
  loc_6B6D8E: PopTmpLdAdStr
  loc_6B6D92: LitStr "B"
  loc_6B6D95: FStStrCopy var_164
  loc_6B6D98: FLdRfVar var_164
  loc_6B6D9B: FLdRfVar var_118
  loc_6B6D9E: ImpAdLdRf MemVar_74C760
  loc_6B6DA1: NewIfNullPr Formx
  loc_6B6DA4: from_stack_1v = Formx.global_4589716Get()
  loc_6B6DA9: FLdPr var_118
  loc_6B6DAC:  = Formx.FontStrikethru
  loc_6B6DB1: FLdI2 var_11A
  loc_6B6DB4: NotI4
  loc_6B6DB5: FFreeStr var_164 = ""
  loc_6B6DBC: FFree1Ad var_118
  loc_6B6DBF: FFreeVar var_12C = "": var_160 = ""
  loc_6B6DC8: BranchF loc_6B6DF7
  loc_6B6DCB: FLdRfVar var_12C
  loc_6B6DCE: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6B6DD3: FLdRfVar var_12C
  loc_6B6DD6: CBoolVarNull
  loc_6B6DD8: FFree1Var var_12C = ""
  loc_6B6DDB: BranchF loc_6B6DF4
  loc_6B6DDE: ILdRf Me
  loc_6B6DE1: FStAdNoPop
  loc_6B6DE5: ImpAdLdRf MemVar_7520D4
  loc_6B6DE8: NewIfNullPr Global
  loc_6B6DEB: Global.Unload from_stack_1
  loc_6B6DF0: FFree1Ad var_118
  loc_6B6DF3: ExitProcHresult
  loc_6B6DF4: Branch loc_6B6D54
  loc_6B6DF7: FLdRfVar var_240
  loc_6B6DFA: LitVar_Missing var_1EC
  loc_6B6DFD: LitVar_Missing var_1DC
  loc_6B6E00: LitVar_Missing var_1CC
  loc_6B6E03: LitVar_Missing var_1BC
  loc_6B6E06: LitVar_Missing var_1AC
  loc_6B6E09: LitVar_Missing var_19C
  loc_6B6E0C: LitVar_Missing var_18C
  loc_6B6E0F: LitVar_Missing var_17C
  loc_6B6E12: LitVar_Missing var_160
  loc_6B6E15: LitVar_Missing var_12C
  loc_6B6E18: LitStr "Introduzca el formulario de Facturas B para emitir la factura diferencia y presione Enter"
  loc_6B6E1B: FStStrCopy var_164
  loc_6B6E1E: FLdRfVar var_164
  loc_6B6E21: LitI4 &H9F
  loc_6B6E26: PopTmpLdAdStr var_244
  loc_6B6E29: LitI2_Byte &HA
  loc_6B6E2B: PopTmpLdAd2 var_11A
  loc_6B6E2E: ImpAdLdRf MemVar_74C7D0
  loc_6B6E31: NewIfNullPr clsMsg
  loc_6B6E34: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6B6E39: ILdRf var_240
  loc_6B6E3C: FLdPr Me
  loc_6B6E3F: MemStStrCopy
  loc_6B6E43: FFreeStr var_164 = ""
  loc_6B6E4A: FFreeVar var_12C = "": var_160 = "": var_17C = "": var_18C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = ""
  loc_6B6E61: LitVar_Missing var_17C
  loc_6B6E64: LitVar_Missing var_160
  loc_6B6E67: LitVar_Missing var_12C
  loc_6B6E6A: LitI4 0
  loc_6B6E6F: FLdPr Me
  loc_6B6E72: MemLdRfVar from_stack_1.sSeccionesSeleccionadas28
  loc_6B6E75: CVarRef
  loc_6B6E7A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B6E7F: FFreeVar var_12C = "": var_160 = ""
  loc_6B6E88: FLdRfVar var_164
  loc_6B6E8B: FLdRfVar var_118
  loc_6B6E8E: ImpAdLdRf MemVar_7520D4
  loc_6B6E91: NewIfNullPr Global
  loc_6B6E94:  = Global.App
  loc_6B6E99: FLdPr var_118
  loc_6B6E9C:  = App.Path
  loc_6B6EA1: ILdRf var_164
  loc_6B6EA4: LitStr "\factura.rpt"
  loc_6B6EA7: ConcatStr
  loc_6B6EA8: CVarStr var_12C
  loc_6B6EAB: PopAdLdVar
  loc_6B6EAC: FLdPrThis
  loc_6B6EAD: VCallAd Control_ID_CrystalReport1
  loc_6B6EB0: FStAdFunc var_2B8
  loc_6B6EB3: FLdPr var_2B8
  loc_6B6EB6: LateIdSt
  loc_6B6EBB: FFree1Str var_164
  loc_6B6EBE: FFreeAd var_118 = ""
  loc_6B6EC5: FFree1Var var_12C = ""
  loc_6B6EC8: LitVarI4
  loc_6B6ED0: PopAdLdVar
  loc_6B6ED1: FLdPrThis
  loc_6B6ED2: VCallAd Control_ID_CrystalReport1
  loc_6B6ED5: FStAdFunc var_118
  loc_6B6ED8: FLdPr var_118
  loc_6B6EDB: LateIdSt
  loc_6B6EE0: FFree1Ad var_118
  loc_6B6EE3: LitVarI2 var_13C, 2
  loc_6B6EE8: PopAdLdVar
  loc_6B6EE9: FLdPrThis
  loc_6B6EEA: VCallAd Control_ID_CrystalReport1
  loc_6B6EED: FStAdFunc var_118
  loc_6B6EF0: FLdPr var_118
  loc_6B6EF3: LateIdSt
  loc_6B6EF8: FFree1Ad var_118
  loc_6B6EFB: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_6B6F00: ExitProcHresult
  loc_6B6F01: FLdPr Me
  loc_6B6F04: MemLdStr sSeccionesSeleccionadas32
  loc_6B6F07: CVarStr var_13C
  loc_6B6F0A: LitI4 &HD
  loc_6B6F0F: FLdRfVar var_12C
  loc_6B6F12: ImpAdCallFPR4  = Chr()
  loc_6B6F17: FLdRfVar var_12C
  loc_6B6F1A: ConcatVar var_160
  loc_6B6F1E: LitI4 &HD
  loc_6B6F23: FLdRfVar var_17C
  loc_6B6F26: ImpAdCallFPR4  = Chr()
  loc_6B6F2B: FLdRfVar var_17C
  loc_6B6F2E: ConcatVar var_18C
  loc_6B6F32: CStrVarTmp
  loc_6B6F33: FStStr var_114
  loc_6B6F36: FFreeVar var_12C = "": var_160 = "": var_17C = ""
  loc_6B6F41: ILdRf var_114
  loc_6B6F44: FLdPr Me
  loc_6B6F47: MemLdStr sSeccionesSeleccionadas36
  loc_6B6F4A: ConcatStr
  loc_6B6F4B: FStStrNoPop var_164
  loc_6B6F4E: FLdRfVar var_244
  loc_6B6F51: ImpAdCallI2 Err 'rtcErrObj
  loc_6B6F56: FStAdFunc var_118
  loc_6B6F59: FLdPr var_118
  loc_6B6F5C:  = Err.Number
  loc_6B6F61: ILdRf var_244
  loc_6B6F64: CStrI4
  loc_6B6F66: FStStrNoPop var_240
  loc_6B6F69: ConcatStr
  loc_6B6F6A: CVarStr var_160
  loc_6B6F6D: LitI4 &HD
  loc_6B6F72: FLdRfVar var_12C
  loc_6B6F75: ImpAdCallFPR4  = Chr()
  loc_6B6F7A: FLdRfVar var_12C
  loc_6B6F7D: ConcatVar var_17C
  loc_6B6F81: CStrVarTmp
  loc_6B6F82: FStStr var_114
  loc_6B6F85: FFreeStr var_164 = ""
  loc_6B6F8C: FFree1Ad var_118
  loc_6B6F8F: FFreeVar var_160 = "": var_12C = ""
  loc_6B6F98: ILdRf var_114
  loc_6B6F9B: FLdPr Me
  loc_6B6F9E: MemLdStr sSeccionesSeleccionadas40
  loc_6B6FA1: ConcatStr
  loc_6B6FA2: FStStrNoPop var_240
  loc_6B6FA5: FLdRfVar var_164
  loc_6B6FA8: ImpAdCallI2 Err 'rtcErrObj
  loc_6B6FAD: FStAdFunc var_118
  loc_6B6FB0: FLdPr var_118
  loc_6B6FB3:  = Err.Description
  loc_6B6FB8: ILdRf var_164
  loc_6B6FBB: ConcatStr
  loc_6B6FBC: FStStr var_114
  loc_6B6FBF: FFreeStr var_240 = ""
  loc_6B6FC6: FFree1Ad var_118
  loc_6B6FC9: LitVar_Missing var_160
  loc_6B6FCC: LitVar_Missing var_12C
  loc_6B6FCF: FLdPr Me
  loc_6B6FD2: MemLdRfVar from_stack_1.sSeccionesSeleccionadas44
  loc_6B6FD5: CVarRef
  loc_6B6FDA: LitI4 &H10
  loc_6B6FDF: FLdRfVar var_114
  loc_6B6FE2: CVarRef
  loc_6B6FE7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6B6FEC: FFreeVar var_12C = ""
  loc_6B6FF3: ExitProcHresult
  loc_6B6FF4: ExitProcHresult
End Sub

Public Sub ImpresionFacturaDiferencia(AddCountMovement) '70732C
  'Data Table: 460894
  loc_70616C: LitI2_Byte 0
  loc_70616E: PopTmpLdAd2 var_1CE
  loc_706171: ImpAdCallI2 Proc_53_4_718EF4()
  loc_706176: NotI4
  loc_706177: BranchF loc_70617D
  loc_70617C: ExitProcHresult
  loc_706181: FLdRfVar var_1CE
  loc_706184: FLdRfVar var_198
  loc_706187: FLdRfVar var_190
  loc_70618A: FLdRfVar var_18C
  loc_70618D: FLdRfVar var_188
  loc_706190: FLdRfVar var_1D4
  loc_706193: ImpAdLdRf MemVar_74C760
  loc_706196: NewIfNullPr Formx
  loc_706199: from_stack_1v = Formx.global_4589716Get()
  loc_70619E: FLdPr var_1D4
  loc_7061A1: Formx.FontItalic = from_stack_1b
  loc_7061A6: FLdI2 var_1CE
  loc_7061A9: NotI4
  loc_7061AA: FFree1Ad var_1D4
  loc_7061AD: BranchF loc_7061E6
  loc_7061B2: FLdRfVar var_1E4
  loc_7061B5: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7061BA: FLdRfVar var_1E4
  loc_7061BD: CBoolVarNull
  loc_7061BF: FFree1Var var_1E4 = ""
  loc_7061C2: BranchF loc_7061DF
  loc_7061C7: ILdRf Me
  loc_7061CA: FStAdNoPop
  loc_7061CE: ImpAdLdRf MemVar_7520D4
  loc_7061D1: NewIfNullPr Global
  loc_7061D4: Global.Unload from_stack_1
  loc_7061D9: FFree1Ad var_1D4
  loc_7061DE: ExitProcHresult
  loc_7061E3: Branch loc_70617F
  loc_7061E8: FLdRfVar var_1CE
  loc_7061EB: FLdRfVar var_1C0
  loc_7061EE: FLdRfVar var_1D4
  loc_7061F1: ImpAdLdRf MemVar_74C760
  loc_7061F4: NewIfNullPr Formx
  loc_7061F7: from_stack_1v = Formx.global_4589716Get()
  loc_7061FC: FLdPr var_1D4
  loc_7061FF: Formx.FontUnderline = from_stack_1b
  loc_706204: FLdI2 var_1CE
  loc_706207: NotI4
  loc_706208: FFree1Ad var_1D4
  loc_70620B: BranchF loc_706246
  loc_706210: FLdRfVar var_1E4
  loc_706213: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_706218: FLdRfVar var_1E4
  loc_70621B: CBoolVarNull
  loc_70621D: FFree1Var var_1E4 = ""
  loc_706220: BranchF loc_70623F
  loc_706225: LitVar_FALSE
  loc_706229: PopAdLdVar
  loc_70622A: FLdPrThis
  loc_70622B: VCallAd Control_ID_PanelCierres
  loc_70622E: FStAdFunc var_1D4
  loc_706231: FLdPr var_1D4
  loc_706234: LateIdSt
  loc_706239: FFree1Ad var_1D4
  loc_70623E: ExitProcHresult
  loc_706243: Branch loc_7061E6
  loc_706248: FLdRfVar var_1C0
  loc_70624B: CVarRef
  loc_706250: FLdRfVar var_1E4
  loc_706253: ImpAdCallFPR4  = Trim()
  loc_706258: FLdRfVar var_1E4
  loc_70625B: CStrVarTmp
  loc_70625C: FStStr var_1C0
  loc_70625F: FFree1Var var_1E4 = ""
  loc_706264: ILdRf var_1C0
  loc_706267: FnLenStr
  loc_706268: LitI4 1
  loc_70626D: EqI4
  loc_70626E: BranchF loc_706274
  loc_706273: ExitProcHresult
  loc_706276: LitI2_Byte 1
  loc_706278: CUI1I2
  loc_70627A: FStUI1 var_1C6
  loc_706280: LitI2_Byte 1
  loc_706282: CUI1I2
  loc_706284: FLdRfVar var_192
  loc_706287: LitI2_Byte &HA
  loc_706289: CUI1I2
  loc_70628B: ForUI1 var_1F8
  loc_706293: LitVarI2 var_1E4, 8
  loc_706298: FLdUI1
  loc_70629C: CI2UI1
  loc_70629E: LitI2_Byte 3
  loc_7062A0: AddI2
  loc_7062A1: CI4UI1
  loc_7062A2: FLdRfVar var_1C0
  loc_7062A5: CVarRef
  loc_7062AA: FLdRfVar var_218
  loc_7062AD: ImpAdCallFPR4  = Mid(, , )
  loc_7062B2: FLdRfVar var_218
  loc_7062B5: FnCCurVar
  loc_7062B7: CR8Cy
  loc_7062B8: LitI2_Byte &H64
  loc_7062BA: CR8I2
  loc_7062BB: DivR8
  loc_7062BC: CCyR4
  loc_7062BD: FLdUI1
  loc_7062C1: CI4UI1
  loc_7062C2: FLdRfVar var_1B0
  loc_7062C5: Ary1LdPr
  loc_7062C6: MemStR8 global_0
  loc_7062C9: FFreeVar var_1E4 = "": var_218 = ""
  loc_7062D4: LitVarI2 var_1E4, 2
  loc_7062D9: FLdUI1
  loc_7062DD: CI4UI1
  loc_7062DE: FLdRfVar var_1C0
  loc_7062E1: CVarRef
  loc_7062E6: FLdRfVar var_218
  loc_7062E9: ImpAdCallFPR4  = Mid(, , )
  loc_7062EE: FLdRfVar var_21C
  loc_7062F1: FLdRfVar var_218
  loc_7062F4: FnCIntVar
  loc_7062F6: ImpAdLdRf MemVar_74A220
  loc_7062F9: NewIfNullPr clsProducts
  loc_706301: ILdRf var_21C
  loc_706304: FLdUI1
  loc_706308: CI4UI1
  loc_706309: FLdRfVar var_1B0
  loc_70630C: Ary1LdPr
  loc_70630D: MemStStrCopy
  loc_706311: FFree1Str var_21C
  loc_706314: FFreeVar var_1E4 = "": var_218 = ""
  loc_70631F: LitVarI2 var_1E4, 2
  loc_706324: FLdUI1
  loc_706328: CI4UI1
  loc_706329: FLdRfVar var_1C0
  loc_70632C: CVarRef
  loc_706331: FLdRfVar var_218
  loc_706334: ImpAdCallFPR4  = Mid(, , )
  loc_706339: FLdRfVar var_218
  loc_70633C: FnCByteVar
  loc_70633E: FLdUI1
  loc_706342: CI4UI1
  loc_706343: FLdRfVar var_1B0
  loc_706346: Ary1LdPr
  loc_706347: MemStUI1
  loc_70634B: FFreeVar var_1E4 = "": var_218 = ""
  loc_706356: LitVarI2 var_1E4, 8
  loc_70635B: FLdUI1
  loc_70635F: CI2UI1
  loc_706361: LitI2_Byte &HC
  loc_706363: AddI2
  loc_706364: CI4UI1
  loc_706365: FLdRfVar var_1C0
  loc_706368: CVarRef
  loc_70636D: FLdRfVar var_218
  loc_706370: ImpAdCallFPR4  = Mid(, , )
  loc_706375: FLdRfVar var_218
  loc_706378: FnCCurVar
  loc_70637A: CR8Cy
  loc_70637B: ImpAdLdFPR4 MemVar_74C2E0
  loc_70637E: DivR8
  loc_70637F: CCyR4
  loc_706380: FLdUI1
  loc_706384: CI4UI1
  loc_706385: FLdRfVar var_1B0
  loc_706388: Ary1LdPr
  loc_706389: MemStR8 global_24
  loc_70638C: FFreeVar var_1E4 = "": var_218 = ""
  loc_706397: FLdUI1
  loc_70639B: CI4UI1
  loc_70639C: FLdRfVar var_1B0
  loc_70639F: Ary1LdPr
  loc_7063A0: MemLdUI1 global_12
  loc_7063A4: CI4UI1
  loc_7063A5: ImpAdLdRf MemVar_74C094
  loc_7063A8: Ary1LdCy
  loc_7063A9: FLdUI1
  loc_7063AD: CI4UI1
  loc_7063AE: FLdRfVar var_1B0
  loc_7063B1: Ary1LdPr
  loc_7063B2: MemStR8 global_32
  loc_7063B7: FLdR8 var_BC
  loc_7063BA: FLdUI1
  loc_7063BE: CI4UI1
  loc_7063BF: FLdRfVar var_1B0
  loc_7063C2: Ary1LdPr
  loc_7063C3: MemLdR8 global_0
  loc_7063C6: FLdUI1
  loc_7063CA: CI4UI1
  loc_7063CB: FLdRfVar var_1B0
  loc_7063CE: Ary1LdPr
  loc_7063CF: MemLdR8 global_32
  loc_7063D2: MulCy
  loc_7063D3: AddCy
  loc_7063D4: FStR8 var_BC
  loc_7063D9: FLdR8 var_9C
  loc_7063DC: FLdUI1
  loc_7063E0: CI4UI1
  loc_7063E1: FLdRfVar var_1B0
  loc_7063E4: Ary1LdPr
  loc_7063E5: MemLdR8 global_24
  loc_7063E8: AddCy
  loc_7063E9: FStR8 var_9C
  loc_7063EE: FLdUI1
  loc_7063F2: CI4UI1
  loc_7063F3: FLdRfVar var_1B0
  loc_7063F6: Ary1LdPr
  loc_7063F7: MemLdR8 global_0
  loc_7063FA: LitI2_Byte 0
  loc_7063FC: CR8I2
  loc_7063FD: NeCyR8
  loc_7063FE: BranchF loc_70642E
  loc_706403: FLdUI1
  loc_706407: CI4UI1
  loc_706408: FLdRfVar var_1B0
  loc_70640B: Ary1LdPr
  loc_70640C: MemLdR8 global_24
  loc_70640F: CR8Cy
  loc_706410: FLdUI1
  loc_706414: CI4UI1
  loc_706415: FLdRfVar var_1B0
  loc_706418: Ary1LdPr
  loc_706419: MemLdR8 global_0
  loc_70641C: CR8Cy
  loc_70641D: DivR8
  loc_70641E: CCyR4
  loc_70641F: FLdUI1
  loc_706423: CI4UI1
  loc_706424: FLdRfVar var_1B0
  loc_706427: Ary1LdPr
  loc_706428: MemStR8 global_16
  loc_70642B: Branch loc_706441
  loc_706432: LitI2_Byte 0
  loc_706434: CCyI2
  loc_706435: FLdUI1
  loc_706439: CI4UI1
  loc_70643A: FLdRfVar var_1B0
  loc_70643D: Ary1LdPr
  loc_70643E: MemStR8 global_16
  loc_706445: FLdUI1
  loc_706449: CI2UI1
  loc_70644B: LitI2_Byte &H15
  loc_70644D: AddI2
  loc_70644E: CUI1I2
  loc_706450: FStUI1 var_1C6
  loc_706456: FLdRfVar var_192
  loc_706459: NextUI1
  loc_706461: LitStr "** FACTURA DIFERENCIA **"
  loc_706464: LitI4 0
  loc_706469: FLdRfVar var_1B0
  loc_70646C: Ary1LdPr
  loc_70646D: MemStStrCopy
  loc_706473: FLdR8 var_9C
  loc_706476: FLdR8 var_BC
  loc_706479: SubCy
  loc_70647A: FStR8 var_B4
  loc_70647F: ILdRf var_198
  loc_706482: ImpAdCallFPR4 push Val()
  loc_706487: FStFPR8 var_224
  loc_70648A: FLdR8 var_B4
  loc_70648D: CR8Cy
  loc_70648E: FLdFPR8 var_224
  loc_706491: LitI2 10000
  loc_706494: CR8I2
  loc_706495: DivR8
  loc_706496: MulR8
  loc_706497: CCyR4
  loc_706498: FStR8 var_AC
  loc_70649D: FLdR8 var_B4
  loc_7064A0: FLdR8 var_AC
  loc_7064A3: SubCy
  loc_7064A4: FStR8 var_C4
  loc_7064A9: FLdR8 var_BC
  loc_7064AC: FLdR8 var_AC
  loc_7064AF: AddCy
  loc_7064B0: FLdR8 var_C4
  loc_7064B3: AddCy
  loc_7064B4: FStR8 var_9C
  loc_7064B9: LitStr "B"
  loc_7064BC: FLdRfVar var_CC
  loc_7064BF: StFixedStr
  loc_7064C4: ILdRf var_18C
  loc_7064C7: FStStrCopy var_C8
  loc_7064CC: LitStr "Consumidor Final"
  loc_7064CF: FStStrCopy var_13C
  loc_7064D4: LitVarStr var_1F4, vbNullString
  loc_7064D9: FStVarCopy
  loc_7064DF: LitI2_Byte 0
  loc_7064E1: FStI2 var_140
  loc_7064E6: LitVarStr var_1F4, vbNullString
  loc_7064EB: FStVarCopy
  loc_7064F1: LitI2_Byte 1
  loc_7064F3: FStI2 var_D4
  loc_7064F8: LitStr "B"
  loc_7064FB: FStStrCopy var_D0
  loc_706500: OnErrorGoto loc_707210
  loc_706505: LitI2_Byte &HFF
  loc_706507: FStI2 var_1B2
  loc_70650C: LitI2_Byte 0
  loc_70650E: FStI2 var_86
  loc_706513: LitI4 1
  loc_706518: LitI4 1
  loc_70651D: LitVarStr var_208, "0000"
  loc_706522: FStVarCopyObj var_1E4
  loc_706525: FLdRfVar var_1E4
  loc_706528: FLdRfVar var_190
  loc_70652B: CVarRef
  loc_706530: FLdRfVar var_218
  loc_706533: ImpAdCallFPR4  = Format(, )
  loc_706538: FLdRfVar var_218
  loc_70653B: CStrVarTmp
  loc_70653C: FStStr var_94
  loc_70653F: FFreeVar var_1E4 = ""
  loc_706548: ILdRf var_C8
  loc_70654B: FStStrCopy var_90
  loc_706550: LitStr "FB"
  loc_706553: FStStrCopy var_8C
  loc_706558: FLdRfVar var_1E4
  loc_70655B: ImpAdCallFPR4  = Date
  loc_706560: FLdRfVar var_1E4
  loc_706563: FStVar var_150
  loc_706569: FLdRfVar var_1E4
  loc_70656C: ImpAdCallFPR4  = Time
  loc_706571: FLdRfVar var_1E4
  loc_706574: FStVar var_16C
  loc_70657A: FLdRfVar var_150
  loc_70657D: FLdRfVar var_1E4
  loc_706580: ImpAdCallFPR4  = Proc_53_1_5D6ED8()
  loc_706585: LitI4 1
  loc_70658A: LitI4 1
  loc_70658F: LitVarStr var_1F4, "0000"
  loc_706594: FStVarCopyObj var_218
  loc_706597: FLdRfVar var_218
  loc_70659A: FLdRfVar var_1E4
  loc_70659D: FLdRfVar var_234
  loc_7065A0: ImpAdCallFPR4  = Format(, )
  loc_7065A5: FLdRfVar var_234
  loc_7065A8: CStrVarTmp
  loc_7065A9: FStStr var_154
  loc_7065AC: FFreeVar var_1E4 = "": var_218 = ""
  loc_7065B7: FLdRfVar var_150
  loc_7065BA: FLdRfVar var_1E4
  loc_7065BD: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_7065C2: LitI4 1
  loc_7065C7: LitI4 1
  loc_7065CC: LitVarStr var_1F4, "00"
  loc_7065D1: FStVarCopyObj var_218
  loc_7065D4: FLdRfVar var_218
  loc_7065D7: FLdRfVar var_1E4
  loc_7065DA: FLdRfVar var_234
  loc_7065DD: ImpAdCallFPR4  = Format(, )
  loc_7065E2: FLdRfVar var_234
  loc_7065E5: CStrVarTmp
  loc_7065E6: FStStr var_158
  loc_7065E9: FFreeVar var_1E4 = "": var_218 = ""
  loc_7065F4: FLdRfVar var_150
  loc_7065F7: FLdRfVar var_1E4
  loc_7065FA: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_7065FF: LitI4 1
  loc_706604: LitI4 1
  loc_706609: LitVarStr var_1F4, "00"
  loc_70660E: FStVarCopyObj var_218
  loc_706611: FLdRfVar var_218
  loc_706614: FLdRfVar var_1E4
  loc_706617: FLdRfVar var_234
  loc_70661A: ImpAdCallFPR4  = Format(, )
  loc_70661F: FLdRfVar var_234
  loc_706622: CStrVarTmp
  loc_706623: FStStr var_15C
  loc_706626: FFreeVar var_1E4 = "": var_218 = ""
  loc_706631: FLdRfVar var_16C
  loc_706634: FLdRfVar var_1E4
  loc_706637: ImpAdCallFPR4  = Hour()
  loc_70663C: LitI4 1
  loc_706641: LitI4 1
  loc_706646: LitVarStr var_1F4, "00"
  loc_70664B: FStVarCopyObj var_218
  loc_70664E: FLdRfVar var_218
  loc_706651: FLdRfVar var_1E4
  loc_706654: FLdRfVar var_234
  loc_706657: ImpAdCallFPR4  = Format(, )
  loc_70665C: FLdRfVar var_234
  loc_70665F: CStrVarTmp
  loc_706660: FStStr var_170
  loc_706663: FFreeVar var_1E4 = "": var_218 = ""
  loc_70666E: FLdRfVar var_16C
  loc_706671: FLdRfVar var_1E4
  loc_706674: ImpAdCallFPR4  = Minute()
  loc_706679: LitI4 1
  loc_70667E: LitI4 1
  loc_706683: LitVarStr var_1F4, "00"
  loc_706688: FStVarCopyObj var_218
  loc_70668B: FLdRfVar var_218
  loc_70668E: FLdRfVar var_1E4
  loc_706691: FLdRfVar var_234
  loc_706694: ImpAdCallFPR4  = Format(, )
  loc_706699: FLdRfVar var_234
  loc_70669C: CStrVarTmp
  loc_70669D: FStStr var_174
  loc_7066A0: FFreeVar var_1E4 = "": var_218 = ""
  loc_7066AB: FLdRfVar var_16C
  loc_7066AE: FLdRfVar var_1E4
  loc_7066B1: ImpAdCallFPR4  = Second()
  loc_7066B6: LitI4 1
  loc_7066BB: LitI4 1
  loc_7066C0: LitVarStr var_1F4, "00"
  loc_7066C5: FStVarCopyObj var_218
  loc_7066C8: FLdRfVar var_218
  loc_7066CB: FLdRfVar var_1E4
  loc_7066CE: FLdRfVar var_234
  loc_7066D1: ImpAdCallFPR4  = Format(, )
  loc_7066D6: FLdRfVar var_234
  loc_7066D9: CStrVarTmp
  loc_7066DA: FStStr var_178
  loc_7066DD: FFreeVar var_1E4 = "": var_218 = ""
  loc_7066E8: LitI4 1
  loc_7066ED: LitI4 1
  loc_7066F2: LitVarStr var_208, "0000"
  loc_7066F7: FStVarCopyObj var_1E4
  loc_7066FA: FLdRfVar var_1E4
  loc_7066FD: FLdRfVar var_94
  loc_706700: CVarRef
  loc_706705: FLdRfVar var_218
  loc_706708: ImpAdCallFPR4  = Format(, )
  loc_70670D: FLdRfVar var_218
  loc_706710: CStrVarTmp
  loc_706711: FStStr var_17C
  loc_706714: FFreeVar var_1E4 = ""
  loc_70671D: ILdRf var_17C
  loc_706720: CVarStr var_208
  loc_706723: LitI4 1
  loc_706728: FLdRfVar var_8C
  loc_70672B: CVarRef
  loc_706730: FLdRfVar var_1E4
  loc_706733: ImpAdCallFPR4  = Right(, )
  loc_706738: FLdRfVar var_1E4
  loc_70673B: ConcatVar var_218
  loc_70673F: CStrVarTmp
  loc_706740: FStStr var_17C
  loc_706743: FFreeVar var_1E4 = ""
  loc_70674C: ILdRf var_17C
  loc_70674F: CVarStr var_244
  loc_706752: LitI4 1
  loc_706757: LitI4 1
  loc_70675C: LitVarStr var_208, "00000000"
  loc_706761: FStVarCopyObj var_1E4
  loc_706764: FLdRfVar var_1E4
  loc_706767: FLdRfVar var_90
  loc_70676A: CVarRef
  loc_70676F: FLdRfVar var_218
  loc_706772: ImpAdCallFPR4  = Format(, )
  loc_706777: FLdRfVar var_218
  loc_70677A: ConcatVar var_234
  loc_70677E: CStrVarTmp
  loc_70677F: FStStr var_17C
  loc_706782: FFreeVar var_1E4 = "": var_218 = ""
  loc_70678D: ILdRf var_17C
  loc_706790: CVarStr var_244
  loc_706793: LitI4 1
  loc_706798: LitI4 1
  loc_70679D: LitVarStr var_208, "0000"
  loc_7067A2: FStVarCopyObj var_1E4
  loc_7067A5: FLdRfVar var_1E4
  loc_7067A8: FLdRfVar var_86
  loc_7067AB: CVarRef
  loc_7067B0: FLdRfVar var_218
  loc_7067B3: ImpAdCallFPR4  = Format(, )
  loc_7067B8: FLdRfVar var_218
  loc_7067BB: ConcatVar var_234
  loc_7067BF: CStrVarTmp
  loc_7067C0: FStStr var_17C
  loc_7067C3: FFreeVar var_1E4 = "": var_218 = ""
  loc_7067CE: ILdRf var_17C
  loc_7067D1: CVarStr var_244
  loc_7067D4: LitI4 1
  loc_7067D9: LitI4 1
  loc_7067DE: LitVarStr var_208, "00000000"
  loc_7067E3: FStVarCopyObj var_218
  loc_7067E6: FLdRfVar var_218
  loc_7067E9: FLdR8 var_C4
  loc_7067EC: CR8Cy
  loc_7067ED: ImpAdLdFPR4 MemVar_74C2E0
  loc_7067F0: MulR8
  loc_7067F1: CVarR8
  loc_7067F5: FLdRfVar var_234
  loc_7067F8: ImpAdCallFPR4  = Format(, )
  loc_7067FD: FLdRfVar var_234
  loc_706800: ConcatVar var_254
  loc_706804: CStrVarTmp
  loc_706805: FStStr var_17C
  loc_706808: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_706815: ILdRf var_17C
  loc_706818: CVarStr var_244
  loc_70681B: LitI4 1
  loc_706820: LitI4 1
  loc_706825: LitVarStr var_208, "00000000"
  loc_70682A: FStVarCopyObj var_218
  loc_70682D: FLdRfVar var_218
  loc_706830: FLdR8 var_AC
  loc_706833: CR8Cy
  loc_706834: ImpAdLdFPR4 MemVar_74C2E0
  loc_706837: MulR8
  loc_706838: CVarR8
  loc_70683C: FLdRfVar var_234
  loc_70683F: ImpAdCallFPR4  = Format(, )
  loc_706844: FLdRfVar var_234
  loc_706847: ConcatVar var_254
  loc_70684B: CStrVarTmp
  loc_70684C: FStStr var_17C
  loc_70684F: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_70685C: ILdRf var_17C
  loc_70685F: CVarStr var_244
  loc_706862: LitI4 1
  loc_706867: LitI4 1
  loc_70686C: LitVarStr var_208, "00000000"
  loc_706871: FStVarCopyObj var_218
  loc_706874: FLdRfVar var_218
  loc_706877: FLdR8 var_BC
  loc_70687A: CR8Cy
  loc_70687B: ImpAdLdFPR4 MemVar_74C2E0
  loc_70687E: MulR8
  loc_70687F: CVarR8
  loc_706883: FLdRfVar var_234
  loc_706886: ImpAdCallFPR4  = Format(, )
  loc_70688B: FLdRfVar var_234
  loc_70688E: ConcatVar var_254
  loc_706892: CStrVarTmp
  loc_706893: FStStr var_17C
  loc_706896: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_7068A3: ILdRf var_17C
  loc_7068A6: CVarStr var_244
  loc_7068A9: LitI4 1
  loc_7068AE: LitI4 1
  loc_7068B3: LitVarStr var_208, "00000000"
  loc_7068B8: FStVarCopyObj var_218
  loc_7068BB: FLdRfVar var_218
  loc_7068BE: FLdR8 var_A4
  loc_7068C1: CR8Cy
  loc_7068C2: ImpAdLdFPR4 MemVar_74C2E0
  loc_7068C5: MulR8
  loc_7068C6: CVarR8
  loc_7068CA: FLdRfVar var_234
  loc_7068CD: ImpAdCallFPR4  = Format(, )
  loc_7068D2: FLdRfVar var_234
  loc_7068D5: ConcatVar var_254
  loc_7068D9: CStrVarTmp
  loc_7068DA: FStStr var_17C
  loc_7068DD: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_7068EA: ILdRf var_17C
  loc_7068ED: CVarStr var_244
  loc_7068F0: LitI4 1
  loc_7068F5: LitI4 1
  loc_7068FA: LitVarStr var_208, "00000000"
  loc_7068FF: FStVarCopyObj var_218
  loc_706902: FLdRfVar var_218
  loc_706905: FLdR8 var_9C
  loc_706908: CR8Cy
  loc_706909: ImpAdLdFPR4 MemVar_74C2E0
  loc_70690C: MulR8
  loc_70690D: CVarR8
  loc_706911: FLdRfVar var_234
  loc_706914: ImpAdCallFPR4  = Format(, )
  loc_706919: FLdRfVar var_234
  loc_70691C: ConcatVar var_254
  loc_706920: CStrVarTmp
  loc_706921: FStStr var_17C
  loc_706924: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_706931: ILdRf var_17C
  loc_706934: LitStr "01"
  loc_706937: ConcatStr
  loc_706938: FStStr var_17C
  loc_70693D: FLdI2 AddCountMovement
  loc_706940: BranchF loc_7069A4
  loc_706945: FLdRfVar var_1CE
  loc_706948: FLdRfVar var_17E
  loc_70694B: ILdRf var_17C
  loc_70694E: FLdRfVar var_1D4
  loc_706951: ImpAdLdRf MemVar_74C760
  loc_706954: NewIfNullPr Formx
  loc_706957: from_stack_1v = Formx.global_4589716Get()
  loc_70695C: FLdPr var_1D4
  loc_70695F:  = Formx.CurrentY
  loc_706964: FLdI2 var_1CE
  loc_706967: NotI4
  loc_706968: FFree1Ad var_1D4
  loc_70696B: BranchF loc_7069A4
  loc_706970: FLdRfVar var_1E4
  loc_706973: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_706978: FLdRfVar var_1E4
  loc_70697B: CBoolVarNull
  loc_70697D: FFree1Var var_1E4 = ""
  loc_706980: BranchF loc_70699D
  loc_706985: ILdRf Me
  loc_706988: FStAdNoPop
  loc_70698C: ImpAdLdRf MemVar_7520D4
  loc_70698F: NewIfNullPr Global
  loc_706992: Global.Unload from_stack_1
  loc_706997: FFree1Ad var_1D4
  loc_70699C: ExitProcHresult
  loc_7069A1: Branch loc_706943
  loc_7069A8: LitI2_Byte 0
  loc_7069AA: FStI2 var_1B2
  loc_7069AF: LitVar_Missing var_1E4
  loc_7069B2: ImpAdCallI2 FreeFile()
  loc_7069B7: FStI2 var_1BA
  loc_7069BA: FFree1Var var_1E4 = ""
  loc_7069BF: LitStr "lpt1"
  loc_7069C2: FStStrCopy var_1CC
  loc_7069C7: ILdRf var_1CC
  loc_7069CA: FLdI2 var_1BA
  loc_7069CD: LitI2_Byte &HFF
  loc_7069CF: OpenFile
  loc_7069D5: FLdRfVar var_1BA
  loc_7069D8: Call ConfigurarImpresoraEpson(from_stack_1v)
  loc_7069DF: LitI2_Byte 2
  loc_7069E1: PopTmpLdAd2 var_1CE
  loc_7069E4: FLdRfVar var_1BA
  loc_7069E7: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_7069EE: LitI4 &H12
  loc_7069F3: FLdRfVar var_1E4
  loc_7069F6: ImpAdCallFPR4  = Chr()
  loc_7069FB: LitI4 &HF
  loc_706A00: FLdRfVar var_254
  loc_706A03: ImpAdCallFPR4  = Chr()
  loc_706A08: FLdRfVar var_1E4
  loc_706A0B: ILdRf var_15C
  loc_706A0E: LitStr "/"
  loc_706A11: ConcatStr
  loc_706A12: FStStrNoPop var_21C
  loc_706A15: ILdRf var_158
  loc_706A18: ConcatStr
  loc_706A19: FStStrNoPop var_258
  loc_706A1C: LitStr "/"
  loc_706A1F: ConcatStr
  loc_706A20: FStStrNoPop var_25C
  loc_706A23: ILdRf var_154
  loc_706A26: ConcatStr
  loc_706A27: CVarStr var_218
  loc_706A2A: ConcatVar var_234
  loc_706A2E: FLdRfVar var_254
  loc_706A31: ConcatVar var_26C
  loc_706A35: LitI2_Byte &H45
  loc_706A37: FLdI2 var_1BA
  loc_706A3A: PrintFile
  loc_706A40: FFreeStr var_21C = "": var_258 = ""
  loc_706A49: FFreeVar var_1E4 = "": var_218 = "": var_234 = "": var_254 = ""
  loc_706A58: LitI2_Byte 5
  loc_706A5A: PopTmpLdAd2 var_1CE
  loc_706A5D: FLdRfVar var_1BA
  loc_706A60: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_706A67: ILdRf var_13C
  loc_706A6A: LitI2_Byte &H19
  loc_706A6C: FLdI2 var_1BA
  loc_706A6F: PrintFile
  loc_706A77: FLdRfVar var_138
  loc_706A7A: ImpAdCallI2 IsNull()
  loc_706A7F: FStI2 var_1CE
  loc_706A82: FLdRfVar var_138
  loc_706A85: LitVarStr var_208, vbNullString
  loc_706A8A: FStVarCopyObj var_1E4
  loc_706A8D: FLdRfVar var_1E4
  loc_706A90: FLdI2 var_1CE
  loc_706A93: CVarBoolI2 var_1F4
  loc_706A97: FLdRfVar var_218
  loc_706A9A: ImpAdCallFPR4  = IIf(, , )
  loc_706A9F: FLdRfVar var_218
  loc_706AA2: LitI2_Byte &H19
  loc_706AA4: FLdI2 var_1BA
  loc_706AA7: PrintFile
  loc_706AAD: FFreeVar var_1F4 = "": var_1E4 = ""
  loc_706AB8: LitI2_Byte 1
  loc_706ABA: PopTmpLdAd2 var_1CE
  loc_706ABD: FLdRfVar var_1BA
  loc_706AC0: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_706AC7: LitStr "Consumidor Final"
  loc_706ACA: LitI2_Byte &H19
  loc_706ACC: FLdI2 var_1BA
  loc_706ACF: PrintFile
  loc_706AD7: FLdRfVar var_E4
  loc_706ADA: ImpAdCallI2 IsNull()
  loc_706ADF: FStI2 var_1CE
  loc_706AE2: FLdRfVar var_E4
  loc_706AE5: LitVarStr var_208, vbNullString
  loc_706AEA: FStVarCopyObj var_1E4
  loc_706AED: FLdRfVar var_1E4
  loc_706AF0: FLdI2 var_1CE
  loc_706AF3: CVarBoolI2 var_1F4
  loc_706AF7: FLdRfVar var_218
  loc_706AFA: ImpAdCallFPR4  = IIf(, , )
  loc_706AFF: FLdRfVar var_218
  loc_706B02: LitI2_Byte &H46
  loc_706B04: FLdI2 var_1BA
  loc_706B07: PrintFile
  loc_706B0D: FFreeVar var_1F4 = "": var_1E4 = ""
  loc_706B18: LitI2_Byte 1
  loc_706B1A: PopTmpLdAd2 var_1CE
  loc_706B1D: FLdRfVar var_1BA
  loc_706B20: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_706B27: LitStr "CONTADO EFECTIVO"
  loc_706B2A: LitI2_Byte &H23
  loc_706B2C: FLdI2 var_1BA
  loc_706B2F: PrintFile
  loc_706B37: LitI2_Byte 3
  loc_706B39: PopTmpLdAd2 var_1CE
  loc_706B3C: FLdRfVar var_1BA
  loc_706B3F: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_706B46: LitI2_Byte 5
  loc_706B48: FStI2 var_1C2
  loc_706B4D: LitI2_Byte 0
  loc_706B4F: FLdRfVar var_1C4
  loc_706B52: LitI2_Byte 5
  loc_706B54: ForI2 var_270
  loc_706B5C: FLdI2 var_1C4
  loc_706B5F: FLdI2 var_1C2
  loc_706B62: LeI2
  loc_706B63: FLdI2 var_1C4
  loc_706B66: CI4UI1
  loc_706B67: FLdRfVar var_1B0
  loc_706B6A: Ary1LdPr
  loc_706B6B: MemLdR8 global_0
  loc_706B6E: LitCy 0
  loc_706B77: NeCy
  loc_706B78: FLdI2 var_1C4
  loc_706B7B: LitI2_Byte 0
  loc_706B7D: EqI2
  loc_706B7E: OrI4
  loc_706B7F: AndI4
  loc_706B80: BranchF loc_706E2A
  loc_706B85: FLdI2 var_1C4
  loc_706B88: LitI2_Byte 0
  loc_706B8A: EqI2
  loc_706B8B: BranchF loc_706BFC
  loc_706B90: FLdI2 var_1C4
  loc_706B93: CI4UI1
  loc_706B94: FLdRfVar var_1B0
  loc_706B97: Ary1LdPr
  loc_706B98: MemLdRfVar from_stack_1.global_8
  loc_706B9B: CVarRef
  loc_706BA0: FLdRfVar var_1E4
  loc_706BA3: ImpAdCallFPR4  = Trim()
  loc_706BA8: LitI4 &H19
  loc_706BAD: FLdRfVar var_1E4
  loc_706BB0: FLdRfVar var_218
  loc_706BB3: ImpAdCallFPR4  = Left(, )
  loc_706BB8: LitI4 1
  loc_706BBD: LitI4 1
  loc_706BC2: LitVarStr var_208, "!@@@@@@@@@@@@@@@@@@@@@@@@@"
  loc_706BC7: FStVarCopyObj var_234
  loc_706BCA: FLdRfVar var_234
  loc_706BCD: FLdRfVar var_218
  loc_706BD0: ImpAdCallI2 Format$(, )
  loc_706BD5: FStStr var_258
  loc_706BD8: FLdZeroAd var_258
  loc_706BDB: FStStrNoPop var_21C
  loc_706BDE: LitI2_Byte &H1B
  loc_706BE0: FLdI2 var_1BA
  loc_706BE3: PrintFile
  loc_706BE9: FFreeStr var_21C = ""
  loc_706BF0: FFreeVar var_1E4 = "": var_218 = ""
  loc_706BF9: Branch loc_706E25
  loc_706C00: LitI4 &H12
  loc_706C05: FLdRfVar var_1E4
  loc_706C08: ImpAdCallFPR4  = Chr()
  loc_706C0D: LitI4 1
  loc_706C12: LitI4 1
  loc_706C17: LitVarStr var_208, "###0.00"
  loc_706C1C: FStVarCopyObj var_218
  loc_706C1F: FLdRfVar var_218
  loc_706C22: FLdI2 var_1C4
  loc_706C25: CI4UI1
  loc_706C26: FLdRfVar var_1B0
  loc_706C29: Ary1LdPr
  loc_706C2A: MemLdRfVar from_stack_1.global_0
  loc_706C2D: CVarRef
  loc_706C32: FLdRfVar var_234
  loc_706C35: ImpAdCallFPR4  = Format(, )
  loc_706C3A: LitI4 1
  loc_706C3F: LitI4 1
  loc_706C44: LitVarStr var_244, "@@@@@@@@"
  loc_706C49: FStVarCopyObj var_254
  loc_706C4C: FLdRfVar var_254
  loc_706C4F: FLdRfVar var_234
  loc_706C52: ImpAdCallI2 Format$(, )
  loc_706C57: FStStr var_258
  loc_706C5A: LitI4 &HF
  loc_706C5F: FLdRfVar var_26C
  loc_706C62: ImpAdCallFPR4  = Chr()
  loc_706C67: FLdRfVar var_26C
  loc_706C6A: FLdZeroAd var_258
  loc_706C6D: FStStrNoPop var_21C
  loc_706C70: FLdRfVar var_1E4
  loc_706C73: LitI2_Byte &HC
  loc_706C75: FLdI2 var_1BA
  loc_706C78: PrintFile
  loc_706C7E: FFreeStr var_21C = ""
  loc_706C85: FFreeVar var_1E4 = "": var_218 = "": var_234 = "": var_254 = ""
  loc_706C94: FLdI2 var_1C4
  loc_706C97: CI4UI1
  loc_706C98: FLdRfVar var_1B0
  loc_706C9B: Ary1LdPr
  loc_706C9C: MemLdStr global_8
  loc_706C9F: ImpAdCallI2 Trim$()
  loc_706CA4: FStStr var_25C
  loc_706CA7: LitI4 &H19
  loc_706CAC: FLdZeroAd var_25C
  loc_706CAF: FStStrNoPop var_21C
  loc_706CB2: ImpAdCallI2 Left$(, )
  loc_706CB7: FStStr var_274
  loc_706CBA: LitI4 1
  loc_706CBF: LitI4 1
  loc_706CC4: LitVarStr var_1F4, "!@@@@@@@@@@@@@@@@@@@@@@@@@"
  loc_706CC9: FStVarCopyObj var_218
  loc_706CCC: FLdRfVar var_218
  loc_706CCF: FLdZeroAd var_274
  loc_706CD2: CVarStr var_1E4
  loc_706CD5: ImpAdCallI2 Format$(, )
  loc_706CDA: FStStr var_278
  loc_706CDD: FLdZeroAd var_278
  loc_706CE0: FStStrNoPop var_258
  loc_706CE3: LitI2_Byte &H1B
  loc_706CE5: FLdI2 var_1BA
  loc_706CE8: PrintFile
  loc_706CEE: FFreeStr var_21C = "": var_258 = "": var_25C = "": var_274 = ""
  loc_706CFB: FFreeVar var_1E4 = ""
  loc_706D04: LitI4 &H12
  loc_706D09: FLdRfVar var_1E4
  loc_706D0C: ImpAdCallFPR4  = Chr()
  loc_706D11: LitI4 1
  loc_706D16: LitI4 1
  loc_706D1B: ImpAdLdRf MemVar_74C350
  loc_706D1E: CVarRef
  loc_706D23: FLdI2 var_1C4
  loc_706D26: CI4UI1
  loc_706D27: FLdRfVar var_1B0
  loc_706D2A: Ary1LdPr
  loc_706D2B: MemLdRfVar from_stack_1.global_16
  loc_706D2E: CVarRef
  loc_706D33: ImpAdCallI2 Format$(, )
  loc_706D38: FStStr var_258
  loc_706D3B: LitI4 1
  loc_706D40: LitI4 1
  loc_706D45: LitVarStr var_244, "@@@@@@@@@@"
  loc_706D4A: FStVarCopyObj var_234
  loc_706D4D: FLdRfVar var_234
  loc_706D50: FLdZeroAd var_258
  loc_706D53: CVarStr var_218
  loc_706D56: ImpAdCallI2 Format$(, )
  loc_706D5B: FStStr var_25C
  loc_706D5E: LitI4 &HF
  loc_706D63: FLdRfVar var_254
  loc_706D66: ImpAdCallFPR4  = Chr()
  loc_706D6B: FLdRfVar var_254
  loc_706D6E: FLdZeroAd var_25C
  loc_706D71: FStStrNoPop var_21C
  loc_706D74: FLdRfVar var_1E4
  loc_706D77: LitI2_Byte &H41
  loc_706D79: FLdI2 var_1BA
  loc_706D7C: PrintFile
  loc_706D82: FFreeStr var_21C = "": var_258 = ""
  loc_706D8B: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_706D98: LitI4 &H12
  loc_706D9D: FLdRfVar var_1E4
  loc_706DA0: ImpAdCallFPR4  = Chr()
  loc_706DA5: LitI4 1
  loc_706DAA: LitI4 1
  loc_706DAF: ImpAdLdRf MemVar_74C364
  loc_706DB2: CVarRef
  loc_706DB7: FLdI2 var_1C4
  loc_706DBA: CI4UI1
  loc_706DBB: FLdRfVar var_1B0
  loc_706DBE: Ary1LdPr
  loc_706DBF: MemLdRfVar from_stack_1.global_24
  loc_706DC2: CVarRef
  loc_706DC7: FLdRfVar var_218
  loc_706DCA: ImpAdCallFPR4  = Format(, )
  loc_706DCF: LitI4 1
  loc_706DD4: LitI4 1
  loc_706DD9: LitVarStr var_244, "@@@@@@@@@@"
  loc_706DDE: FStVarCopyObj var_234
  loc_706DE1: FLdRfVar var_234
  loc_706DE4: FLdRfVar var_218
  loc_706DE7: ImpAdCallI2 Format$(, )
  loc_706DEC: FStStr var_258
  loc_706DEF: LitI4 &HF
  loc_706DF4: FLdRfVar var_254
  loc_706DF7: ImpAdCallFPR4  = Chr()
  loc_706DFC: FLdRfVar var_254
  loc_706DFF: FLdZeroAd var_258
  loc_706E02: FStStrNoPop var_21C
  loc_706E05: FLdRfVar var_1E4
  loc_706E08: LitI2_Byte &H4B
  loc_706E0A: FLdI2 var_1BA
  loc_706E0D: PrintFile
  loc_706E13: FFreeStr var_21C = ""
  loc_706E1A: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_706E27: Branch loc_706E3B
  loc_706E2E: LitI2_Byte 1
  loc_706E30: PopTmpLdAd2 var_1CE
  loc_706E33: FLdRfVar var_1BA
  loc_706E36: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_706E3F: FLdRfVar var_1C4
  loc_706E42: NextI2 var_270, loc_706B5A
  loc_706E49: LitI2_Byte &HE
  loc_706E4B: PopTmpLdAd2 var_1CE
  loc_706E4E: FLdRfVar var_1BA
  loc_706E51: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_706E58: FLdRfVar var_CC
  loc_706E5B: LdFixedStr
  loc_706E5E: FStStrNoPop var_21C
  loc_706E61: LitStr "A"
  loc_706E64: EqStr
  loc_706E66: FFree1Str var_21C
  loc_706E69: BranchF loc_70701C
  loc_706E6E: LitI4 &H12
  loc_706E73: FLdRfVar var_1E4
  loc_706E76: ImpAdCallFPR4  = Chr()
  loc_706E7B: LitI4 1
  loc_706E80: LitI4 1
  loc_706E85: LitVarStr var_208, "0.00"
  loc_706E8A: FStVarCopyObj var_218
  loc_706E8D: FLdRfVar var_218
  loc_706E90: FLdRfVar var_C4
  loc_706E93: CVarRef
  loc_706E98: FLdRfVar var_234
  loc_706E9B: ImpAdCallFPR4  = Format(, )
  loc_706EA0: LitI4 &HF
  loc_706EA5: FLdRfVar var_26C
  loc_706EA8: ImpAdCallFPR4  = Chr()
  loc_706EAD: FLdRfVar var_1E4
  loc_706EB0: FLdRfVar var_234
  loc_706EB3: ConcatVar var_254
  loc_706EB7: FLdRfVar var_26C
  loc_706EBA: ConcatVar var_288
  loc_706EBE: LitI2_Byte &H11
  loc_706EC0: FLdI2 var_1BA
  loc_706EC3: PrintFile
  loc_706EC9: FFreeVar var_218 = "": var_1E4 = "": var_234 = "": var_254 = "": var_26C = ""
  loc_706EDA: LitI4 &H12
  loc_706EDF: FLdRfVar var_1E4
  loc_706EE2: ImpAdCallFPR4  = Chr()
  loc_706EE7: LitI4 1
  loc_706EEC: LitI4 1
  loc_706EF1: LitVarStr var_208, "0.00"
  loc_706EF6: FStVarCopyObj var_218
  loc_706EF9: FLdRfVar var_218
  loc_706EFC: FLdRfVar var_BC
  loc_706EFF: CVarRef
  loc_706F04: FLdRfVar var_234
  loc_706F07: ImpAdCallFPR4  = Format(, )
  loc_706F0C: LitI4 &HF
  loc_706F11: FLdRfVar var_26C
  loc_706F14: ImpAdCallFPR4  = Chr()
  loc_706F19: FLdRfVar var_1E4
  loc_706F1C: FLdRfVar var_234
  loc_706F1F: ConcatVar var_254
  loc_706F23: FLdRfVar var_26C
  loc_706F26: ConcatVar var_288
  loc_706F2A: LitI2_Byte &H23
  loc_706F2C: FLdI2 var_1BA
  loc_706F2F: PrintFile
  loc_706F35: FFreeVar var_218 = "": var_1E4 = "": var_234 = "": var_254 = "": var_26C = ""
  loc_706F46: LitI4 &H12
  loc_706F4B: FLdRfVar var_1E4
  loc_706F4E: ImpAdCallFPR4  = Chr()
  loc_706F53: LitI4 1
  loc_706F58: LitI4 1
  loc_706F5D: LitVarStr var_208, "0.00"
  loc_706F62: FStVarCopyObj var_218
  loc_706F65: FLdRfVar var_218
  loc_706F68: FLdRfVar var_AC
  loc_706F6B: CVarRef
  loc_706F70: FLdRfVar var_234
  loc_706F73: ImpAdCallFPR4  = Format(, )
  loc_706F78: LitI4 &HF
  loc_706F7D: FLdRfVar var_26C
  loc_706F80: ImpAdCallFPR4  = Chr()
  loc_706F85: FLdRfVar var_1E4
  loc_706F88: FLdRfVar var_234
  loc_706F8B: ConcatVar var_254
  loc_706F8F: FLdRfVar var_26C
  loc_706F92: ConcatVar var_288
  loc_706F96: LitI2_Byte &H36
  loc_706F98: FLdI2 var_1BA
  loc_706F9B: PrintFile
  loc_706FA1: FFreeVar var_218 = "": var_1E4 = "": var_234 = "": var_254 = "": var_26C = ""
  loc_706FB2: LitI4 &H12
  loc_706FB7: FLdRfVar var_1E4
  loc_706FBA: ImpAdCallFPR4  = Chr()
  loc_706FBF: LitI4 1
  loc_706FC4: LitI4 1
  loc_706FC9: LitVarStr var_208, "0.00"
  loc_706FCE: FStVarCopyObj var_218
  loc_706FD1: FLdRfVar var_218
  loc_706FD4: FLdRfVar var_A4
  loc_706FD7: CVarRef
  loc_706FDC: FLdRfVar var_234
  loc_706FDF: ImpAdCallFPR4  = Format(, )
  loc_706FE4: LitI4 &HF
  loc_706FE9: FLdRfVar var_26C
  loc_706FEC: ImpAdCallFPR4  = Chr()
  loc_706FF1: FLdRfVar var_1E4
  loc_706FF4: FLdRfVar var_234
  loc_706FF7: ConcatVar var_254
  loc_706FFB: FLdRfVar var_26C
  loc_706FFE: ConcatVar var_288
  loc_707002: LitI2_Byte &H46
  loc_707004: FLdI2 var_1BA
  loc_707007: PrintFile
  loc_70700D: FFreeVar var_218 = "": var_1E4 = "": var_234 = "": var_254 = "": var_26C = ""
  loc_707020: LitI4 &H12
  loc_707025: FLdRfVar var_1E4
  loc_707028: ImpAdCallFPR4  = Chr()
  loc_70702D: LitI4 1
  loc_707032: LitI4 1
  loc_707037: ImpAdLdRf MemVar_74C364
  loc_70703A: CVarRef
  loc_70703F: FLdRfVar var_9C
  loc_707042: CVarRef
  loc_707047: FLdRfVar var_218
  loc_70704A: ImpAdCallFPR4  = Format(, )
  loc_70704F: LitI4 &HF
  loc_707054: FLdRfVar var_254
  loc_707057: ImpAdCallFPR4  = Chr()
  loc_70705C: FLdRfVar var_1E4
  loc_70705F: FLdRfVar var_218
  loc_707062: ConcatVar var_234
  loc_707066: FLdRfVar var_254
  loc_707069: ConcatVar var_26C
  loc_70706D: LitI2_Byte &H5F
  loc_70706F: FLdI2 var_1BA
  loc_707072: PrintFile
  loc_707078: FFreeVar var_1E4 = "": var_218 = "": var_234 = "": var_254 = ""
  loc_707087: LitI2_Byte 2
  loc_707089: PopTmpLdAd2 var_1CE
  loc_70708C: FLdRfVar var_1BA
  loc_70708F: Call SaltoLinea(from_stack_1v, from_stack_2v)
  loc_707096: LitStr "Control: "
  loc_707099: FLdRfVar var_CC
  loc_70709C: LdFixedStr
  loc_70709F: FStStrNoPop var_21C
  loc_7070A2: ConcatStr
  loc_7070A3: FStStrNoPop var_258
  loc_7070A6: LitStr " "
  loc_7070A9: ConcatStr
  loc_7070AA: FStStrNoPop var_25C
  loc_7070AD: LitI2_Byte &H46
  loc_7070AF: FLdI2 var_1BA
  loc_7070B2: PrintFile
  loc_7070B8: FFreeStr var_21C = "": var_258 = ""
  loc_7070C3: ILdRf var_94
  loc_7070C6: LitStr "-"
  loc_7070C9: ConcatStr
  loc_7070CA: FStStrNoPop var_21C
  loc_7070CD: ILdRf var_90
  loc_7070D0: ConcatStr
  loc_7070D1: FStStrNoPop var_258
  loc_7070D4: FLdI2 var_1BA
  loc_7070D7: PrintFile
  loc_7070DD: FFreeStr var_21C = ""
  loc_7070E6: LitStr "   Hora: "
  loc_7070E9: ILdRf var_170
  loc_7070EC: ConcatStr
  loc_7070ED: FStStrNoPop var_21C
  loc_7070F0: LitStr ":"
  loc_7070F3: ConcatStr
  loc_7070F4: FStStrNoPop var_258
  loc_7070F7: ILdRf var_174
  loc_7070FA: ConcatStr
  loc_7070FB: FStStrNoPop var_25C
  loc_7070FE: LitI2_Byte &H46
  loc_707100: FLdI2 var_1BA
  loc_707103: PrintFile
  loc_707109: FFreeStr var_21C = "": var_258 = ""
  loc_707114: LitStr ":"
  loc_707117: ILdRf var_178
  loc_70711A: ConcatStr
  loc_70711B: FStStrNoPop var_21C
  loc_70711E: FLdI2 var_1BA
  loc_707121: PrintFile
  loc_707127: FFree1Str var_21C
  loc_70712C: LitI4 &HC
  loc_707131: FLdRfVar var_1E4
  loc_707134: ImpAdCallFPR4  = Chr()
  loc_707139: FLdRfVar var_1E4
  loc_70713C: FLdI2 var_1BA
  loc_70713F: PrintFile
  loc_707145: FFree1Var var_1E4 = ""
  loc_70714A: ImpAdCallFPR4 Reset()
  loc_707151: On Error GoTo 0
  loc_707156: ILdRf var_C8
  loc_707159: ImpAdCallFPR4 push Val()
  loc_70715E: FStFPR8 var_224
  loc_707161: LitI4 1
  loc_707166: LitI4 1
  loc_70716B: LitVarStr var_208, "00000000"
  loc_707170: FStVarCopyObj var_218
  loc_707173: FLdRfVar var_218
  loc_707176: FLdFPR8 var_224
  loc_707179: LitI2_Byte 1
  loc_70717B: CR8I2
  loc_70717C: AddR8
  loc_70717D: CVarR8
  loc_707181: FLdRfVar var_234
  loc_707184: ImpAdCallFPR4  = Format(, )
  loc_707189: FLdRfVar var_1CE
  loc_70718C: FLdRfVar var_234
  loc_70718F: CStrVarTmp
  loc_707190: PopTmpLdAdStr
  loc_707194: FLdRfVar var_CC
  loc_707197: LdFixedStr
  loc_70719A: PopTmpLdAdStr
  loc_70719E: FLdRfVar var_1D4
  loc_7071A1: ImpAdLdRf MemVar_74C760
  loc_7071A4: NewIfNullPr Formx
  loc_7071A7: from_stack_1v = Formx.global_4589716Get()
  loc_7071AC: FLdPr var_1D4
  loc_7071AF:  = Formx.FontStrikethru
  loc_7071B4: ILdRf var_21C
  loc_7071B7: FLdRfVar var_CC
  loc_7071BA: StFixedStr
  loc_7071BD: FLdI2 var_1CE
  loc_7071C0: NotI4
  loc_7071C1: FFreeStr var_21C = ""
  loc_7071C8: FFree1Ad var_1D4
  loc_7071CB: FFreeVar var_1E4 = "": var_218 = ""
  loc_7071D4: BranchF loc_70720D
  loc_7071D9: FLdRfVar var_1E4
  loc_7071DC: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_7071E1: FLdRfVar var_1E4
  loc_7071E4: CBoolVarNull
  loc_7071E6: FFree1Var var_1E4 = ""
  loc_7071E9: BranchF loc_707206
  loc_7071EE: ILdRf Me
  loc_7071F1: FStAdNoPop
  loc_7071F5: ImpAdLdRf MemVar_7520D4
  loc_7071F8: NewIfNullPr Global
  loc_7071FB: Global.Unload from_stack_1
  loc_707200: FFree1Ad var_1D4
  loc_707205: ExitProcHresult
  loc_70720A: Branch loc_707154
  loc_70720F: ExitProcHresult
  loc_707212: FLdI2 var_1B2
  loc_707215: BranchF loc_707218
  loc_70721C: FLdPr Me
  loc_70721F: MemLdStr sSeccionesSeleccionadas32
  loc_707222: CVarStr var_1F4
  loc_707225: LitI4 &HD
  loc_70722A: FLdRfVar var_1E4
  loc_70722D: ImpAdCallFPR4  = Chr()
  loc_707232: FLdRfVar var_1E4
  loc_707235: ConcatVar var_218
  loc_707239: LitI4 &HD
  loc_70723E: FLdRfVar var_234
  loc_707241: ImpAdCallFPR4  = Chr()
  loc_707246: FLdRfVar var_234
  loc_707249: ConcatVar var_254
  loc_70724D: CStrVarTmp
  loc_70724E: FStStr var_184
  loc_707251: FFreeVar var_1E4 = "": var_218 = "": var_234 = ""
  loc_70725E: ILdRf var_184
  loc_707261: FLdPr Me
  loc_707264: MemLdStr sSeccionesSeleccionadas36
  loc_707267: ConcatStr
  loc_707268: FStStrNoPop var_21C
  loc_70726B: FLdRfVar var_28C
  loc_70726E: ImpAdCallI2 Err 'rtcErrObj
  loc_707273: FStAdFunc var_1D4
  loc_707276: FLdPr var_1D4
  loc_707279:  = Err.Number
  loc_70727E: ILdRf var_28C
  loc_707281: CStrI4
  loc_707283: FStStrNoPop var_258
  loc_707286: ConcatStr
  loc_707287: CVarStr var_218
  loc_70728A: LitI4 &HD
  loc_70728F: FLdRfVar var_1E4
  loc_707292: ImpAdCallFPR4  = Chr()
  loc_707297: FLdRfVar var_1E4
  loc_70729A: ConcatVar var_234
  loc_70729E: CStrVarTmp
  loc_70729F: FStStr var_184
  loc_7072A2: FFreeStr var_21C = ""
  loc_7072A9: FFree1Ad var_1D4
  loc_7072AC: FFreeVar var_218 = "": var_1E4 = ""
  loc_7072B7: ILdRf var_184
  loc_7072BA: FLdPr Me
  loc_7072BD: MemLdStr sSeccionesSeleccionadas40
  loc_7072C0: ConcatStr
  loc_7072C1: FStStrNoPop var_258
  loc_7072C4: FLdRfVar var_21C
  loc_7072C7: ImpAdCallI2 Err 'rtcErrObj
  loc_7072CC: FStAdFunc var_1D4
  loc_7072CF: FLdPr var_1D4
  loc_7072D2:  = Err.Description
  loc_7072D7: ILdRf var_21C
  loc_7072DA: ConcatStr
  loc_7072DB: FStStr var_184
  loc_7072DE: FFreeStr var_258 = ""
  loc_7072E5: FFree1Ad var_1D4
  loc_7072EA: LitVar_Missing var_218
  loc_7072ED: LitVar_Missing var_1E4
  loc_7072F0: FLdPr Me
  loc_7072F3: MemLdRfVar from_stack_1.sSeccionesSeleccionadas44
  loc_7072F6: CVarRef
  loc_7072FB: LitI4 &H10
  loc_707300: FLdRfVar var_184
  loc_707303: CVarRef
  loc_707308: ImpAdCallFPR4 MsgBox(, , , , )
  loc_70730D: FFreeVar var_1E4 = ""
  loc_707316: On Error Resume Next
  loc_70731B: ImpAdCallFPR4 Reset()
  loc_707322: On Error GoTo 0
  loc_707327: ExitProcHresult
  loc_70732A: ExitProcHresult
End Sub

Public Sub ConfigurarImpresoraEpson(handle) '677540
  'Data Table: 460894
  loc_6770DC: LitI4 &H1B
  loc_6770E1: ImpAdCallI2 Chr$()
  loc_6770E6: FStStr var_98
  loc_6770E9: LitI4 &H11
  loc_6770EE: ImpAdCallI2 Chr$()
  loc_6770F3: FStStr var_9C
  loc_6770F6: LitI4 &H1B
  loc_6770FB: ImpAdCallI2 Chr$()
  loc_677100: FStStr var_A0
  loc_677103: LitI4 0
  loc_677108: ImpAdCallI2 Chr$()
  loc_67710D: FStStr var_A4
  loc_677110: FLdZeroAd var_A4
  loc_677113: FStStrNoPop var_94
  loc_677116: LitStr "s"
  loc_677119: FLdZeroAd var_A0
  loc_67711C: FStStrNoPop var_90
  loc_67711F: FLdZeroAd var_9C
  loc_677122: FStStrNoPop var_8C
  loc_677125: LitStr "@"
  loc_677128: FLdZeroAd var_98
  loc_67712B: FStStrNoPop var_88
  loc_67712E: ILdI2 handle
  loc_677131: PrintFile
  loc_677137: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_67714A: LitI4 &H1B
  loc_67714F: ImpAdCallI2 Chr$()
  loc_677154: FStStr var_94
  loc_677157: LitI4 0
  loc_67715C: ImpAdCallI2 Chr$()
  loc_677161: FStStr var_98
  loc_677164: LitI4 &H1B
  loc_677169: ImpAdCallI2 Chr$()
  loc_67716E: FStStr var_9C
  loc_677171: LitStr "9"
  loc_677174: FLdZeroAd var_9C
  loc_677177: FStStrNoPop var_90
  loc_67717A: FLdZeroAd var_98
  loc_67717D: FStStrNoPop var_8C
  loc_677180: LitStr "U"
  loc_677183: FLdZeroAd var_94
  loc_677186: FStStrNoPop var_88
  loc_677189: ILdI2 handle
  loc_67718C: PrintFile
  loc_677192: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_6771A1: LitI4 &H1B
  loc_6771A6: ImpAdCallI2 Chr$()
  loc_6771AB: FStStr var_98
  loc_6771AE: LitI4 &H19
  loc_6771B3: ImpAdCallI2 Chr$()
  loc_6771B8: FStStr var_9C
  loc_6771BB: LitI4 0
  loc_6771C0: ImpAdCallI2 Chr$()
  loc_6771C5: FStStr var_A0
  loc_6771C8: LitI4 &H1B
  loc_6771CD: ImpAdCallI2 Chr$()
  loc_6771D2: FStStr var_A4
  loc_6771D5: LitStr "2"
  loc_6771D8: FLdZeroAd var_A4
  loc_6771DB: FStStrNoPop var_94
  loc_6771DE: FLdZeroAd var_A0
  loc_6771E1: FStStrNoPop var_90
  loc_6771E4: FLdZeroAd var_9C
  loc_6771E7: FStStrNoPop var_8C
  loc_6771EA: FLdZeroAd var_98
  loc_6771ED: FStStrNoPop var_88
  loc_6771F0: ILdI2 handle
  loc_6771F3: PrintFile
  loc_6771F9: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_67720C: LitI4 &H1B
  loc_677211: ImpAdCallI2 Chr$()
  loc_677216: FStStr var_98
  loc_677219: LitI4 6
  loc_67721E: ImpAdCallI2 Chr$()
  loc_677223: FStStr var_9C
  loc_677226: LitI4 &H1B
  loc_67722B: ImpAdCallI2 Chr$()
  loc_677230: FStStr var_A0
  loc_677233: LitI4 1
  loc_677238: ImpAdCallI2 Chr$()
  loc_67723D: FStStr var_A4
  loc_677240: FLdZeroAd var_A4
  loc_677243: FStStrNoPop var_94
  loc_677246: LitStr "l"
  loc_677249: FLdZeroAd var_A0
  loc_67724C: FStStrNoPop var_90
  loc_67724F: FLdZeroAd var_9C
  loc_677252: FStStrNoPop var_8C
  loc_677255: LitStr "N"
  loc_677258: FLdZeroAd var_98
  loc_67725B: FStStrNoPop var_88
  loc_67725E: ILdI2 handle
  loc_677261: PrintFile
  loc_677267: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_67727A: LitI4 &H1B
  loc_67727F: ImpAdCallI2 Chr$()
  loc_677284: FStStr var_A0
  loc_677287: LitI4 0
  loc_67728C: ImpAdCallI2 Chr$()
  loc_677291: FStStr var_A4
  loc_677294: LitI4 1
  loc_677299: ImpAdCallI2 Chr$()
  loc_67729E: FStStr var_A8
  loc_6772A1: LitI4 &H1B
  loc_6772A6: ImpAdCallI2 Chr$()
  loc_6772AB: FStStr var_AC
  loc_6772AE: LitI4 1
  loc_6772B3: ImpAdCallI2 Chr$()
  loc_6772B8: FStStr var_B0
  loc_6772BB: LitI4 1
  loc_6772C0: ImpAdCallI2 Chr$()
  loc_6772C5: FStStr var_B4
  loc_6772C8: FLdZeroAd var_B4
  loc_6772CB: FStStrNoPop var_9C
  loc_6772CE: FLdZeroAd var_B0
  loc_6772D1: FStStrNoPop var_98
  loc_6772D4: LitStr "e"
  loc_6772D7: FLdZeroAd var_AC
  loc_6772DA: FStStrNoPop var_94
  loc_6772DD: FLdZeroAd var_A8
  loc_6772E0: FStStrNoPop var_90
  loc_6772E3: FLdZeroAd var_A4
  loc_6772E6: FStStrNoPop var_8C
  loc_6772E9: LitStr "e"
  loc_6772EC: FLdZeroAd var_A0
  loc_6772EF: FStStrNoPop var_88
  loc_6772F2: ILdI2 handle
  loc_6772F5: PrintFile
  loc_6772FB: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_677316: LitI4 &H1B
  loc_67731B: ImpAdCallI2 Chr$()
  loc_677320: FStStr var_98
  loc_677323: LitI4 1
  loc_677328: ImpAdCallI2 Chr$()
  loc_67732D: FStStr var_9C
  loc_677330: LitI4 &H1B
  loc_677335: ImpAdCallI2 Chr$()
  loc_67733A: FStStr var_A0
  loc_67733D: LitI4 0
  loc_677342: ImpAdCallI2 Chr$()
  loc_677347: FStStr var_A4
  loc_67734A: FLdZeroAd var_A4
  loc_67734D: FStStrNoPop var_94
  loc_677350: LitStr "R"
  loc_677353: FLdZeroAd var_A0
  loc_677356: FStStrNoPop var_90
  loc_677359: FLdZeroAd var_9C
  loc_67735C: FStStrNoPop var_8C
  loc_67735F: LitStr "t"
  loc_677362: FLdZeroAd var_98
  loc_677365: FStStrNoPop var_88
  loc_677368: ILdI2 handle
  loc_67736B: PrintFile
  loc_677371: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_677384: LitI4 &H1B
  loc_677389: ImpAdCallI2 Chr$()
  loc_67738E: FStStr var_98
  loc_677391: LitI4 0
  loc_677396: ImpAdCallI2 Chr$()
  loc_67739B: FStStr var_9C
  loc_67739E: LitI4 &H1B
  loc_6773A3: ImpAdCallI2 Chr$()
  loc_6773A8: FStStr var_A0
  loc_6773AB: LitI4 0
  loc_6773B0: ImpAdCallI2 Chr$()
  loc_6773B5: FStStr var_A4
  loc_6773B8: FLdZeroAd var_A4
  loc_6773BB: FStStrNoPop var_94
  loc_6773BE: LitStr "W"
  loc_6773C1: FLdZeroAd var_A0
  loc_6773C4: FStStrNoPop var_90
  loc_6773C7: FLdZeroAd var_9C
  loc_6773CA: FStStrNoPop var_8C
  loc_6773CD: LitStr "x"
  loc_6773D0: FLdZeroAd var_98
  loc_6773D3: FStStrNoPop var_88
  loc_6773D6: ILdI2 handle
  loc_6773D9: PrintFile
  loc_6773DF: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_6773F2: LitI4 &H1B
  loc_6773F7: ImpAdCallI2 Chr$()
  loc_6773FC: FStStr var_98
  loc_6773FF: LitI4 &H1B
  loc_677404: ImpAdCallI2 Chr$()
  loc_677409: FStStr var_9C
  loc_67740C: LitI4 &H1B
  loc_677411: ImpAdCallI2 Chr$()
  loc_677416: FStStr var_A0
  loc_677419: LitI4 0
  loc_67741E: ImpAdCallI2 Chr$()
  loc_677423: FStStr var_A4
  loc_677426: FLdZeroAd var_A4
  loc_677429: FStStrNoPop var_94
  loc_67742C: LitStr "-"
  loc_67742F: FLdZeroAd var_A0
  loc_677432: FStStrNoPop var_90
  loc_677435: LitStr "5"
  loc_677438: FLdZeroAd var_9C
  loc_67743B: FStStrNoPop var_8C
  loc_67743E: LitStr "T"
  loc_677441: FLdZeroAd var_98
  loc_677444: FStStrNoPop var_88
  loc_677447: ILdI2 handle
  loc_67744A: PrintFile
  loc_677450: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_677463: LitI4 &H1B
  loc_677468: ImpAdCallI2 Chr$()
  loc_67746D: FStStr var_98
  loc_677470: LitI4 &H48
  loc_677475: ImpAdCallI2 Chr$()
  loc_67747A: FStStr var_9C
  loc_67747D: LitI4 &H12
  loc_677482: ImpAdCallI2 Chr$()
  loc_677487: FStStr var_A0
  loc_67748A: LitI4 &H1B
  loc_67748F: ImpAdCallI2 Chr$()
  loc_677494: FStStr var_A4
  loc_677497: LitStr "F"
  loc_67749A: FLdZeroAd var_A4
  loc_67749D: FStStrNoPop var_94
  loc_6774A0: FLdZeroAd var_A0
  loc_6774A3: FStStrNoPop var_90
  loc_6774A6: FLdZeroAd var_9C
  loc_6774A9: FStStrNoPop var_8C
  loc_6774AC: LitStr "C"
  loc_6774AF: FLdZeroAd var_98
  loc_6774B2: FStStrNoPop var_88
  loc_6774B5: ILdI2 handle
  loc_6774B8: PrintFile
  loc_6774BE: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_6774D1: LitI4 &H1B
  loc_6774D6: ImpAdCallI2 Chr$()
  loc_6774DB: FStStr var_98
  loc_6774DE: LitI4 &HF
  loc_6774E3: ImpAdCallI2 Chr$()
  loc_6774E8: FStStr var_9C
  loc_6774EB: LitI4 &H1B
  loc_6774F0: ImpAdCallI2 Chr$()
  loc_6774F5: FStStr var_A0
  loc_6774F8: LitI4 &H84
  loc_6774FD: ImpAdCallI2 Chr$()
  loc_677502: FStStr var_A4
  loc_677505: FLdZeroAd var_A4
  loc_677508: FStStrNoPop var_94
  loc_67750B: LitStr "Q"
  loc_67750E: FLdZeroAd var_A0
  loc_677511: FStStrNoPop var_90
  loc_677514: FLdZeroAd var_9C
  loc_677517: FStStrNoPop var_8C
  loc_67751A: LitStr "H"
  loc_67751D: FLdZeroAd var_98
  loc_677520: FStStrNoPop var_88
  loc_677523: ILdI2 handle
  loc_677526: PrintFile
  loc_67752C: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_67753F: ExitProcHresult
End Sub

Public Sub SaltoLinea(filehandle, CantLineas) '5D3BF4
  'Data Table: 460894
  loc_5D3BD4: LitI2_Byte 1
  loc_5D3BD6: FLdRfVar var_86
  loc_5D3BD9: ILdI2 CantLineas
  loc_5D3BDC: ForI2 var_8A
  loc_5D3BE2: ILdI2 filehandle
  loc_5D3BE5: PrintFile
  loc_5D3BEB: FLdRfVar var_86
  loc_5D3BEE: NextI2 var_8A, loc_5D3BE2
  loc_5D3BF3: ExitProcHresult
End Sub

Public Sub LOADCREDITCARDS() '5F4404
  'Data Table: 460894
  loc_5F4364: FLdRfVar var_96
  loc_5F4367: FLdRfVar var_88
  loc_5F436A: FLdRfVar var_94
  loc_5F436D: ImpAdLdRf MemVar_74C760
  loc_5F4370: NewIfNullPr Formx
  loc_5F4373: from_stack_1v = Formx.global_4589716Get()
  loc_5F4378: FLdPr var_94
  loc_5F437B:  = Formx.FillColor
  loc_5F4380: FLdI2 var_96
  loc_5F4383: NotI4
  loc_5F4384: FFree1Ad var_94
  loc_5F4387: BranchF loc_5F43A1
  loc_5F438A: FLdRfVar var_A8
  loc_5F438D: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F4392: FLdRfVar var_A8
  loc_5F4395: CBoolVarNull
  loc_5F4397: FFree1Var var_A8 = ""
  loc_5F439A: BranchF loc_5F439E
  loc_5F439D: ExitProcHresult
  loc_5F439E: Branch loc_5F4364
  loc_5F43A1: LitI2_Byte 1
  loc_5F43A3: CStrUI1
  loc_5F43A5: FStStr var_90
  loc_5F43A8: LitI2_Byte 1
  loc_5F43AA: CUI1I2
  loc_5F43AC: FLdRfVar var_8A
  loc_5F43AF: LitI2_Byte &H20
  loc_5F43B1: CUI1I2
  loc_5F43B3: ForUI1 var_AC
  loc_5F43B9: LitVarI2 var_A8, 30
  loc_5F43BE: ILdRf var_90
  loc_5F43C1: CI4Str
  loc_5F43C2: FLdRfVar var_88
  loc_5F43C5: CVarRef
  loc_5F43CA: FLdRfVar var_DC
  loc_5F43CD: ImpAdCallFPR4  = Mid(, , )
  loc_5F43D2: FLdRfVar var_DC
  loc_5F43D5: CStrVarTmp
  loc_5F43D6: FStStrNoPop var_E0
  loc_5F43D9: FLdUI1
  loc_5F43DD: CI4UI1
  loc_5F43DE: ImpAdLdRf MemVar_74A008
  loc_5F43E1: Ary1StStrCopy
  loc_5F43E2: FFree1Str var_E0
  loc_5F43E5: FFreeVar var_A8 = ""
  loc_5F43EC: ILdRf var_90
  loc_5F43EF: CR8Str
  loc_5F43F1: LitI2_Byte &H1E
  loc_5F43F3: CR8I2
  loc_5F43F4: AddR8
  loc_5F43F5: CStrR8
  loc_5F43F7: FStStr var_90
  loc_5F43FA: FLdRfVar var_8A
  loc_5F43FD: NextUI1
  loc_5F4403: ExitProcHresult
End Sub

Public Sub ImpresionReporte(Tipo) '678374
  'Data Table: 460894
  loc_677F38: OnErrorGoto loc_678240
  loc_677F3B: FLdRfVar var_B6
  loc_677F3E: FLdRfVar var_88
  loc_677F41: CVarRef
  loc_677F46: LitI2_Byte &HFF
  loc_677F48: PopTmpLdAd2 var_A2
  loc_677F4B: ILdRf Tipo
  loc_677F4E: FLdRfVar var_A0
  loc_677F51: ImpAdLdRf MemVar_74C760
  loc_677F54: NewIfNullPr Formx
  loc_677F57: from_stack_1v = Formx.global_4589716Get()
  loc_677F5C: FLdPr var_A0
  loc_677F5F: Formx.WindowState = from_stack_1
  loc_677F64: FLdI2 var_B6
  loc_677F67: NotI4
  loc_677F68: FFree1Ad var_A0
  loc_677F6B: BranchF loc_677F85
  loc_677F6E: FLdRfVar var_C8
  loc_677F71: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_677F76: FLdRfVar var_C8
  loc_677F79: CBoolVarNull
  loc_677F7B: FFree1Var var_C8 = ""
  loc_677F7E: BranchF loc_677F82
  loc_677F81: ExitProcHresult
  loc_677F82: Branch loc_677F3B
  loc_677F85: FLdRfVar var_88
  loc_677F88: CVarRef
  loc_677F8D: FLdRfVar var_C8
  loc_677F90: ImpAdCallFPR4  = Trim()
  loc_677F95: FLdRfVar var_C8
  loc_677F98: CStrVarTmp
  loc_677F99: FStStr var_88
  loc_677F9C: FFree1Var var_C8 = ""
  loc_677F9F: ILdRf var_88
  loc_677FA2: FnLenStr
  loc_677FA3: LitI4 2
  loc_677FA8: LtI4
  loc_677FA9: BranchF loc_677FF5
  loc_677FAC: LitVar_Missing var_108
  loc_677FAF: LitVar_Missing var_C8
  loc_677FB2: ImpAdLdRf MemVar_74BF24
  loc_677FB5: CVarRef
  loc_677FBA: LitI4 0
  loc_677FBF: FLdPr Me
  loc_677FC2: MemLdRfVar from_stack_1.global_7436
  loc_677FC5: CVarRef
  loc_677FCA: ImpAdCallI2 MsgBox(, , , , )
  loc_677FCF: CBoolI4
  loc_677FD1: FFreeVar var_C8 = ""
  loc_677FD8: BranchF loc_677FF5
  loc_677FDB: LitI2_Byte 4
  loc_677FDD: CUI1I2
  loc_677FDF: PopTmpLdAd1
  loc_677FE3: LitStr "Closing shift without sales"
  loc_677FE6: FStStrCopy var_10C
  loc_677FE9: FLdRfVar var_10C
  loc_677FEC: ImpAdCallFPR4  = Proc_167_7_5C8524()
  loc_677FF1: FFree1Str var_10C
  loc_677FF4: ExitProcHresult
  loc_677FF5: FLdRfVar var_98
  loc_677FF8: FLdRfVar var_88
  loc_677FFB: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_678000: FLdRfVar var_B6
  loc_678003: FLdRfVar var_88
  loc_678006: CVarRef
  loc_67800B: LitI2_Byte 0
  loc_67800D: PopTmpLdAd2 var_A2
  loc_678010: ILdRf Tipo
  loc_678013: FLdRfVar var_A0
  loc_678016: ImpAdLdRf MemVar_74C760
  loc_678019: NewIfNullPr Formx
  loc_67801C: from_stack_1v = Formx.global_4589716Get()
  loc_678021: FLdPr var_A0
  loc_678024: Formx.WindowState = from_stack_1
  loc_678029: FLdI2 var_B6
  loc_67802C: NotI4
  loc_67802D: FFree1Ad var_A0
  loc_678030: BranchF loc_67804A
  loc_678033: FLdRfVar var_C8
  loc_678036: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_67803B: FLdRfVar var_C8
  loc_67803E: CBoolVarNull
  loc_678040: FFree1Var var_C8 = ""
  loc_678043: BranchF loc_678047
  loc_678046: ExitProcHresult
  loc_678047: Branch loc_678000
  loc_67804A: FLdRfVar var_9C
  loc_67804D: FLdRfVar var_88
  loc_678050: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_678055: FLdRfVar var_10C
  loc_678058: FLdRfVar var_A0
  loc_67805B: ImpAdLdRf MemVar_7520D4
  loc_67805E: NewIfNullPr Global
  loc_678061:  = Global.App
  loc_678066: FLdPr var_A0
  loc_678069:  = App.Path
  loc_67806E: FLdRfVar var_90
  loc_678071: FLdRfVar var_94
  loc_678074: LitI2_Byte &HFF
  loc_678076: PopTmpLdAd2 var_A2
  loc_678079: ILdRf var_10C
  loc_67807C: LitStr "\reporte.mdb"
  loc_67807F: ConcatStr
  loc_678080: PopTmpLdAdStr
  loc_678084: FLdRfVar var_98
  loc_678087: ILdRf Tipo
  loc_67808A: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_67808F: NotI4
  loc_678090: FFreeStr var_10C = ""
  loc_678097: FFree1Ad var_A0
  loc_67809A: BranchF loc_6780D4
  loc_67809D: LitVar_Missing var_108
  loc_6780A0: LitVar_Missing var_C8
  loc_6780A3: ImpAdLdRf MemVar_74BF24
  loc_6780A6: CVarRef
  loc_6780AB: LitI4 5
  loc_6780B0: FLdPr Me
  loc_6780B3: MemLdRfVar from_stack_1.global_7528
  loc_6780B6: CVarRef
  loc_6780BB: ImpAdCallI2 MsgBox(, , , , )
  loc_6780C0: LitI4 2
  loc_6780C5: EqI4
  loc_6780C6: FFreeVar var_C8 = ""
  loc_6780CD: BranchF loc_6780D1
  loc_6780D0: ExitProcHresult
  loc_6780D1: Branch loc_678055
  loc_6780D4: FLdRfVar var_10C
  loc_6780D7: FLdRfVar var_A0
  loc_6780DA: ImpAdLdRf MemVar_7520D4
  loc_6780DD: NewIfNullPr Global
  loc_6780E0:  = Global.App
  loc_6780E5: FLdPr var_A0
  loc_6780E8:  = App.Path
  loc_6780ED: FLdRfVar var_90
  loc_6780F0: FLdRfVar var_94
  loc_6780F3: LitI2_Byte 0
  loc_6780F5: PopTmpLdAd2 var_A2
  loc_6780F8: ILdRf var_10C
  loc_6780FB: LitStr "\reporte.mdb"
  loc_6780FE: ConcatStr
  loc_6780FF: PopTmpLdAdStr
  loc_678103: FLdRfVar var_9C
  loc_678106: ILdRf Tipo
  loc_678109: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_67810E: NotI4
  loc_67810F: FFreeStr var_10C = ""
  loc_678116: FFree1Ad var_A0
  loc_678119: BranchF loc_678153
  loc_67811C: LitVar_Missing var_108
  loc_67811F: LitVar_Missing var_C8
  loc_678122: ImpAdLdRf MemVar_74BF24
  loc_678125: CVarRef
  loc_67812A: LitI4 5
  loc_67812F: FLdPr Me
  loc_678132: MemLdRfVar from_stack_1.global_7528
  loc_678135: CVarRef
  loc_67813A: ImpAdCallI2 MsgBox(, , , , )
  loc_67813F: LitI4 2
  loc_678144: EqI4
  loc_678145: FFreeVar var_C8 = ""
  loc_67814C: BranchF loc_678150
  loc_67814F: ExitProcHresult
  loc_678150: Branch loc_6780D4
  loc_678153: ILdI4 Tipo
  loc_678156: LitStr "D"
  loc_678159: EqStr
  loc_67815B: BranchF loc_67816B
  loc_67815E: ImpAdLdI4 MemVar_74BEB4
  loc_678161: FLdPr Me
  loc_678164: MemStStrCopy
  loc_678168: Branch loc_67818D
  loc_67816B: ILdI4 Tipo
  loc_67816E: LitStr "M"
  loc_678171: EqStr
  loc_678173: BranchF loc_678183
  loc_678176: ImpAdLdI4 MemVar_74BEB8
  loc_678179: FLdPr Me
  loc_67817C: MemStStrCopy
  loc_678180: Branch loc_67818D
  loc_678183: ImpAdLdI4 MemVar_74BEB0
  loc_678186: FLdPr Me
  loc_678189: MemStStrCopy
  loc_67818D: FLdPr Me
  loc_678190: MemLdRfVar from_stack_1.sSeccionesSeleccionadas
  loc_678193: ImpAdCallFPR4 Proc_101_3_662098()
  loc_678198: ImpAdCallFPR4 Proc_101_20_6ED7EC()
  loc_67819D: LitVarI4
  loc_6781A5: PopAdLdVar
  loc_6781A6: ImpAdLdRf MemVar_74C760
  loc_6781A9: NewIfNullPr Formx
  loc_6781AC: VCallAd Control_ID_CrystalReport1
  loc_6781AF: FStAdFunc var_A0
  loc_6781B2: FLdPr var_A0
  loc_6781B5: LateIdSt
  loc_6781BA: FFree1Ad var_A0
  loc_6781BD: LitVarI2 var_B4, 1
  loc_6781C2: PopAdLdVar
  loc_6781C3: ImpAdLdRf MemVar_74C760
  loc_6781C6: NewIfNullPr Formx
  loc_6781C9: VCallAd Control_ID_CrystalReport1
  loc_6781CC: FStAdFunc var_A0
  loc_6781CF: FLdPr var_A0
  loc_6781D2: LateIdSt
  loc_6781D7: FFree1Ad var_A0
  loc_6781DA: FLdRfVar var_10C
  loc_6781DD: FLdRfVar var_A0
  loc_6781E0: ImpAdLdRf MemVar_7520D4
  loc_6781E3: NewIfNullPr Global
  loc_6781E6:  = Global.App
  loc_6781EB: FLdPr var_A0
  loc_6781EE:  = App.Path
  loc_6781F3: ILdRf var_10C
  loc_6781F6: LitStr "\"
  loc_6781F9: ConcatStr
  loc_6781FA: CVarStr var_108
  loc_6781FD: FLdRfVar var_C8
  loc_678200: ImpAdCallFPR4  = Proc_101_19_61BD94()
  loc_678205: FLdRfVar var_C8
  loc_678208: ConcatVar var_120
  loc_67820C: CStrVarTmp
  loc_67820D: CVarStr var_130
  loc_678210: PopAdLdVar
  loc_678211: ImpAdLdRf MemVar_74C760
  loc_678214: NewIfNullPr Formx
  loc_678217: VCallAd Control_ID_CrystalReport1
  loc_67821A: FStAdFunc var_134
  loc_67821D: FLdPr var_134
  loc_678220: LateIdSt
  loc_678225: FFree1Str var_10C
  loc_678228: FFreeAd var_A0 = ""
  loc_67822F: FFreeVar var_108 = "": var_C8 = "": var_120 = ""
  loc_67823A: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_67823F: ExitProcHresult
  loc_678240: FLdRfVar var_138
  loc_678243: ImpAdCallI2 Err 'rtcErrObj
  loc_678248: FStAdFunc var_A0
  loc_67824B: FLdPr var_A0
  loc_67824E:  = Formx.Number
  loc_678253: ILdRf var_138
  loc_678256: FStR4 var_13C
  loc_678259: FFree1Ad var_A0
  loc_67825C: ILdRf var_13C
  loc_67825F: LitI4 &H501B
  loc_678264: EqI4
  loc_678265: BranchF loc_6782E8
  loc_678268: FLdRfVar var_110
  loc_67826B: LitVar_Missing var_1FC
  loc_67826E: LitVar_Missing var_1DC
  loc_678271: LitVar_Missing var_1BC
  loc_678274: LitVar_Missing var_19C
  loc_678277: LitVar_Missing var_17C
  loc_67827A: LitVar_Missing var_15C
  loc_67827D: LitVar_Missing var_130
  loc_678280: LitVar_Missing var_120
  loc_678283: LitVar_Missing var_108
  loc_678286: LitVar_Missing var_C8
  loc_678289: LitStr "Se ha intentado abrir un archivo inexistente."
  loc_67828C: FStStrCopy var_10C
  loc_67828F: FLdRfVar var_10C
  loc_678292: LitI4 &H81
  loc_678297: PopTmpLdAdStr var_138
  loc_67829A: LitI2_Byte &HA
  loc_67829C: PopTmpLdAd2 var_A2
  loc_67829F: ImpAdLdRf MemVar_74C7D0
  loc_6782A2: NewIfNullPr clsMsg
  loc_6782A5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6782AA: LitVar_Missing var_26C
  loc_6782AD: LitVar_Missing var_24C
  loc_6782B0: LitVar_Missing var_22C
  loc_6782B3: LitI4 1
  loc_6782B8: FLdZeroAd var_110
  loc_6782BB: CVarStr var_20C
  loc_6782BE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_6782C3: FFree1Str var_10C
  loc_6782C6: FFreeVar var_C8 = "": var_108 = "": var_120 = "": var_130 = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_6782E5: Branch loc_678371
  loc_6782E8: ILdRf var_13C
  loc_6782EB: LitI4 &H5028
  loc_6782F0: EqI4
  loc_6782F1: BranchF loc_678371
  loc_6782F4: FLdRfVar var_110
  loc_6782F7: LitVar_Missing var_1FC
  loc_6782FA: LitVar_Missing var_1DC
  loc_6782FD: LitVar_Missing var_1BC
  loc_678300: LitVar_Missing var_19C
  loc_678303: LitVar_Missing var_17C
  loc_678306: LitVar_Missing var_15C
  loc_678309: LitVar_Missing var_130
  loc_67830C: LitVar_Missing var_120
  loc_67830F: LitVar_Missing var_108
  loc_678312: LitVar_Missing var_C8
  loc_678315: LitStr "Ya se ha mandado imprimir el reporte. Aguarde a que finalice la impresión."
  loc_678318: FStStrCopy var_10C
  loc_67831B: FLdRfVar var_10C
  loc_67831E: LitI4 &H82
  loc_678323: PopTmpLdAdStr var_138
  loc_678326: LitI2_Byte &HA
  loc_678328: PopTmpLdAd2 var_A2
  loc_67832B: ImpAdLdRf MemVar_74C7D0
  loc_67832E: NewIfNullPr clsMsg
  loc_678331: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_678336: LitVar_Missing var_26C
  loc_678339: LitVar_Missing var_24C
  loc_67833C: LitVar_Missing var_22C
  loc_67833F: LitI4 1
  loc_678344: FLdZeroAd var_110
  loc_678347: CVarStr var_20C
  loc_67834A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67834F: FFree1Str var_10C
  loc_678352: FFreeVar var_C8 = "": var_108 = "": var_120 = "": var_130 = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_678371: ExitProcHresult
End Sub

Public Function ReporteMezclas() '67ED20
  'Data Table: 460894
  loc_67E888: ZeroRetValVar
  loc_67E88A: OnErrorGoto loc_67ECC3
  loc_67E88D: LitI4 &HC8
  loc_67E892: FLdRfVar var_114
  loc_67E895: ImpAdCallFPR4  = Space()
  loc_67E89A: FLdRfVar var_114
  loc_67E89D: CStrVarTmp
  loc_67E89E: FStStrNoPop var_118
  loc_67E8A1: FLdPr Me
  loc_67E8A4: MemStStrCopy
  loc_67E8A8: FFree1Str var_118
  loc_67E8AB: FFree1Var var_114 = ""
  loc_67E8AE: FLdRfVar var_118
  loc_67E8B1: FLdRfVar var_11C
  loc_67E8B4: ImpAdLdRf MemVar_7520D4
  loc_67E8B7: NewIfNullPr Global
  loc_67E8BA:  = Global.App
  loc_67E8BF: FLdPr var_11C
  loc_67E8C2:  = App.Path
  loc_67E8C7: ILdRf var_118
  loc_67E8CA: LitStr "\reporte.mdb"
  loc_67E8CD: ConcatStr
  loc_67E8CE: FStStr var_9C
  loc_67E8D1: FFree1Str var_118
  loc_67E8D4: FFree1Ad var_11C
  loc_67E8D7: FLdRfVar var_11C
  loc_67E8DA: LitVar_Missing var_14C
  loc_67E8DD: PopAdLdVar
  loc_67E8DE: LitVar_Missing var_13C
  loc_67E8E1: PopAdLdVar
  loc_67E8E2: LitVar_TRUE var_12C
  loc_67E8E5: PopAdLdVar
  loc_67E8E6: ILdRf var_9C
  loc_67E8E9: ImpAdLdRf MemVar_752164
  loc_67E8EC: NewIfNullPr Me
  loc_67E8EF: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_67E8F4: FLdZeroAd var_11C
  loc_67E8F7: FStAdFunc var_98
  loc_67E8FA: LitStr vbNullString
  loc_67E8FD: FStStrCopy var_A4
  loc_67E900: FLdRfVar var_14E
  loc_67E903: FLdPr Me
  loc_67E906: MemLdRfVar from_stack_1.apies
  loc_67E909: FLdRfVar var_11C
  loc_67E90C: ImpAdLdRf MemVar_74C760
  loc_67E90F: NewIfNullPr Formx
  loc_67E912: from_stack_1v = Formx.global_4589716Get()
  loc_67E917: FLdPr var_11C
  loc_67E91A:  = Formx.Picture
  loc_67E91F: FLdI2 var_14E
  loc_67E922: FStI2 var_A0
  loc_67E925: FFree1Ad var_11C
  loc_67E928: LitVarI2 var_114, 6
  loc_67E92D: LitI4 1
  loc_67E932: FLdPr Me
  loc_67E935: MemLdRfVar from_stack_1.apies
  loc_67E938: CVarRef
  loc_67E93D: FLdRfVar var_160
  loc_67E940: ImpAdCallFPR4  = Mid(, , )
  loc_67E945: FLdRfVar var_160
  loc_67E948: FLdRfVar var_170
  loc_67E94B: ImpAdCallFPR4  = Trim()
  loc_67E950: FLdRfVar var_170
  loc_67E953: LitVarStr var_14C, "    Razón Social: "
  loc_67E958: AddVar var_180
  loc_67E95C: LitVarI2 var_1B0, 30
  loc_67E961: LitI4 7
  loc_67E966: FLdPr Me
  loc_67E969: MemLdRfVar from_stack_1.apies
  loc_67E96C: CVarRef
  loc_67E971: FLdRfVar var_1C0
  loc_67E974: ImpAdCallFPR4  = Mid(, , )
  loc_67E979: FLdRfVar var_1C0
  loc_67E97C: FLdRfVar var_1D0
  loc_67E97F: ImpAdCallFPR4  = Trim()
  loc_67E984: FLdRfVar var_1D0
  loc_67E987: AddVar var_1E0
  loc_67E98B: LitVarStr var_1F0, "     Dirección: "
  loc_67E990: AddVar var_200
  loc_67E994: FLdPr Me
  loc_67E997: MemLdStr apies
  loc_67E99A: FnLenStr
  loc_67E99B: LitI4 &H25
  loc_67E9A0: SubI4
  loc_67E9A1: CVarI4
  loc_67E9A5: LitI4 &H25
  loc_67E9AA: FLdPr Me
  loc_67E9AD: MemLdRfVar from_stack_1.apies
  loc_67E9B0: CVarRef
  loc_67E9B5: FLdRfVar var_240
  loc_67E9B8: ImpAdCallFPR4  = Mid(, , )
  loc_67E9BD: FLdRfVar var_240
  loc_67E9C0: FLdRfVar var_250
  loc_67E9C3: ImpAdCallFPR4  = Trim()
  loc_67E9C8: FLdRfVar var_250
  loc_67E9CB: AddVar var_260
  loc_67E9CF: CStrVarTmp
  loc_67E9D0: FStStr var_FC
  loc_67E9D3: FFreeVar var_114 = "": var_160 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1E0 = "": var_230 = "": var_240 = "": var_200 = "": var_250 = ""
  loc_67E9F0: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_67E9F5: LitVarI2 var_12C, 0
  loc_67E9FA: PopAdLdVar
  loc_67E9FB: LitStr "DATOSEESS;"
  loc_67E9FE: ILdRf var_FC
  loc_67EA01: ConcatStr
  loc_67EA02: FStStrNoPop var_118
  loc_67EA05: LitStr ";true"
  loc_67EA08: ConcatStr
  loc_67EA09: CVarStr var_114
  loc_67EA0C: PopAdLdVar
  loc_67EA0D: FLdPrThis
  loc_67EA0E: VCallAd Control_ID_CrystalReport1
  loc_67EA11: FStAdFunc var_11C
  loc_67EA14: FLdPr var_11C
  loc_67EA17: LateIdCallSt
  loc_67EA1F: FFree1Str var_118
  loc_67EA22: FFree1Ad var_11C
  loc_67EA25: FFree1Var var_114 = ""
  loc_67EA28: ImpAdCallI2 Proc_167_11_632680()
  loc_67EA2D: NotI4
  loc_67EA2E: BranchF loc_67EA60
  loc_67EA31: LitVar_Missing var_180
  loc_67EA34: LitVar_Missing var_170
  loc_67EA37: LitVar_Missing var_160
  loc_67EA3A: LitI4 &H10
  loc_67EA3F: LitVarStr var_12C, "No se pudo leer la configuración Blender"
  loc_67EA44: FStVarCopyObj var_114
  loc_67EA47: FLdRfVar var_114
  loc_67EA4A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67EA4F: FFreeVar var_114 = "": var_160 = "": var_170 = ""
  loc_67EA5A: ExitProcCbHresult
  loc_67EA60: LitVar_Missing var_12C
  loc_67EA63: PopAdLdVar
  loc_67EA64: LitStr "DELETE * FROM MEZCLAS"
  loc_67EA67: FLdPr var_98
  loc_67EA6A: Me.Execute from_stack_1, from_stack_2
  loc_67EA6F: LitI2_Byte 1
  loc_67EA71: FLdRfVar var_9E
  loc_67EA74: FLdRfVar var_14E
  loc_67EA77: ImpAdLdRf MemVar_74A220
  loc_67EA7A: NewIfNullPr clsProducts
  loc_67EA7D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_67EA82: FLdI2 var_14E
  loc_67EA85: ForI2 var_264
  loc_67EA8B: FLdRfVar var_14E
  loc_67EA8E: FLdI2 var_9E
  loc_67EA91: ImpAdLdRf MemVar_74A220
  loc_67EA94: NewIfNullPr clsProducts
  loc_67EA97: clsProducts.Caption = from_stack_1
  loc_67EA9C: FLdI2 var_14E
  loc_67EA9F: BranchF loc_67EC0B
  loc_67EAA2: FLdI2 var_9E
  loc_67EAA5: CVarI2 var_12C
  loc_67EAA8: FStVar var_B4
  loc_67EAAC: FLdRfVar var_118
  loc_67EAAF: FLdI2 var_9E
  loc_67EAB2: ImpAdLdRf MemVar_74A220
  loc_67EAB5: NewIfNullPr clsProducts
  loc_67EABD: FLdZeroAd var_118
  loc_67EAC0: CVarStr var_114
  loc_67EAC3: FStVar var_D8
  loc_67EAC7: FLdRfVar var_118
  loc_67EACA: FLdRfVar var_14E
  loc_67EACD: FLdI2 var_9E
  loc_67EAD0: ImpAdLdRf MemVar_74A220
  loc_67EAD3: NewIfNullPr clsProducts
  loc_67EAD6:  = clsProducts.Left
  loc_67EADB: FLdI2 var_14E
  loc_67EADE: ImpAdLdRf MemVar_74A220
  loc_67EAE1: NewIfNullPr clsProducts
  loc_67EAE9: FLdZeroAd var_118
  loc_67EAEC: CVarStr var_114
  loc_67EAEF: FStVar var_E8
  loc_67EAF3: FLdRfVar var_14E
  loc_67EAF6: FLdI2 var_9E
  loc_67EAF9: ImpAdLdRf MemVar_74A220
  loc_67EAFC: NewIfNullPr clsProducts
  loc_67EAFF:  = clsProducts.Top
  loc_67EB04: FLdI2 var_14E
  loc_67EB07: FStI2 var_C6
  loc_67EB0A: FLdRfVar var_118
  loc_67EB0D: FLdRfVar var_14E
  loc_67EB10: FLdI2 var_9E
  loc_67EB13: ImpAdLdRf MemVar_74A220
  loc_67EB16: NewIfNullPr clsProducts
  loc_67EB19:  = clsProducts.BackColor
  loc_67EB1E: FLdI2 var_14E
  loc_67EB21: ImpAdLdRf MemVar_74A220
  loc_67EB24: NewIfNullPr clsProducts
  loc_67EB2C: FLdZeroAd var_118
  loc_67EB2F: CVarStr var_114
  loc_67EB32: FStVar var_F8
  loc_67EB36: FLdRfVar var_14E
  loc_67EB39: FLdI2 var_9E
  loc_67EB3C: ImpAdLdRf MemVar_74A220
  loc_67EB3F: NewIfNullPr clsProducts
  loc_67EB42:  = clsProducts.ForeColor
  loc_67EB47: FLdI2 var_14E
  loc_67EB4A: CVarI2 var_12C
  loc_67EB4D: FStVar var_C4
  loc_67EB51: LitStr "INSERT INTO MEZCLAS(codigo, des, descbajo, porcbajo, descalto, porcalto, apies)"
  loc_67EB54: FStStrCopy var_A4
  loc_67EB57: ILdRf var_A4
  loc_67EB5A: LitStr " VALUES ("
  loc_67EB5D: ConcatStr
  loc_67EB5E: CVarStr var_114
  loc_67EB61: FLdRfVar var_B4
  loc_67EB64: ConcatVar var_160
  loc_67EB68: LitVarStr var_12C, ",'"
  loc_67EB6D: ConcatVar var_170
  loc_67EB71: FLdRfVar var_D8
  loc_67EB74: ConcatVar var_180
  loc_67EB78: LitVarStr var_13C, "','"
  loc_67EB7D: ConcatVar var_1B0
  loc_67EB81: FLdRfVar var_F8
  loc_67EB84: ConcatVar var_1C0
  loc_67EB88: LitVarStr var_14C, "',"
  loc_67EB8D: ConcatVar var_1D0
  loc_67EB91: FLdRfVar var_C4
  loc_67EB94: ConcatVar var_1E0
  loc_67EB98: LitVarStr var_190, ",'"
  loc_67EB9D: ConcatVar var_200
  loc_67EBA1: FLdRfVar var_E8
  loc_67EBA4: ConcatVar var_230
  loc_67EBA8: LitVarStr var_1A0, "',"
  loc_67EBAD: ConcatVar var_240
  loc_67EBB1: FLdI2 var_C6
  loc_67EBB4: CVarI2 var_1F0
  loc_67EBB7: ConcatVar var_250
  loc_67EBBB: LitVarStr var_210, ",'"
  loc_67EBC0: ConcatVar var_260
  loc_67EBC4: ILdRf var_FC
  loc_67EBC7: CVarStr var_220
  loc_67EBCA: ConcatVar var_274
  loc_67EBCE: LitVarStr var_284, "')"
  loc_67EBD3: ConcatVar var_294
  loc_67EBD7: CStrVarTmp
  loc_67EBD8: FStStr var_A4
  loc_67EBDB: FFreeVar var_114 = "": var_160 = "": var_170 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_274 = ""
  loc_67EBFC: LitVar_Missing var_12C
  loc_67EBFF: PopAdLdVar
  loc_67EC00: ILdRf var_A4
  loc_67EC03: FLdPr var_98
  loc_67EC06: Me.Execute from_stack_1, from_stack_2
  loc_67EC0B: FLdRfVar var_9E
  loc_67EC0E: NextI2 var_264, loc_67EA8B
  loc_67EC13: FLdPr var_98
  loc_67EC16: Me.Close
  loc_67EC1B: FLdRfVar var_118
  loc_67EC1E: FLdRfVar var_11C
  loc_67EC21: ImpAdLdRf MemVar_7520D4
  loc_67EC24: NewIfNullPr Global
  loc_67EC27:  = Global.App
  loc_67EC2C: FLdPr var_11C
  loc_67EC2F:  = App.Path
  loc_67EC34: ILdRf var_118
  loc_67EC37: LitStr "\mezclas.rpt"
  loc_67EC3A: ConcatStr
  loc_67EC3B: FStStr var_104
  loc_67EC3E: FFree1Str var_118
  loc_67EC41: FFree1Ad var_11C
  loc_67EC44: FLdRfVar var_104
  loc_67EC47: CDargRef
  loc_67EC4B: FLdPrThis
  loc_67EC4C: VCallAd Control_ID_CrystalReport1
  loc_67EC4F: FStAdFunc var_11C
  loc_67EC52: FLdPr var_11C
  loc_67EC55: LateIdSt
  loc_67EC5A: FFree1Ad var_11C
  loc_67EC5D: LitVar_TRUE var_12C
  loc_67EC60: PopAdLdVar
  loc_67EC61: FLdPrThis
  loc_67EC62: VCallAd Control_ID_CrystalReport1
  loc_67EC65: FStAdFunc var_11C
  loc_67EC68: FLdPr var_11C
  loc_67EC6B: LateIdSt
  loc_67EC70: FFree1Ad var_11C
  loc_67EC73: LitVarI4
  loc_67EC7B: PopAdLdVar
  loc_67EC7C: FLdPrThis
  loc_67EC7D: VCallAd Control_ID_CrystalReport1
  loc_67EC80: FStAdFunc var_11C
  loc_67EC83: FLdPr var_11C
  loc_67EC86: LateIdSt
  loc_67EC8B: FFree1Ad var_11C
  loc_67EC8E: LitVarI4
  loc_67EC96: PopAdLdVar
  loc_67EC97: FLdPrThis
  loc_67EC98: VCallAd Control_ID_CrystalReport1
  loc_67EC9B: FStAdFunc var_11C
  loc_67EC9E: FLdPr var_11C
  loc_67ECA1: LateIdSt
  loc_67ECA6: FFree1Ad var_11C
  loc_67ECA9: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_67ECAE: ImpAdCallFPR4 Proc_6_2_5DC8C4()
  loc_67ECB3: LitI2_Byte &HFF
  loc_67ECB5: PopTmpLdAd2 var_14E
  loc_67ECB8: ImpAdCallFPR4 Proc_87_1_630780()
  loc_67ECBD: ExitProcCbHresult
  loc_67ECC3: LitVar_Missing var_180
  loc_67ECC6: LitVar_Missing var_170
  loc_67ECC9: LitVar_Missing var_160
  loc_67ECCC: LitI4 0
  loc_67ECD1: LitStr "Error en las mezclas "
  loc_67ECD4: ILdRf var_104
  loc_67ECD7: ConcatStr
  loc_67ECD8: FStStrNoPop var_118
  loc_67ECDB: LitStr " "
  loc_67ECDE: ConcatStr
  loc_67ECDF: FStStrNoPop var_29C
  loc_67ECE2: FLdRfVar var_298
  loc_67ECE5: ImpAdCallI2 Err 'rtcErrObj
  loc_67ECEA: FStAdFunc var_11C
  loc_67ECED: FLdPr var_11C
  loc_67ECF0:  = Err.Description
  loc_67ECF5: ILdRf var_298
  loc_67ECF8: ConcatStr
  loc_67ECF9: CVarStr var_114
  loc_67ECFC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_67ED01: FFreeStr var_118 = "": var_29C = ""
  loc_67ED0A: FFree1Ad var_11C
  loc_67ED0D: FFreeVar var_114 = "": var_160 = "": var_170 = ""
  loc_67ED18: ExitProcCbHresult
End Function

Public Function MantenBD() '644D7C
  'Data Table: 460894
  loc_644B5C: ZeroRetValVar
  loc_644B5E: OnErrorGoto loc_644CF1
  loc_644B61: FLdRfVar var_E4
  loc_644B64: LitVar_Missing var_E0
  loc_644B67: PopAdLdVar
  loc_644B68: LitVar_Missing var_D0
  loc_644B6B: PopAdLdVar
  loc_644B6C: LitVar_Missing var_C0
  loc_644B6F: PopAdLdVar
  loc_644B70: FLdRfVar var_AC
  loc_644B73: FLdRfVar var_A8
  loc_644B76: ImpAdLdRf MemVar_7520D4
  loc_644B79: NewIfNullPr Global
  loc_644B7C:  = Global.App
  loc_644B81: FLdPr var_A8
  loc_644B84:  = App.Path
  loc_644B89: ILdRf var_AC
  loc_644B8C: LitStr "\reporte.mdb"
  loc_644B8F: ConcatStr
  loc_644B90: FStStrNoPop var_B0
  loc_644B93: ImpAdLdRf MemVar_752164
  loc_644B96: NewIfNullPr Me
  loc_644B99: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_644B9E: FLdZeroAd var_E4
  loc_644BA1: FStAdFunc var_A4
  loc_644BA4: FFreeStr var_AC = ""
  loc_644BAB: FFree1Ad var_A8
  loc_644BAE: FLdPr var_A4
  loc_644BB1: Me.Close
  loc_644BB6: FLdRfVar var_AC
  loc_644BB9: FLdRfVar var_A8
  loc_644BBC: ImpAdLdRf MemVar_7520D4
  loc_644BBF: NewIfNullPr Global
  loc_644BC2:  = Global.App
  loc_644BC7: FLdPr var_A8
  loc_644BCA:  = App.Path
  loc_644BCF: ILdRf var_AC
  loc_644BD2: LitStr "\reporte.mdb"
  loc_644BD5: ConcatStr
  loc_644BD6: FStStrNoPop var_B0
  loc_644BD9: ImpAdCallI2 push FileLen()
  loc_644BDE: LitI4 &H7A120
  loc_644BE3: GtI4
  loc_644BE4: FFreeStr var_AC = ""
  loc_644BEB: FFree1Ad var_A8
  loc_644BEE: BranchF loc_644CEB
  loc_644BF1: FLdRfVar var_AC
  loc_644BF4: FLdRfVar var_A8
  loc_644BF7: ImpAdLdRf MemVar_7520D4
  loc_644BFA: NewIfNullPr Global
  loc_644BFD:  = Global.App
  loc_644C02: FLdPr var_A8
  loc_644C05:  = App.Path
  loc_644C0A: FLdRfVar var_B0
  loc_644C0D: FLdRfVar var_E4
  loc_644C10: ImpAdLdRf MemVar_7520D4
  loc_644C13: NewIfNullPr Global
  loc_644C16:  = Global.App
  loc_644C1B: FLdPr var_E4
  loc_644C1E:  = App.Path
  loc_644C23: LitVar_Missing var_E0
  loc_644C26: PopAdLdVar
  loc_644C27: LitVar_Missing var_D0
  loc_644C2A: PopAdLdVar
  loc_644C2B: LitVar_Missing var_C0
  loc_644C2E: PopAdLdVar
  loc_644C2F: ILdRf var_B0
  loc_644C32: LitStr "\reporteCOMP.mdb"
  loc_644C35: ConcatStr
  loc_644C36: FStStrNoPop var_EC
  loc_644C39: ILdRf var_AC
  loc_644C3C: LitStr "\reporte.mdb"
  loc_644C3F: ConcatStr
  loc_644C40: FStStrNoPop var_E8
  loc_644C43: ImpAdLdRf MemVar_752164
  loc_644C46: NewIfNullPr Me
  loc_644C49: Me.DBEngine.CompactDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5
  loc_644C4E: FFreeStr var_AC = "": var_B0 = "": var_E8 = ""
  loc_644C59: FFreeAd var_A8 = ""
  loc_644C60: FLdRfVar var_AC
  loc_644C63: FLdRfVar var_A8
  loc_644C66: ImpAdLdRf MemVar_7520D4
  loc_644C69: NewIfNullPr Global
  loc_644C6C:  = Global.App
  loc_644C71: FLdPr var_A8
  loc_644C74:  = App.Path
  loc_644C79: ILdRf var_AC
  loc_644C7C: LitStr "\reporte.mdb"
  loc_644C7F: ConcatStr
  loc_644C80: CVarStr var_FC
  loc_644C83: ImpAdCallFPR4 Kill 
  loc_644C88: FFree1Str var_AC
  loc_644C8B: FFree1Ad var_A8
  loc_644C8E: FFree1Var var_FC = ""
  loc_644C91: FLdRfVar var_AC
  loc_644C94: FLdRfVar var_A8
  loc_644C97: ImpAdLdRf MemVar_7520D4
  loc_644C9A: NewIfNullPr Global
  loc_644C9D:  = Global.App
  loc_644CA2: FLdPr var_A8
  loc_644CA5:  = App.Path
  loc_644CAA: ILdRf var_AC
  loc_644CAD: LitStr "\reporteCOMP.mdb"
  loc_644CB0: ConcatStr
  loc_644CB1: FStStrNoPop var_EC
  loc_644CB4: FLdRfVar var_B0
  loc_644CB7: FLdRfVar var_E4
  loc_644CBA: ImpAdLdRf MemVar_7520D4
  loc_644CBD: NewIfNullPr Global
  loc_644CC0:  = Global.App
  loc_644CC5: FLdPr var_E4
  loc_644CC8:  = App.Path
  loc_644CCD: ILdRf var_B0
  loc_644CD0: LitStr "\reporte.mdb"
  loc_644CD3: ConcatStr
  loc_644CD4: FStStrNoPop var_E8
  loc_644CD7: NameFile
  loc_644CD9: FFreeStr var_AC = "": var_B0 = "": var_E8 = ""
  loc_644CE4: FFreeAd var_A8 = ""
  loc_644CEB: ExitProcCbHresult
  loc_644CF1: FLdRfVar var_B0
  loc_644CF4: LitVar_Missing var_204
  loc_644CF7: LitVar_Missing var_1E4
  loc_644CFA: LitVar_Missing var_1C4
  loc_644CFD: LitVar_Missing var_1A4
  loc_644D00: LitVar_Missing var_184
  loc_644D03: LitVar_Missing var_164
  loc_644D06: LitVar_Missing var_144
  loc_644D09: LitVar_Missing var_124
  loc_644D0C: LitVar_Missing var_114
  loc_644D0F: LitVar_Missing var_FC
  loc_644D12: LitStr "ERROR AL COMPACTAR O REPARAR LA BASE DE DATOS"
  loc_644D15: FStStrCopy var_AC
  loc_644D18: FLdRfVar var_AC
  loc_644D1B: LitI4 &HAD
  loc_644D20: PopTmpLdAdStr var_104
  loc_644D23: LitI2_Byte &HA
  loc_644D25: PopTmpLdAd2 var_FE
  loc_644D28: ImpAdLdRf MemVar_74C7D0
  loc_644D2B: NewIfNullPr clsMsg
  loc_644D2E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_644D33: LitVar_Missing var_274
  loc_644D36: LitVar_Missing var_254
  loc_644D39: LitVarStr var_224, "Compactador"
  loc_644D3E: FStVarCopyObj var_234
  loc_644D41: FLdRfVar var_234
  loc_644D44: LitI4 &H10
  loc_644D49: FLdZeroAd var_B0
  loc_644D4C: CVarStr var_214
  loc_644D4F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_644D54: FFree1Str var_AC
  loc_644D57: FFreeVar var_FC = "": var_114 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_234 = "": var_254 = ""
  loc_644D76: ExitProcCbHresult
End Function

Public Function GetTipoCierreRedXXI() '5D05D8
  'Data Table: 460894
  loc_5D05C4: ZeroRetVal
  loc_5D05C6: FLdPr Me
  loc_5D05C9: MemLdStr global_100
  loc_5D05CC: FStStrCopy var_88
  loc_5D05CF: ExitProcCbHresult
End Function

Private Function Proc_162_190_69E19C() '69E19C
  'Data Table: 460894
  loc_69DB2C: OnErrorGoto loc_69E16B
  loc_69DB2F: LitVar_Missing var_DC
  loc_69DB32: PopAdLdVar
  loc_69DB33: LitVarI2 var_CC, 1
  loc_69DB38: PopAdLdVar
  loc_69DB39: ImpAdLdRf MemVar_74DC58
  loc_69DB3C: NewIfNullPr frmLogin
  loc_69DB3F: frmLogin.Show from_stack_1, from_stack_2
  loc_69DB44: FLdRfVar var_DE
  loc_69DB47: ImpAdLdRf MemVar_74DC58
  loc_69DB4A: NewIfNullPr frmLogin
  loc_69DB4D: from_stack_1v = frmLogin.LoginSucceededGet()
  loc_69DB52: FLdI2 var_DE
  loc_69DB55: BranchF loc_69E16A
  loc_69DB58: LitVar_TRUE var_CC
  loc_69DB5B: PopAdLdVar
  loc_69DB5C: FLdPrThis
  loc_69DB5D: VCallAd Control_ID_
  loc_69DB60: FStAdFunc var_E4
  loc_69DB63: FLdPr var_E4
  loc_69DB66: LateIdSt
  loc_69DB6B: FFree1Ad var_E4
  loc_69DB6E: FLdPr Me
  loc_69DB71: MemLdStr global_7336
  loc_69DB74: CVarStr var_CC
  loc_69DB77: PopAdLdVar
  loc_69DB78: FLdPrThis
  loc_69DB79: VCallAd Control_ID_
  loc_69DB7C: FStAdFunc var_E4
  loc_69DB7F: FLdPr var_E4
  loc_69DB82: LateIdSt
  loc_69DB87: FFree1Ad var_E4
  loc_69DB8A: FLdRfVar var_E6
  loc_69DB8D: FLdRfVar var_A6
  loc_69DB90: LitI2_Byte &HFF
  loc_69DB92: PopTmpLdAd2 var_DE
  loc_69DB95: FLdRfVar var_E4
  loc_69DB98: ImpAdLdRf MemVar_74C760
  loc_69DB9B: NewIfNullPr Formx
  loc_69DB9E: from_stack_1v = Formx.global_4589716Get()
  loc_69DBA3: FLdPr var_E4
  loc_69DBA6: Formx.Enabled = from_stack_1b
  loc_69DBAB: FLdI2 var_E6
  loc_69DBAE: NotI4
  loc_69DBAF: FFree1Ad var_E4
  loc_69DBB2: BranchF loc_69DBE3
  loc_69DBB5: FLdRfVar var_F8
  loc_69DBB8: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69DBBD: FLdRfVar var_F8
  loc_69DBC0: CBoolVarNull
  loc_69DBC2: FFree1Var var_F8 = ""
  loc_69DBC5: BranchF loc_69DBE0
  loc_69DBC8: LitVar_FALSE
  loc_69DBCC: PopAdLdVar
  loc_69DBCD: FLdPrThis
  loc_69DBCE: VCallAd Control_ID_PanelCierres
  loc_69DBD1: FStAdFunc var_E4
  loc_69DBD4: FLdPr var_E4
  loc_69DBD7: LateIdSt
  loc_69DBDC: FFree1Ad var_E4
  loc_69DBDF: ExitProcHresult
  loc_69DBE0: Branch loc_69DB8A
  loc_69DBE3: FLdUI1
  loc_69DBE7: CI2UI1
  loc_69DBE9: LitI2_Byte 0
  loc_69DBEB: GtI2
  loc_69DBEC: BranchF loc_69DC21
  loc_69DBEF: LitVar_FALSE
  loc_69DBF3: PopAdLdVar
  loc_69DBF4: FLdPrThis
  loc_69DBF5: VCallAd Control_ID_PanelCierres
  loc_69DBF8: FStAdFunc var_E4
  loc_69DBFB: FLdPr var_E4
  loc_69DBFE: LateIdSt
  loc_69DC03: FFree1Ad var_E4
  loc_69DC06: FLdRfVar var_F8
  loc_69DC09: FLdRfVar var_A6
  loc_69DC0C: LitStr "D"
  loc_69DC0F: FStStrCopy var_FC
  loc_69DC12: FLdRfVar var_FC
  loc_69DC15: from_stack_3v = Proc_162_191_623F2C(from_stack_1v, from_stack_2v)
  loc_69DC1A: FFree1Str var_FC
  loc_69DC1D: FFree1Var var_F8 = ""
  loc_69DC20: ExitProcHresult
  loc_69DC21: LitI2_Byte &HFF
  loc_69DC23: FStI2 var_96
  loc_69DC26: FLdI2 var_96
  loc_69DC29: BranchF loc_69DCA8
  loc_69DC2C: FLdRfVar var_DE
  loc_69DC2F: FLdRfVar var_94
  loc_69DC32: FLdRfVar var_E4
  loc_69DC35: ImpAdLdRf MemVar_74C760
  loc_69DC38: NewIfNullPr Formx
  loc_69DC3B: from_stack_1v = Formx.global_4589716Get()
  loc_69DC40: FLdPr var_E4
  loc_69DC43:  = Formx.MousePointer
  loc_69DC48: FLdI2 var_DE
  loc_69DC4B: NotI4
  loc_69DC4C: FFree1Ad var_E4
  loc_69DC4F: BranchF loc_69DC80
  loc_69DC52: FLdRfVar var_F8
  loc_69DC55: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69DC5A: FLdRfVar var_F8
  loc_69DC5D: CBoolVarNull
  loc_69DC5F: FFree1Var var_F8 = ""
  loc_69DC62: BranchF loc_69DC7D
  loc_69DC65: LitVar_FALSE
  loc_69DC69: PopAdLdVar
  loc_69DC6A: FLdPrThis
  loc_69DC6B: VCallAd Control_ID_PanelCierres
  loc_69DC6E: FStAdFunc var_E4
  loc_69DC71: FLdPr var_E4
  loc_69DC74: LateIdSt
  loc_69DC79: FFree1Ad var_E4
  loc_69DC7C: ExitProcHresult
  loc_69DC7D: Branch loc_69DC2C
  loc_69DC80: ImpAdCallFPR4 DoEvents()
  loc_69DC85: LitI4 1
  loc_69DC8A: ILdRf var_94
  loc_69DC8D: LitStr "D"
  loc_69DC90: LitI4 0
  loc_69DC95: FnInStr4
  loc_69DC97: LitI4 0
  loc_69DC9C: NeI4
  loc_69DC9D: BranchF loc_69DCA5
  loc_69DCA0: LitI2_Byte 0
  loc_69DCA2: FStI2 var_96
  loc_69DCA5: Branch loc_69DC26
  loc_69DCA8: FLdRfVar var_E6
  loc_69DCAB: FLdRfVar var_A4
  loc_69DCAE: CVarRef
  loc_69DCB3: LitI2_Byte &HFF
  loc_69DCB5: PopTmpLdAd2 var_DE
  loc_69DCB8: LitStr "D"
  loc_69DCBB: FStStrCopy var_FC
  loc_69DCBE: FLdRfVar var_FC
  loc_69DCC1: FLdRfVar var_E4
  loc_69DCC4: ImpAdLdRf MemVar_74C760
  loc_69DCC7: NewIfNullPr Formx
  loc_69DCCA: from_stack_1v = Formx.global_4589716Get()
  loc_69DCCF: FLdPr var_E4
  loc_69DCD2: Formx.WindowState = from_stack_1
  loc_69DCD7: FLdI2 var_E6
  loc_69DCDA: NotI4
  loc_69DCDB: FFree1Str var_FC
  loc_69DCDE: FFree1Ad var_E4
  loc_69DCE1: BranchF loc_69DD12
  loc_69DCE4: FLdRfVar var_F8
  loc_69DCE7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69DCEC: FLdRfVar var_F8
  loc_69DCEF: CBoolVarNull
  loc_69DCF1: FFree1Var var_F8 = ""
  loc_69DCF4: BranchF loc_69DD0F
  loc_69DCF7: LitVar_FALSE
  loc_69DCFB: PopAdLdVar
  loc_69DCFC: FLdPrThis
  loc_69DCFD: VCallAd Control_ID_PanelCierres
  loc_69DD00: FStAdFunc var_E4
  loc_69DD03: FLdPr var_E4
  loc_69DD06: LateIdSt
  loc_69DD0B: FFree1Ad var_E4
  loc_69DD0E: ExitProcHresult
  loc_69DD0F: Branch loc_69DCA8
  loc_69DD12: FLdRfVar var_A4
  loc_69DD15: CVarRef
  loc_69DD1A: FLdRfVar var_F8
  loc_69DD1D: ImpAdCallFPR4  = Trim()
  loc_69DD22: FLdRfVar var_F8
  loc_69DD25: CStrVarTmp
  loc_69DD26: FStStr var_A4
  loc_69DD29: FFree1Var var_F8 = ""
  loc_69DD2C: ILdRf var_A4
  loc_69DD2F: FnLenStr
  loc_69DD30: LitI4 2
  loc_69DD35: LtI4
  loc_69DD36: BranchF loc_69DD80
  loc_69DD39: LitVar_Missing var_12C
  loc_69DD3C: LitVar_Missing var_F8
  loc_69DD3F: ImpAdLdRf MemVar_74BF24
  loc_69DD42: CVarRef
  loc_69DD47: LitI4 0
  loc_69DD4C: FLdPr Me
  loc_69DD4F: MemLdRfVar from_stack_1.global_7340
  loc_69DD52: CVarRef
  loc_69DD57: ImpAdCallI2 MsgBox(, , , , )
  loc_69DD5C: CBoolI4
  loc_69DD5E: FFreeVar var_F8 = ""
  loc_69DD65: BranchF loc_69DD80
  loc_69DD68: LitVar_FALSE
  loc_69DD6C: PopAdLdVar
  loc_69DD6D: FLdPrThis
  loc_69DD6E: VCallAd Control_ID_PanelCierres
  loc_69DD71: FStAdFunc var_E4
  loc_69DD74: FLdPr var_E4
  loc_69DD77: LateIdSt
  loc_69DD7C: FFree1Ad var_E4
  loc_69DD7F: ExitProcHresult
  loc_69DD80: FLdRfVar var_B8
  loc_69DD83: FLdRfVar var_A4
  loc_69DD86: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69DD8B: FLdRfVar var_E6
  loc_69DD8E: FLdRfVar var_A4
  loc_69DD91: CVarRef
  loc_69DD96: LitI2_Byte 0
  loc_69DD98: PopTmpLdAd2 var_DE
  loc_69DD9B: LitStr "D"
  loc_69DD9E: FStStrCopy var_FC
  loc_69DDA1: FLdRfVar var_FC
  loc_69DDA4: FLdRfVar var_E4
  loc_69DDA7: ImpAdLdRf MemVar_74C760
  loc_69DDAA: NewIfNullPr Formx
  loc_69DDAD: from_stack_1v = Formx.global_4589716Get()
  loc_69DDB2: FLdPr var_E4
  loc_69DDB5: Formx.WindowState = from_stack_1
  loc_69DDBA: FLdI2 var_E6
  loc_69DDBD: NotI4
  loc_69DDBE: FFree1Str var_FC
  loc_69DDC1: FFree1Ad var_E4
  loc_69DDC4: BranchF loc_69DDF5
  loc_69DDC7: FLdRfVar var_F8
  loc_69DDCA: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_69DDCF: FLdRfVar var_F8
  loc_69DDD2: CBoolVarNull
  loc_69DDD4: FFree1Var var_F8 = ""
  loc_69DDD7: BranchF loc_69DDF2
  loc_69DDDA: LitVar_FALSE
  loc_69DDDE: PopAdLdVar
  loc_69DDDF: FLdPrThis
  loc_69DDE0: VCallAd Control_ID_PanelCierres
  loc_69DDE3: FStAdFunc var_E4
  loc_69DDE6: FLdPr var_E4
  loc_69DDE9: LateIdSt
  loc_69DDEE: FFree1Ad var_E4
  loc_69DDF1: ExitProcHresult
  loc_69DDF2: Branch loc_69DD8B
  loc_69DDF5: FLdRfVar var_BC
  loc_69DDF8: FLdRfVar var_A4
  loc_69DDFB: ImpAdCallFPR4 Proc_101_17_612750(, )
  loc_69DE00: FLdRfVar var_FC
  loc_69DE03: FLdRfVar var_E4
  loc_69DE06: ImpAdLdRf MemVar_7520D4
  loc_69DE09: NewIfNullPr Global
  loc_69DE0C:  = Global.App
  loc_69DE11: FLdPr var_E4
  loc_69DE14:  = App.Path
  loc_69DE19: FLdRfVar var_B4
  loc_69DE1C: FLdRfVar var_B0
  loc_69DE1F: LitI2_Byte &HFF
  loc_69DE21: PopTmpLdAd2 var_DE
  loc_69DE24: ILdRf var_FC
  loc_69DE27: LitStr "\reporte.mdb"
  loc_69DE2A: ConcatStr
  loc_69DE2B: PopTmpLdAdStr
  loc_69DE2F: FLdRfVar var_B8
  loc_69DE32: LitStr "D"
  loc_69DE35: FStStrCopy var_130
  loc_69DE38: FLdRfVar var_130
  loc_69DE3B: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69DE40: NotI4
  loc_69DE41: FFreeStr var_FC = "": var_130 = ""
  loc_69DE4A: FFree1Ad var_E4
  loc_69DE4D: BranchF loc_69DE9E
  loc_69DE50: LitVar_Missing var_12C
  loc_69DE53: LitVar_Missing var_F8
  loc_69DE56: ImpAdLdRf MemVar_74BF24
  loc_69DE59: CVarRef
  loc_69DE5E: LitI4 5
  loc_69DE63: FLdPr Me
  loc_69DE66: MemLdRfVar from_stack_1.global_7344
  loc_69DE69: CVarRef
  loc_69DE6E: ImpAdCallI2 MsgBox(, , , , )
  loc_69DE73: LitI4 2
  loc_69DE78: EqI4
  loc_69DE79: FFreeVar var_F8 = ""
  loc_69DE80: BranchF loc_69DE9B
  loc_69DE83: LitVar_FALSE
  loc_69DE87: PopAdLdVar
  loc_69DE88: FLdPrThis
  loc_69DE89: VCallAd Control_ID_PanelCierres
  loc_69DE8C: FStAdFunc var_E4
  loc_69DE8F: FLdPr var_E4
  loc_69DE92: LateIdSt
  loc_69DE97: FFree1Ad var_E4
  loc_69DE9A: ExitProcHresult
  loc_69DE9B: Branch loc_69DE00
  loc_69DE9E: FLdRfVar var_FC
  loc_69DEA1: FLdRfVar var_E4
  loc_69DEA4: ImpAdLdRf MemVar_7520D4
  loc_69DEA7: NewIfNullPr Global
  loc_69DEAA:  = Global.App
  loc_69DEAF: FLdPr var_E4
  loc_69DEB2:  = App.Path
  loc_69DEB7: FLdRfVar var_B4
  loc_69DEBA: FLdRfVar var_B0
  loc_69DEBD: LitI2_Byte 0
  loc_69DEBF: PopTmpLdAd2 var_DE
  loc_69DEC2: ILdRf var_FC
  loc_69DEC5: LitStr "\reporte.mdb"
  loc_69DEC8: ConcatStr
  loc_69DEC9: PopTmpLdAdStr
  loc_69DECD: FLdRfVar var_BC
  loc_69DED0: LitStr "D"
  loc_69DED3: FStStrCopy var_130
  loc_69DED6: FLdRfVar var_130
  loc_69DED9: ImpAdCallI2  = Proc_101_18_6C556C(, , , )
  loc_69DEDE: NotI4
  loc_69DEDF: FFreeStr var_FC = "": var_130 = ""
  loc_69DEE8: FFree1Ad var_E4
  loc_69DEEB: BranchF loc_69DF3C
  loc_69DEEE: LitVar_Missing var_12C
  loc_69DEF1: LitVar_Missing var_F8
  loc_69DEF4: ImpAdLdRf MemVar_74BF24
  loc_69DEF7: CVarRef
  loc_69DEFC: LitI4 5
  loc_69DF01: FLdPr Me
  loc_69DF04: MemLdRfVar from_stack_1.global_7344
  loc_69DF07: CVarRef
  loc_69DF0C: ImpAdCallI2 MsgBox(, , , , )
  loc_69DF11: LitI4 2
  loc_69DF16: EqI4
  loc_69DF17: FFreeVar var_F8 = ""
  loc_69DF1E: BranchF loc_69DF39
  loc_69DF21: LitVar_FALSE
  loc_69DF25: PopAdLdVar
  loc_69DF26: FLdPrThis
  loc_69DF27: VCallAd Control_ID_PanelCierres
  loc_69DF2A: FStAdFunc var_E4
  loc_69DF2D: FLdPr var_E4
  loc_69DF30: LateIdSt
  loc_69DF35: FFree1Ad var_E4
  loc_69DF38: ExitProcHresult
  loc_69DF39: Branch loc_69DE9E
  loc_69DF3C: FLdPr Me
  loc_69DF3F: MemLdStr global_7348
  loc_69DF42: CVarStr var_CC
  loc_69DF45: PopAdLdVar
  loc_69DF46: FLdPrThis
  loc_69DF47: VCallAd Control_ID_PanelCierres
  loc_69DF4A: FStAdFunc var_E4
  loc_69DF4D: FLdPr var_E4
  loc_69DF50: LateIdSt
  loc_69DF55: FFree1Ad var_E4
  loc_69DF58: FLdRfVar var_FC
  loc_69DF5B: FLdRfVar var_138
  loc_69DF5E: FLdRfVar var_E4
  loc_69DF61: ImpAdLdRf MemVar_7520D4
  loc_69DF64: NewIfNullPr Global
  loc_69DF67:  = Global.Screen
  loc_69DF6C: FLdPr var_E4
  loc_69DF6F:  = Screen.ActiveForm
  loc_69DF74: FLdPr var_138
  loc_69DF77:  = Form.Name
  loc_69DF7C: FFreeStr var_FC = ""
  loc_69DF83: FFreeAd var_E4 = ""
  loc_69DF8A: FLdRfVar var_FC
  loc_69DF8D: FLdRfVar var_E4
  loc_69DF90: ImpAdLdRf MemVar_7520D4
  loc_69DF93: NewIfNullPr Global
  loc_69DF96:  = Global.App
  loc_69DF9B: FLdPr var_E4
  loc_69DF9E:  = App.Path
  loc_69DFA3: FLdRfVar var_138
  loc_69DFA6: LitVar_Missing var_10C
  loc_69DFA9: PopAdLdVar
  loc_69DFAA: LitVar_Missing var_DC
  loc_69DFAD: PopAdLdVar
  loc_69DFAE: LitVar_TRUE var_CC
  loc_69DFB1: PopAdLdVar
  loc_69DFB2: ILdRf var_FC
  loc_69DFB5: LitStr "\reporte.mdb"
  loc_69DFB8: ConcatStr
  loc_69DFB9: FStStrNoPop var_130
  loc_69DFBC: ImpAdLdRf MemVar_752164
  loc_69DFBF: NewIfNullPr Me
  loc_69DFC2: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69DFC7: FLdZeroAd var_138
  loc_69DFCA: FStAdFunc var_88
  loc_69DFCD: FFreeStr var_FC = ""
  loc_69DFD4: FFree1Ad var_E4
  loc_69DFD7: FLdRfVar var_E4
  loc_69DFDA: LitVar_Missing var_10C
  loc_69DFDD: PopAdLdVar
  loc_69DFDE: LitVar_Missing var_DC
  loc_69DFE1: PopAdLdVar
  loc_69DFE2: LitVar_Missing var_CC
  loc_69DFE5: PopAdLdVar
  loc_69DFE6: LitStr "select ReportVer from Header"
  loc_69DFE9: FLdPr var_88
  loc_69DFEC: Me.OpenRecordset from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_69DFF1: FLdZeroAd var_E4
  loc_69DFF4: FStAdFunc var_8C
  loc_69DFF7: FLdRfVar var_F8
  loc_69DFFA: FLdRfVar var_138
  loc_69DFFD: LitVarStr var_CC, "ReportVer"
  loc_69E002: PopAdLdVar
  loc_69E003: FLdRfVar var_E4
  loc_69E006: FLdPr var_8C
  loc_69E009:  = Me.Fields
  loc_69E00E: FLdPr var_E4
  loc_69E011: from_stack_2 = Me.Item(from_stack_1)
  loc_69E016: FLdPr var_138
  loc_69E019:  = Me.Value
  loc_69E01E: FLdRfVar var_F8
  loc_69E021: LitVarStr var_DC, vbNullString
  loc_69E026: ConcatVar var_12C
  loc_69E02A: CStrVarTmp
  loc_69E02B: FStStr var_90
  loc_69E02E: FFreeAd var_E4 = ""
  loc_69E035: FFreeVar var_F8 = ""
  loc_69E03C: FLdPr var_8C
  loc_69E03F: Me.Close
  loc_69E044: LitNothing
  loc_69E046: CastAd
  loc_69E049: FStAdFunc var_8C
  loc_69E04C: FLdPr var_88
  loc_69E04F: Me.Close
  loc_69E054: LitNothing
  loc_69E056: CastAd
  loc_69E059: FStAdFunc var_88
  loc_69E05C: ILdRf var_90
  loc_69E05F: LitStr vbNullString
  loc_69E062: EqStr
  loc_69E064: BranchF loc_69E0AA
  loc_69E067: FLdRfVar var_FC
  loc_69E06A: FLdRfVar var_E4
  loc_69E06D: ImpAdLdRf MemVar_7520D4
  loc_69E070: NewIfNullPr Global
  loc_69E073:  = Global.App
  loc_69E078: FLdPr var_E4
  loc_69E07B:  = App.Path
  loc_69E080: ILdRf var_FC
  loc_69E083: LitStr "\repo1.rpt"
  loc_69E086: ConcatStr
  loc_69E087: CVarStr var_F8
  loc_69E08A: PopAdLdVar
  loc_69E08B: FLdPrThis
  loc_69E08C: VCallAd Control_ID_CrystalReport1
  loc_69E08F: FStAdFunc var_138
  loc_69E092: FLdPr var_138
  loc_69E095: LateIdSt
  loc_69E09A: FFree1Str var_FC
  loc_69E09D: FFreeAd var_E4 = ""
  loc_69E0A4: FFree1Var var_F8 = ""
  loc_69E0A7: Branch loc_69E0F5
  loc_69E0AA: FLdRfVar var_FC
  loc_69E0AD: FLdRfVar var_E4
  loc_69E0B0: ImpAdLdRf MemVar_7520D4
  loc_69E0B3: NewIfNullPr Global
  loc_69E0B6:  = Global.App
  loc_69E0BB: FLdPr var_E4
  loc_69E0BE:  = App.Path
  loc_69E0C3: ILdRf var_FC
  loc_69E0C6: LitStr "\"
  loc_69E0C9: ConcatStr
  loc_69E0CA: FStStrNoPop var_130
  loc_69E0CD: ILdRf var_90
  loc_69E0D0: ConcatStr
  loc_69E0D1: CVarStr var_F8
  loc_69E0D4: PopAdLdVar
  loc_69E0D5: FLdPrThis
  loc_69E0D6: VCallAd Control_ID_CrystalReport1
  loc_69E0D9: FStAdFunc var_138
  loc_69E0DC: FLdPr var_138
  loc_69E0DF: LateIdSt
  loc_69E0E4: FFreeStr var_FC = ""
  loc_69E0EB: FFreeAd var_E4 = ""
  loc_69E0F2: FFree1Var var_F8 = ""
  loc_69E0F5: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_69E0FA: FLdRfVar var_FC
  loc_69E0FD: FLdRfVar var_138
  loc_69E100: FLdRfVar var_E4
  loc_69E103: ImpAdLdRf MemVar_7520D4
  loc_69E106: NewIfNullPr Global
  loc_69E109:  = Global.Screen
  loc_69E10E: FLdPr var_E4
  loc_69E111:  = Screen.ActiveForm
  loc_69E116: FLdPr var_138
  loc_69E119:  = Form.Name
  loc_69E11E: FFreeStr var_FC = ""
  loc_69E125: FFreeAd var_E4 = ""
  loc_69E12C: LitVar_FALSE
  loc_69E130: PopAdLdVar
  loc_69E131: FLdPrThis
  loc_69E132: VCallAd Control_ID_PanelCierres
  loc_69E135: FStAdFunc var_E4
  loc_69E138: FLdPr var_E4
  loc_69E13B: LateIdSt
  loc_69E140: FFree1Ad var_E4
  loc_69E143: FLdPrThis
  loc_69E144: VCallAd Control_ID_CrystalReport1
  loc_69E147: FStAdFunc var_E4
  loc_69E14A: FLdPr var_E4
  loc_69E14D: LateIdLdVar var_F8 DispID_65 0
  loc_69E154: CI2Var
  loc_69E155: LitI2_Byte 0
  loc_69E157: EqI2
  loc_69E158: FFree1Ad var_E4
  loc_69E15B: FFree1Var var_F8 = ""
  loc_69E15E: BranchF loc_69E169
  loc_69E161: ImpAdCallFPR4 DoEvents()
  loc_69E166: Branch loc_69E143
  loc_69E169: ExitProcHresult
  loc_69E16A: ExitProcHresult
  loc_69E16B: FLdRfVar var_13C
  loc_69E16E: ImpAdCallI2 Err 'rtcErrObj
  loc_69E173: FStAdFunc var_E4
  loc_69E176: FLdPr var_E4
  loc_69E179:  = Err.Number
  loc_69E17E: ILdRf var_13C
  loc_69E181: FStR4 var_140
  loc_69E184: FFree1Ad var_E4
  loc_69E187: ILdRf var_140
  loc_69E18A: LitI4 &H5041
  loc_69E18F: EqI4
  loc_69E190: BranchF loc_69E197
  loc_69E193: ExitProcHresult
  loc_69E194: Branch loc_69E198
  loc_69E197: ExitProcHresult
  loc_69E198: ExitProcHresult
End Function

Private Function Proc_162_191_623F2C(arg_C, arg_10) '623F2C
  'Data Table: 460894
  loc_623DD0: ZeroRetValVar
  loc_623DD2: ILdI4 arg_C
  loc_623DD5: FStStrCopy var_A0
  loc_623DD8: ILdRf var_A0
  loc_623DDB: LitStr "D"
  loc_623DDE: EqStr
  loc_623DE0: BranchF loc_623E17
  loc_623DE3: FLdPr Me
  loc_623DE6: MemLdStr global_7352
  loc_623DE9: CVarStr var_C0
  loc_623DEC: LitI4 &HD
  loc_623DF1: FLdRfVar var_B0
  loc_623DF4: ImpAdCallFPR4  = Chr()
  loc_623DF9: FLdRfVar var_B0
  loc_623DFC: ConcatVar var_D0
  loc_623E00: CStrVarTmp
  loc_623E01: FStStr var_9C
  loc_623E04: FFreeVar var_B0 = ""
  loc_623E0B: FLdPr Me
  loc_623E0E: MemLdStr global_7356
  loc_623E11: FStStrCopy var_98
  loc_623E14: Branch loc_623E92
  loc_623E17: ILdRf var_A0
  loc_623E1A: LitStr "T"
  loc_623E1D: EqStr
  loc_623E1F: BranchF loc_623E56
  loc_623E22: FLdPr Me
  loc_623E25: MemLdStr global_7368
  loc_623E28: CVarStr var_C0
  loc_623E2B: LitI4 &HD
  loc_623E30: FLdRfVar var_B0
  loc_623E33: ImpAdCallFPR4  = Chr()
  loc_623E38: FLdRfVar var_B0
  loc_623E3B: ConcatVar var_D0
  loc_623E3F: CStrVarTmp
  loc_623E40: FStStr var_9C
  loc_623E43: FFreeVar var_B0 = ""
  loc_623E4A: FLdPr Me
  loc_623E4D: MemLdStr global_7372
  loc_623E50: FStStrCopy var_98
  loc_623E53: Branch loc_623E92
  loc_623E56: ILdRf var_A0
  loc_623E59: LitStr "M"
  loc_623E5C: EqStr
  loc_623E5E: BranchF loc_623E92
  loc_623E61: FLdPr Me
  loc_623E64: MemLdStr global_7360
  loc_623E67: CVarStr var_C0
  loc_623E6A: LitI4 &HD
  loc_623E6F: FLdRfVar var_B0
  loc_623E72: ImpAdCallFPR4  = Chr()
  loc_623E77: FLdRfVar var_B0
  loc_623E7A: ConcatVar var_D0
  loc_623E7E: CStrVarTmp
  loc_623E7F: FStStr var_9C
  loc_623E82: FFreeVar var_B0 = ""
  loc_623E89: FLdPr Me
  loc_623E8C: MemLdStr global_7364
  loc_623E8F: FStStrCopy var_98
  loc_623E92: ILdUI1 arg_10
  loc_623E96: FStUI1 var_D2
  loc_623E9A: FLdUI1
  loc_623E9E: LitI2_Byte 1
  loc_623EA0: CUI1I2
  loc_623EA2: EqI2
  loc_623EA3: BranchF loc_623EB6
  loc_623EA6: ILdRf var_9C
  loc_623EA9: FLdPr Me
  loc_623EAC: MemLdStr global_7376
  loc_623EAF: ConcatStr
  loc_623EB0: FStStr var_9C
  loc_623EB3: Branch loc_623EFC
  loc_623EB6: FLdUI1
  loc_623EBA: LitI2_Byte 2
  loc_623EBC: CUI1I2
  loc_623EBE: EqI2
  loc_623EBF: BranchF loc_623ED2
  loc_623EC2: ILdRf var_9C
  loc_623EC5: FLdPr Me
  loc_623EC8: MemLdStr global_7380
  loc_623ECB: ConcatStr
  loc_623ECC: FStStr var_9C
  loc_623ECF: Branch loc_623EFC
  loc_623ED2: ILdRf var_9C
  loc_623ED5: FLdPr Me
  loc_623ED8: MemLdStr global_7384
  loc_623EDB: ConcatStr
  loc_623EDC: FStStrNoPop var_D8
  loc_623EDF: ILdUI1 arg_10
  loc_623EE3: CStrI2
  loc_623EE5: FStStrNoPop var_DC
  loc_623EE8: ConcatStr
  loc_623EE9: FStStrNoPop var_E0
  loc_623EEC: LitStr "."
  loc_623EEF: ConcatStr
  loc_623EF0: FStStr var_9C
  loc_623EF3: FFreeStr var_D8 = "": var_DC = ""
  loc_623EFC: LitVar_Missing var_D0
  loc_623EFF: LitVar_Missing var_B0
  loc_623F02: FLdRfVar var_98
  loc_623F05: CVarRef
  loc_623F0A: LitI4 &H40
  loc_623F0F: FLdRfVar var_9C
  loc_623F12: CVarRef
  loc_623F17: ImpAdCallFPR4 MsgBox(, , , , )
  loc_623F1C: FFreeVar var_B0 = ""
  loc_623F23: ExitProcCbHresult
End Function

Private Function Proc_162_192_5D0A5C() '5D0A5C
  'Data Table: 460894
  loc_5D0A44: LitVar_Missing var_A4
  loc_5D0A47: PopAdLdVar
  loc_5D0A48: LitVarI2 var_94, 1
  loc_5D0A4D: PopAdLdVar
  loc_5D0A4E: ImpAdLdRf MemVar_74E0EC
  loc_5D0A51: NewIfNullPr Calculadora
  loc_5D0A54: Calculadora.Show from_stack_1, from_stack_2
  loc_5D0A59: ExitProcHresult
End Function

Private Function Proc_162_193_5DCDA0() '5DCDA0
  'Data Table: 460894
  loc_5DCD54: LitI2_Byte 1
  loc_5DCD56: CUI1I2
  loc_5DCD58: FLdRfVar var_86
  loc_5DCD5B: LitI2_Byte &H32
  loc_5DCD5D: CUI1I2
  loc_5DCD5F: ForUI1 var_8C
  loc_5DCD65: LitI2_Byte 1
  loc_5DCD67: CUI1I2
  loc_5DCD69: FLdRfVar var_88
  loc_5DCD6C: ImpAdLdUI1
  loc_5DCD70: ForUI1 var_90
  loc_5DCD76: LitStr vbNullString
  loc_5DCD79: FLdUI1
  loc_5DCD7D: CI4UI1
  loc_5DCD7E: FLdUI1
  loc_5DCD82: CI4UI1
  loc_5DCD83: ImpAdLdRf MemVar_74C388
  loc_5DCD86: AryLdPr
  loc_5DCD89: MemStStrCopy
  loc_5DCD8D: FLdRfVar var_88
  loc_5DCD90: NextUI1
  loc_5DCD96: FLdRfVar var_86
  loc_5DCD99: NextUI1
  loc_5DCD9F: ExitProcHresult
End Function

Private Function Proc_162_194_5E10B4() '5E10B4
  'Data Table: 460894
  loc_5E1064: ImpAdCallFPR4 Proc_167_13_6138BC()
  loc_5E1069: from_stack_1v = Proc_162_229_63F80C()
  loc_5E106E: LitVarStr var_94, "WINDIR"
  loc_5E1073: FStVarCopyObj var_A4
  loc_5E1076: FLdRfVar var_A4
  loc_5E1079: FLdRfVar var_B4
  loc_5E107C: ImpAdCallFPR4  = Environ()
  loc_5E1081: FLdRfVar var_B4
  loc_5E1084: LitVarStr var_C4, "\CEM44\SETUP.CFG"
  loc_5E1089: ConcatVar var_D4
  loc_5E108D: CStrVarTmp
  loc_5E108E: FStStrNoPop var_E8
  loc_5E1091: ImpAdLdUI1
  loc_5E1095: CI2UI1
  loc_5E1097: LitI2_Byte &HFF
  loc_5E1099: OpenFile
  loc_5E109D: FFree1Str var_E8
  loc_5E10A0: FFreeVar var_A4 = "": var_B4 = ""
  loc_5E10A9: ImpAdCallFPR4 Proc_167_14_6AB0C4()
  loc_5E10AE: ImpAdCallFPR4 Proc_87_17_729AA4()
  loc_5E10B3: ExitProcHresult
End Function

Private Function Proc_162_195_64FB64() '64FB64
  'Data Table: 460894
  loc_64F8AC: LitI2_Byte 0
  loc_64F8AE: PopTmpLdAd2 var_92
  loc_64F8B1: ImpAdCallI2 Proc_53_4_718EF4()
  loc_64F8B6: BranchF loc_64FAA9
  loc_64F8B9: FLdRfVar var_92
  loc_64F8BC: FLdRfVar var_88
  loc_64F8BF: FLdRfVar var_98
  loc_64F8C2: ImpAdLdRf MemVar_74C760
  loc_64F8C5: NewIfNullPr Formx
  loc_64F8C8: from_stack_1v = Formx.global_4589716Get()
  loc_64F8CD: FLdPr var_98
  loc_64F8D0:  = Formx.FontUnderline
  loc_64F8D5: FLdI2 var_92
  loc_64F8D8: NotI4
  loc_64F8D9: FFree1Ad var_98
  loc_64F8DC: BranchF loc_64F8F6
  loc_64F8DF: FLdRfVar var_A8
  loc_64F8E2: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_64F8E7: FLdRfVar var_A8
  loc_64F8EA: CBoolVarNull
  loc_64F8EC: FFree1Var var_A8 = ""
  loc_64F8EF: BranchF loc_64F8F3
  loc_64F8F2: ExitProcHresult
  loc_64F8F3: Branch loc_64F8B9
  loc_64F8F6: LitI2_Byte 1
  loc_64F8F8: FStI2 var_8A
  loc_64F8FB: LitI2_Byte 1
  loc_64F8FD: CUI1I2
  loc_64F8FF: FLdRfVar var_90
  loc_64F902: LitI2_Byte 5
  loc_64F904: CUI1I2
  loc_64F906: ForUI1 var_AC
  loc_64F90C: LitI2_Byte 1
  loc_64F90E: CUI1I2
  loc_64F910: FLdRfVar var_8E
  loc_64F913: LitI2_Byte &HA
  loc_64F915: CUI1I2
  loc_64F917: ForUI1 var_B0
  loc_64F91D: LitVarI2 var_A8, 6
  loc_64F922: FLdI2 var_8A
  loc_64F925: CI4UI1
  loc_64F926: FLdRfVar var_88
  loc_64F929: CVarRef
  loc_64F92E: FLdRfVar var_E0
  loc_64F931: ImpAdCallFPR4  = Mid(, , )
  loc_64F936: FLdRfVar var_E0
  loc_64F939: FnCCurVar
  loc_64F93B: CR8Cy
  loc_64F93C: ImpAdLdFPR4 MemVar_74C2DC
  loc_64F93F: DivR8
  loc_64F940: CCyR4
  loc_64F941: FLdUI1
  loc_64F945: CI4UI1
  loc_64F946: FLdUI1
  loc_64F94A: CI4UI1
  loc_64F94B: ImpAdLdRf MemVar_74C074
  loc_64F94E: AryLdPr
  loc_64F951: MemStR8 global_0
  loc_64F954: FFreeVar var_A8 = "": var_E0 = ""
  loc_64F95D: FLdI2 var_8A
  loc_64F960: LitI2_Byte 6
  loc_64F962: AddI2
  loc_64F963: FStI2 var_8A
  loc_64F966: FLdRfVar var_8E
  loc_64F969: NextUI1
  loc_64F96F: FLdRfVar var_90
  loc_64F972: NextUI1
  loc_64F978: LitI2_Byte 1
  loc_64F97A: CUI1I2
  loc_64F97C: FLdRfVar var_8E
  loc_64F97F: LitI2_Byte &HA
  loc_64F981: CUI1I2
  loc_64F983: ForUI1 var_E4
  loc_64F989: LitVarI2 var_A8, 8
  loc_64F98E: FLdI2 var_8A
  loc_64F991: CI4UI1
  loc_64F992: FLdRfVar var_88
  loc_64F995: CVarRef
  loc_64F99A: FLdRfVar var_E0
  loc_64F99D: ImpAdCallFPR4  = Mid(, , )
  loc_64F9A2: FLdRfVar var_E0
  loc_64F9A5: FnCCurVar
  loc_64F9A7: CR8Cy
  loc_64F9A8: LitI2 10000
  loc_64F9AB: CR8I2
  loc_64F9AC: DivR8
  loc_64F9AD: CCyR4
  loc_64F9AE: FLdUI1
  loc_64F9B2: CI4UI1
  loc_64F9B3: ImpAdLdRf MemVar_74C094
  loc_64F9B6: Ary1StCy
  loc_64F9B7: FFreeVar var_A8 = "": var_E0 = ""
  loc_64F9C0: FLdI2 var_8A
  loc_64F9C3: LitI2_Byte 8
  loc_64F9C5: AddI2
  loc_64F9C6: FStI2 var_8A
  loc_64F9C9: FLdRfVar var_8E
  loc_64F9CC: NextUI1
  loc_64F9D2: LitI2_Byte 0
  loc_64F9D4: FLdPrThis
  loc_64F9D5: VCallAd Control_ID_Reloj
  loc_64F9D8: FStAdFunc var_98
  loc_64F9DB: FLdPr var_98
  loc_64F9DE: Me.Enabled = from_stack_1b
  loc_64F9E3: FFree1Ad var_98
  loc_64F9E6: LitVar_Missing var_D0
  loc_64F9E9: PopAdLdVar
  loc_64F9EA: LitVarI4
  loc_64F9F2: PopAdLdVar
  loc_64F9F3: ImpAdLdRf MemVar_74D8B0
  loc_64F9F6: NewIfNullPr Consola
  loc_64F9F9: Consola.Show from_stack_1, from_stack_2
  loc_64F9FE: LitI2_Byte &HFF
  loc_64FA00: FLdPrThis
  loc_64FA01: VCallAd Control_ID_Reloj
  loc_64FA04: FStAdFunc var_98
  loc_64FA07: FLdPr var_98
  loc_64FA0A: Me.Enabled = from_stack_1b
  loc_64FA0F: FFree1Ad var_98
  loc_64FA12: LitI2_Byte &HFF
  loc_64FA14: ImpAdLdRf MemVar_74DC08
  loc_64FA17: NewIfNullPr PanelTanques
  loc_64FA1A: VCallAd Control_ID_TestTimer
  loc_64FA1D: FStAdFunc var_98
  loc_64FA20: FLdPr var_98
  loc_64FA23: PanelTanques.Timer.Enabled = from_stack_1b
  loc_64FA28: FFree1Ad var_98
  loc_64FA2B: LitVar_Missing var_D0
  loc_64FA2E: PopAdLdVar
  loc_64FA2F: LitVarI2 var_C0, 1
  loc_64FA34: PopAdLdVar
  loc_64FA35: ImpAdLdRf MemVar_74DC08
  loc_64FA38: NewIfNullPr PanelTanques
  loc_64FA3B: PanelTanques.Show from_stack_1, from_stack_2
  loc_64FA40: LitI2_Byte &HFF
  loc_64FA42: ImpAdLdRf MemVar_74DB18
  loc_64FA45: NewIfNullPr CargaEstadisticas
  loc_64FA48: VCallAd Control_ID_TestTimer
  loc_64FA4B: FStAdFunc var_98
  loc_64FA4E: FLdPr var_98
  loc_64FA51: CargaEstadisticas.Timer.Enabled = from_stack_1b
  loc_64FA56: FFree1Ad var_98
  loc_64FA59: LitVar_Missing var_D0
  loc_64FA5C: PopAdLdVar
  loc_64FA5D: LitVarI2 var_C0, 1
  loc_64FA62: PopAdLdVar
  loc_64FA63: ImpAdLdRf MemVar_74DB18
  loc_64FA66: NewIfNullPr CargaEstadisticas
  loc_64FA69: CargaEstadisticas.Show from_stack_1, from_stack_2
  loc_64FA6E: ImpAdLdRf MemVar_74DE30
  loc_64FA71: NewIfNullAd
  loc_64FA74: FStAdNoPop
  loc_64FA78: ImpAdLdRf MemVar_7520D4
  loc_64FA7B: NewIfNullPr Global
  loc_64FA7E: Global.Load from_stack_1
  loc_64FA83: FFree1Ad var_98
  loc_64FA86: LitI4 &H64
  loc_64FA8B: ImpAdCallFPR4 Sleep()
  loc_64FA90: SetLastSystemError
  loc_64FA91: ImpAdLdRf MemVar_74DE30
  loc_64FA94: NewIfNullAd
  loc_64FA97: FStAdNoPop
  loc_64FA9B: ImpAdLdRf MemVar_7520D4
  loc_64FA9E: NewIfNullPr Global
  loc_64FAA1: Global.Unload from_stack_1
  loc_64FAA6: FFree1Ad var_98
  loc_64FAA9: LitI2_Byte 0
  loc_64FAAB: ImpAdStI2 MemVar_74BFE0
  loc_64FAAE: LitVar_Missing var_A8
  loc_64FAB1: ImpAdCallI2 FreeFile()
  loc_64FAB6: CUI1I2
  loc_64FAB8: FStUI1 var_8C
  loc_64FABC: FFree1Var var_A8 = ""
  loc_64FABF: FLdRfVar var_E8
  loc_64FAC2: FLdRfVar var_98
  loc_64FAC5: ImpAdLdRf MemVar_7520D4
  loc_64FAC8: NewIfNullPr Global
  loc_64FACB:  = Global.App
  loc_64FAD0: FLdPr var_98
  loc_64FAD3:  = App.Path
  loc_64FAD8: ILdRf var_E8
  loc_64FADB: LitStr "\testok.bin"
  loc_64FADE: ConcatStr
  loc_64FADF: FStStrNoPop var_EC
  loc_64FAE2: FLdUI1
  loc_64FAE6: CI2UI1
  loc_64FAE8: LitI2_Byte &HFF
  loc_64FAEA: OpenFile
  loc_64FAEE: FFreeStr var_E8 = ""
  loc_64FAF5: FFree1Ad var_98
  loc_64FAF8: LitStr "OK"
  loc_64FAFB: FLdUI1
  loc_64FAFF: CI2UI1
  loc_64FB01: WriteFile
  loc_64FB07: FLdUI1
  loc_64FB0B: CI2UI1
  loc_64FB0D: Close
  loc_64FB0F: LitI2_Byte 0
  loc_64FB11: FLdPrThis
  loc_64FB12: VCallAd Control_ID_Text1
  loc_64FB15: FStAdFunc var_98
  loc_64FB18: FLdPr var_98
  loc_64FB1B: Me.Visible = from_stack_1b
  loc_64FB20: FFree1Ad var_98
  loc_64FB23: LitI2_Byte &HFF
  loc_64FB25: FLdPrThis
  loc_64FB26: VCallAd Control_ID_Text2
  loc_64FB29: FStAdFunc var_98
  loc_64FB2C: FLdPr var_98
  loc_64FB2F: Me.Visible = from_stack_1b
  loc_64FB34: FFree1Ad var_98
  loc_64FB37: LitI2_Byte 0
  loc_64FB39: FLdPrThis
  loc_64FB3A: VCallAd Control_ID_Text4
  loc_64FB3D: FStAdFunc var_98
  loc_64FB40: FLdPr var_98
  loc_64FB43: Me.Visible = from_stack_1b
  loc_64FB48: FFree1Ad var_98
  loc_64FB4B: LitI2_Byte 0
  loc_64FB4D: FLdPrThis
  loc_64FB4E: VCallAd Control_ID_Text2
  loc_64FB51: FStAdFunc var_98
  loc_64FB54: FLdPr var_98
  loc_64FB57: Me.Visible = from_stack_1b
  loc_64FB5C: FFree1Ad var_98
  loc_64FB5F: End
  loc_64FB61: ExitProcHresult
End Function

Private Function Proc_162_196_6650BC() '6650BC
  'Data Table: 460894
  loc_664D64: FLdRfVar var_1D4
  loc_664D67: LitVar_Missing var_1D0
  loc_664D6A: LitVar_Missing var_1B0
  loc_664D6D: LitVar_Missing var_190
  loc_664D70: LitVar_Missing var_170
  loc_664D73: LitVar_Missing var_150
  loc_664D76: LitVar_Missing var_130
  loc_664D79: LitVar_Missing var_110
  loc_664D7C: LitVar_Missing var_F0
  loc_664D7F: LitVar_Missing var_D0
  loc_664D82: LitVar_Missing var_B0
  loc_664D85: LitStr "Grupo de "
  loc_664D88: FStStrCopy var_90
  loc_664D8B: FLdRfVar var_90
  loc_664D8E: LitI4 &H191
  loc_664D93: PopTmpLdAdStr var_8C
  loc_664D96: LitI2_Byte &HA
  loc_664D98: PopTmpLdAd2 var_86
  loc_664D9B: ImpAdLdRf MemVar_74C7D0
  loc_664D9E: NewIfNullPr clsMsg
  loc_664DA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664DA6: ILdRf var_1D4
  loc_664DA9: ImpAdLdI4 MemVar_74BEE4
  loc_664DAC: ConcatStr
  loc_664DAD: FStStrNoPop var_1D8
  loc_664DB0: FLdPrThis
  loc_664DB1: VCallAd Control_ID_mnuGruposSurtidores
  loc_664DB4: FStAdFunc var_1DC
  loc_664DB7: FLdPr var_1DC
  loc_664DBA: Me.Caption = from_stack_1
  loc_664DBF: FFreeStr var_90 = "": var_1D4 = ""
  loc_664DC8: FFree1Ad var_1DC
  loc_664DCB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_664DE2: FLdRfVar var_1D4
  loc_664DE5: LitVar_Missing var_1D0
  loc_664DE8: LitVar_Missing var_1B0
  loc_664DEB: LitVar_Missing var_190
  loc_664DEE: LitVar_Missing var_170
  loc_664DF1: LitVar_Missing var_150
  loc_664DF4: LitVar_Missing var_130
  loc_664DF7: LitVar_Missing var_110
  loc_664DFA: LitVar_Missing var_F0
  loc_664DFD: LitVar_Missing var_D0
  loc_664E00: LitVar_Missing var_B0
  loc_664E03: LitStr "Reporte de Grupo de "
  loc_664E06: FStStrCopy var_90
  loc_664E09: FLdRfVar var_90
  loc_664E0C: LitI4 &H192
  loc_664E11: PopTmpLdAdStr var_8C
  loc_664E14: LitI2_Byte &HA
  loc_664E16: PopTmpLdAd2 var_86
  loc_664E19: ImpAdLdRf MemVar_74C7D0
  loc_664E1C: NewIfNullPr clsMsg
  loc_664E1F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664E24: ILdRf var_1D4
  loc_664E27: ImpAdLdI4 MemVar_74BEE4
  loc_664E2A: ConcatStr
  loc_664E2B: FStStrNoPop var_1D8
  loc_664E2E: FLdPrThis
  loc_664E2F: VCallAd Control_ID_mnuReporteGrupo
  loc_664E32: FStAdFunc var_1DC
  loc_664E35: FLdPr var_1DC
  loc_664E38: Me.Caption = from_stack_1
  loc_664E3D: FFreeStr var_90 = "": var_1D4 = ""
  loc_664E46: FFree1Ad var_1DC
  loc_664E49: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_664E60: FLdRfVar var_1D4
  loc_664E63: LitVar_Missing var_1D0
  loc_664E66: LitVar_Missing var_1B0
  loc_664E69: LitVar_Missing var_190
  loc_664E6C: LitVar_Missing var_170
  loc_664E6F: LitVar_Missing var_150
  loc_664E72: LitVar_Missing var_130
  loc_664E75: LitVar_Missing var_110
  loc_664E78: LitVar_Missing var_F0
  loc_664E7B: LitVar_Missing var_D0
  loc_664E7E: LitVar_Missing var_B0
  loc_664E81: LitStr "Reporte de Seguridad"
  loc_664E84: FStStrCopy var_90
  loc_664E87: FLdRfVar var_90
  loc_664E8A: LitI4 &H193
  loc_664E8F: PopTmpLdAdStr var_8C
  loc_664E92: LitI2_Byte &HA
  loc_664E94: PopTmpLdAd2 var_86
  loc_664E97: ImpAdLdRf MemVar_74C7D0
  loc_664E9A: NewIfNullPr clsMsg
  loc_664E9D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664EA2: ILdRf var_1D4
  loc_664EA5: FLdPrThis
  loc_664EA6: VCallAd Control_ID_mnuReporteDeSeguridad
  loc_664EA9: FStAdFunc var_1DC
  loc_664EAC: FLdPr var_1DC
  loc_664EAF: Me.Caption = from_stack_1
  loc_664EB4: FFreeStr var_90 = ""
  loc_664EBB: FFree1Ad var_1DC
  loc_664EBE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_664ED5: FLdRfVar var_1D4
  loc_664ED8: LitVar_Missing var_1D0
  loc_664EDB: LitVar_Missing var_1B0
  loc_664EDE: LitVar_Missing var_190
  loc_664EE1: LitVar_Missing var_170
  loc_664EE4: LitVar_Missing var_150
  loc_664EE7: LitVar_Missing var_130
  loc_664EEA: LitVar_Missing var_110
  loc_664EED: LitVar_Missing var_F0
  loc_664EF0: LitVar_Missing var_D0
  loc_664EF3: LitVar_Missing var_B0
  loc_664EF6: LitStr "Inicializar "
  loc_664EF9: FStStrCopy var_90
  loc_664EFC: FLdRfVar var_90
  loc_664EFF: LitI4 &H194
  loc_664F04: PopTmpLdAdStr var_8C
  loc_664F07: LitI2_Byte &HA
  loc_664F09: PopTmpLdAd2 var_86
  loc_664F0C: ImpAdLdRf MemVar_74C7D0
  loc_664F0F: NewIfNullPr clsMsg
  loc_664F12: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664F17: ILdRf var_1D4
  loc_664F1A: ImpAdLdI4 MemVar_74BEE4
  loc_664F1D: ConcatStr
  loc_664F1E: FStStrNoPop var_1D8
  loc_664F21: FLdPrThis
  loc_664F22: VCallAd Control_ID_mnuPumpIni
  loc_664F25: FStAdFunc var_1DC
  loc_664F28: FLdPr var_1DC
  loc_664F2B: Me.Caption = from_stack_1
  loc_664F30: FFreeStr var_90 = "": var_1D4 = ""
  loc_664F39: FFree1Ad var_1DC
  loc_664F3C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_664F53: FLdRfVar var_1D4
  loc_664F56: LitVar_Missing var_1D0
  loc_664F59: LitVar_Missing var_1B0
  loc_664F5C: LitVar_Missing var_190
  loc_664F5F: LitVar_Missing var_170
  loc_664F62: LitVar_Missing var_150
  loc_664F65: LitVar_Missing var_130
  loc_664F68: LitVar_Missing var_110
  loc_664F6B: LitVar_Missing var_F0
  loc_664F6E: LitVar_Missing var_D0
  loc_664F71: LitVar_Missing var_B0
  loc_664F74: LitStr "&Configuración de la Estación"
  loc_664F77: FStStrCopy var_90
  loc_664F7A: FLdRfVar var_90
  loc_664F7D: LitI4 &H195
  loc_664F82: PopTmpLdAdStr var_8C
  loc_664F85: LitI2_Byte &HA
  loc_664F87: PopTmpLdAd2 var_86
  loc_664F8A: ImpAdLdRf MemVar_74C7D0
  loc_664F8D: NewIfNullPr clsMsg
  loc_664F90: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_664F95: ILdRf var_1D4
  loc_664F98: FLdPrThis
  loc_664F99: VCallAd Control_ID_mnuConfiguracionEstacion
  loc_664F9C: FStAdFunc var_1DC
  loc_664F9F: FLdPr var_1DC
  loc_664FA2: Me.Caption = from_stack_1
  loc_664FA7: FFreeStr var_90 = ""
  loc_664FAE: FFree1Ad var_1DC
  loc_664FB1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_664FC8: FLdRfVar var_1D4
  loc_664FCB: LitVar_Missing var_1D0
  loc_664FCE: LitVar_Missing var_1B0
  loc_664FD1: LitVar_Missing var_190
  loc_664FD4: LitVar_Missing var_170
  loc_664FD7: LitVar_Missing var_150
  loc_664FDA: LitVar_Missing var_130
  loc_664FDD: LitVar_Missing var_110
  loc_664FE0: LitVar_Missing var_F0
  loc_664FE3: LitVar_Missing var_D0
  loc_664FE6: LitVar_Missing var_B0
  loc_664FE9: LitStr "&Mantenimiento"
  loc_664FEC: FStStrCopy var_90
  loc_664FEF: FLdRfVar var_90
  loc_664FF2: LitI4 &H196
  loc_664FF7: PopTmpLdAdStr var_8C
  loc_664FFA: LitI2_Byte &HA
  loc_664FFC: PopTmpLdAd2 var_86
  loc_664FFF: ImpAdLdRf MemVar_74C7D0
  loc_665002: NewIfNullPr clsMsg
  loc_665005: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66500A: ILdRf var_1D4
  loc_66500D: FLdPrThis
  loc_66500E: VCallAd Control_ID_mnuMantenimiento
  loc_665011: FStAdFunc var_1DC
  loc_665014: FLdPr var_1DC
  loc_665017: Me.Caption = from_stack_1
  loc_66501C: FFreeStr var_90 = ""
  loc_665023: FFree1Ad var_1DC
  loc_665026: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_66503D: FLdRfVar var_1D4
  loc_665040: LitVar_Missing var_1D0
  loc_665043: LitVar_Missing var_1B0
  loc_665046: LitVar_Missing var_190
  loc_665049: LitVar_Missing var_170
  loc_66504C: LitVar_Missing var_150
  loc_66504F: LitVar_Missing var_130
  loc_665052: LitVar_Missing var_110
  loc_665055: LitVar_Missing var_F0
  loc_665058: LitVar_Missing var_D0
  loc_66505B: LitVar_Missing var_B0
  loc_66505E: LitStr "&Inicializar "
  loc_665061: FStStrCopy var_90
  loc_665064: FLdRfVar var_90
  loc_665067: LitI4 &H197
  loc_66506C: PopTmpLdAdStr var_8C
  loc_66506F: LitI2_Byte &HA
  loc_665071: PopTmpLdAd2 var_86
  loc_665074: ImpAdLdRf MemVar_74C7D0
  loc_665077: NewIfNullPr clsMsg
  loc_66507A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_66507F: ILdRf var_1D4
  loc_665082: ImpAdLdI4 MemVar_74BEE4
  loc_665085: ConcatStr
  loc_665086: FStStrNoPop var_1D8
  loc_665089: FLdPrThis
  loc_66508A: VCallAd Control_ID_mnuPumpIni
  loc_66508D: FStAdFunc var_1DC
  loc_665090: FLdPr var_1DC
  loc_665093: Me.Caption = from_stack_1
  loc_665098: FFreeStr var_90 = "": var_1D4 = ""
  loc_6650A1: FFree1Ad var_1DC
  loc_6650A4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_6650BB: ExitProcHresult
End Function

Private Function Proc_162_197_6B0634() '6B0634
  'Data Table: 460894
  loc_6AFEB0: LitVarI2 var_A4, 1
  loc_6AFEB5: LitI4 4
  loc_6AFEBA: ImpAdLdI4 MemVar_74BEAC
  loc_6AFEBD: ImpAdCallI2 Mid$(, , )
  loc_6AFEC2: FStStrNoPop var_A8
  loc_6AFEC5: LitStr "1"
  loc_6AFEC8: EqStr
  loc_6AFECA: FFree1Str var_A8
  loc_6AFECD: FFree1Var var_A4 = ""
  loc_6AFED0: BranchF loc_6AFFC6
  loc_6AFED3: LitI2_Byte &HFF
  loc_6AFED5: FLdPrThis
  loc_6AFED6: VCallAd Control_ID_mnuRedXXIN
  loc_6AFED9: FStAdFunc var_AC
  loc_6AFEDC: FLdPr var_AC
  loc_6AFEDF: Me.Visible = from_stack_1b
  loc_6AFEE4: FFree1Ad var_AC
  loc_6AFEE7: LitI2_Byte 0
  loc_6AFEE9: FLdPrThis
  loc_6AFEEA: VCallAd Control_ID_mnuRedXXI
  loc_6AFEED: FStAdFunc var_AC
  loc_6AFEF0: FLdPr var_AC
  loc_6AFEF3: Me.Visible = from_stack_1b
  loc_6AFEF8: FFree1Ad var_AC
  loc_6AFEFB: LitI2_Byte 0
  loc_6AFEFD: FLdPrThis
  loc_6AFEFE: VCallAd Control_ID_MnuConvert
  loc_6AFF01: FStAdFunc var_AC
  loc_6AFF04: FLdPr var_AC
  loc_6AFF07: Me.Visible = from_stack_1b
  loc_6AFF0C: FFree1Ad var_AC
  loc_6AFF0F: LitI2_Byte &HFF
  loc_6AFF11: FLdPrThis
  loc_6AFF12: VCallAd Control_ID_mnuForzarCierreRedXXI
  loc_6AFF15: FStAdFunc var_AC
  loc_6AFF18: FLdPr var_AC
  loc_6AFF1B: Me.Visible = from_stack_1b
  loc_6AFF20: FFree1Ad var_AC
  loc_6AFF23: LitI2_Byte &HFF
  loc_6AFF25: FLdPrThis
  loc_6AFF26: VCallAd Control_ID_StockEx
  loc_6AFF29: FStAdFunc var_AC
  loc_6AFF2C: FLdPr var_AC
  loc_6AFF2F: Me.Visible = from_stack_1b
  loc_6AFF34: FFree1Ad var_AC
  loc_6AFF37: LitI2_Byte &HFF
  loc_6AFF39: FLdPrThis
  loc_6AFF3A: VCallAd Control_ID_StockProg
  loc_6AFF3D: FStAdFunc var_AC
  loc_6AFF40: FLdPr var_AC
  loc_6AFF43: Me.Visible = from_stack_1b
  loc_6AFF48: FFree1Ad var_AC
  loc_6AFF4B: LitI2_Byte 0
  loc_6AFF4D: FLdPrThis
  loc_6AFF4E: VCallAd Control_ID_mnuCerrarConsola
  loc_6AFF51: FStAdFunc var_AC
  loc_6AFF54: FLdPr var_AC
  loc_6AFF57: Me.Visible = from_stack_1b
  loc_6AFF5C: FFree1Ad var_AC
  loc_6AFF5F: LitI2_Byte &HFF
  loc_6AFF61: FLdPrThis
  loc_6AFF62: VCallAd Control_ID_mnuAdministraciónDeServicios
  loc_6AFF65: FStAdFunc var_AC
  loc_6AFF68: FLdPr var_AC
  loc_6AFF6B: Me.Visible = from_stack_1b
  loc_6AFF70: FFree1Ad var_AC
  loc_6AFF73: LitI2_Byte 0
  loc_6AFF75: FLdPrThis
  loc_6AFF76: VCallAd Control_ID_MnuBaja
  loc_6AFF79: FStAdFunc var_AC
  loc_6AFF7C: FLdPr var_AC
  loc_6AFF7F: Me.Visible = from_stack_1b
  loc_6AFF84: FFree1Ad var_AC
  loc_6AFF87: LitI2_Byte 0
  loc_6AFF89: FLdPrThis
  loc_6AFF8A: VCallAd Control_ID_MnuAltaconsig
  loc_6AFF8D: FStAdFunc var_AC
  loc_6AFF90: FLdPr var_AC
  loc_6AFF93: Me.Visible = from_stack_1b
  loc_6AFF98: FFree1Ad var_AC
  loc_6AFF9B: LitI2_Byte 0
  loc_6AFF9D: FLdPrThis
  loc_6AFF9E: VCallAd Control_ID_MnuTotalizadores
  loc_6AFFA1: FStAdFunc var_AC
  loc_6AFFA4: FLdPr var_AC
  loc_6AFFA7: Me.Visible = from_stack_1b
  loc_6AFFAC: FFree1Ad var_AC
  loc_6AFFAF: LitI2_Byte 0
  loc_6AFFB1: FLdPrThis
  loc_6AFFB2: VCallAd Control_ID_mnuTanques
  loc_6AFFB5: FStAdFunc var_AC
  loc_6AFFB8: FLdPr var_AC
  loc_6AFFBB: Me.Visible = from_stack_1b
  loc_6AFFC0: FFree1Ad var_AC
  loc_6AFFC3: Branch loc_6B002F
  loc_6AFFC6: LitI2_Byte 0
  loc_6AFFC8: FLdPrThis
  loc_6AFFC9: VCallAd Control_ID_mnuRedXXIN
  loc_6AFFCC: FStAdFunc var_AC
  loc_6AFFCF: FLdPr var_AC
  loc_6AFFD2: Me.Visible = from_stack_1b
  loc_6AFFD7: FFree1Ad var_AC
  loc_6AFFDA: LitI2_Byte &HFF
  loc_6AFFDC: FLdPrThis
  loc_6AFFDD: VCallAd Control_ID_mnuCerrarConsola
  loc_6AFFE0: FStAdFunc var_AC
  loc_6AFFE3: FLdPr var_AC
  loc_6AFFE6: Me.Visible = from_stack_1b
  loc_6AFFEB: FFree1Ad var_AC
  loc_6AFFEE: LitI2_Byte 0
  loc_6AFFF0: FLdPrThis
  loc_6AFFF1: VCallAd Control_ID_StockEx
  loc_6AFFF4: FStAdFunc var_AC
  loc_6AFFF7: FLdPr var_AC
  loc_6AFFFA: Me.Visible = from_stack_1b
  loc_6AFFFF: FFree1Ad var_AC
  loc_6B0002: LitI2_Byte 0
  loc_6B0004: FLdPrThis
  loc_6B0005: VCallAd Control_ID_StockProg
  loc_6B0008: FStAdFunc var_AC
  loc_6B000B: FLdPr var_AC
  loc_6B000E: Me.Visible = from_stack_1b
  loc_6B0013: FFree1Ad var_AC
  loc_6B0016: LitI2_Byte 0
  loc_6B0018: ImpAdLdRf MemVar_74C760
  loc_6B001B: NewIfNullPr Formx
  loc_6B001E: VCallAd Control_ID_mnuComisiones
  loc_6B0021: FStAdFunc var_AC
  loc_6B0024: FLdPr var_AC
  loc_6B0027: Formx.Menu.Visible = from_stack_1b
  loc_6B002C: FFree1Ad var_AC
  loc_6B002F: LitI2_Byte 0
  loc_6B0031: FLdPrThis
  loc_6B0032: VCallAd Control_ID_mnuForzarCierreConectividad
  loc_6B0035: FStAdFunc var_AC
  loc_6B0038: FLdPr var_AC
  loc_6B003B: Me.Visible = from_stack_1b
  loc_6B0040: FFree1Ad var_AC
  loc_6B0043: LitI2_Byte 0
  loc_6B0045: ImpAdLdRf MemVar_74C760
  loc_6B0048: NewIfNullPr Formx
  loc_6B004B: VCallAd Control_ID_MnuLogUsuarios
  loc_6B004E: FStAdFunc var_AC
  loc_6B0051: FLdPr var_AC
  loc_6B0054: Formx.Menu.Visible = from_stack_1b
  loc_6B0059: FFree1Ad var_AC
  loc_6B005C: LitVarI2 var_A4, 1
  loc_6B0061: LitI4 &HC
  loc_6B0066: ImpAdLdI4 MemVar_74BEAC
  loc_6B0069: ImpAdCallI2 Mid$(, , )
  loc_6B006E: FStStrNoPop var_A8
  loc_6B0071: LitStr "1"
  loc_6B0074: EqStr
  loc_6B0076: FFree1Str var_A8
  loc_6B0079: FFree1Var var_A4 = ""
  loc_6B007C: BranchF loc_6B030D
  loc_6B007F: LitI2_Byte &HFF
  loc_6B0081: ImpAdLdRf MemVar_74C760
  loc_6B0084: NewIfNullPr Formx
  loc_6B0087: VCallAd Control_ID_menuSeparadorCierres
  loc_6B008A: FStAdFunc var_AC
  loc_6B008D: FLdPr var_AC
  loc_6B0090: Formx.Menu.Visible = from_stack_1b
  loc_6B0095: FFree1Ad var_AC
  loc_6B0098: LitI2_Byte &HFF
  loc_6B009A: FLdPrThis
  loc_6B009B: VCallAd Control_ID_mnuForzarCierreConectividad
  loc_6B009E: FStAdFunc var_AC
  loc_6B00A1: FLdPr var_AC
  loc_6B00A4: Me.Visible = from_stack_1b
  loc_6B00A9: FFree1Ad var_AC
  loc_6B00AC: LitI2_Byte &HFF
  loc_6B00AE: FLdPrThis
  loc_6B00AF: VCallAd Control_ID_Cuenta_Liquido_Producto
  loc_6B00B2: FStAdFunc var_AC
  loc_6B00B5: FLdPr var_AC
  loc_6B00B8: Me.Visible = from_stack_1b
  loc_6B00BD: FFree1Ad var_AC
  loc_6B00C0: LitI2_Byte &HFF
  loc_6B00C2: FLdPrThis
  loc_6B00C3: VCallAd Control_ID_mnuOperacionesEspecialesInutil
  loc_6B00C6: FStAdFunc var_AC
  loc_6B00C9: FLdPr var_AC
  loc_6B00CC: Me.Visible = from_stack_1b
  loc_6B00D1: FFree1Ad var_AC
  loc_6B00D4: LitI2_Byte &HFF
  loc_6B00D6: FLdPrThis
  loc_6B00D7: VCallAd Control_ID_mnuRedXXI
  loc_6B00DA: FStAdFunc var_AC
  loc_6B00DD: FLdPr var_AC
  loc_6B00E0: Me.Visible = from_stack_1b
  loc_6B00E5: FFree1Ad var_AC
  loc_6B00E8: LitI2_Byte 0
  loc_6B00EA: FLdPrThis
  loc_6B00EB: VCallAd Control_ID_mnuCierresRed21Mensuales
  loc_6B00EE: FStAdFunc var_AC
  loc_6B00F1: FLdPr var_AC
  loc_6B00F4: Me.Visible = from_stack_1b
  loc_6B00F9: FFree1Ad var_AC
  loc_6B00FC: LitI2_Byte 0
  loc_6B00FE: FLdPrThis
  loc_6B00FF: VCallAd Control_ID_mnuExistecias
  loc_6B0102: FStAdFunc var_AC
  loc_6B0105: FLdPr var_AC
  loc_6B0108: Me.Visible = from_stack_1b
  loc_6B010D: FFree1Ad var_AC
  loc_6B0110: LitI2_Byte 0
  loc_6B0112: FLdPrThis
  loc_6B0113: VCallAd Control_ID_NotaComb
  loc_6B0116: FStAdFunc var_AC
  loc_6B0119: FLdPr var_AC
  loc_6B011C: Me.Visible = from_stack_1b
  loc_6B0121: FFree1Ad var_AC
  loc_6B0124: LitI2_Byte 0
  loc_6B0126: FLdPrThis
  loc_6B0127: VCallAd Control_ID_Comisiones
  loc_6B012A: FStAdFunc var_AC
  loc_6B012D: FLdPr var_AC
  loc_6B0130: Me.Visible = from_stack_1b
  loc_6B0135: FFree1Ad var_AC
  loc_6B0138: LitStr "CEM44.INI"
  loc_6B013B: FLdRfVar var_B4
  loc_6B013E: CStr2Ansi
  loc_6B013F: ILdRf var_B4
  loc_6B0142: LitI4 0
  loc_6B0147: LitStr "CENTRAL_TURNOFF_DATE"
  loc_6B014A: FLdRfVar var_B0
  loc_6B014D: CStr2Ansi
  loc_6B014E: ILdRf var_B0
  loc_6B0151: LitStr "GENERAL"
  loc_6B0154: FLdRfVar var_A8
  loc_6B0157: CStr2Ansi
  loc_6B0158: ILdRf var_A8
  loc_6B015B: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_6B0160: FStR4 var_B8
  loc_6B0163: SetLastSystemError
  loc_6B0164: ILdRf var_B8
  loc_6B0167: CVarI4
  loc_6B016B: FLdRfVar var_C8
  loc_6B016E: ImpAdCallFPR4  = Trim()
  loc_6B0173: FLdRfVar var_C8
  loc_6B0176: CStrVarTmp
  loc_6B0177: ImpAdStStr MemVar_74C6BC
  loc_6B017B: FFreeStr var_A8 = "": var_B0 = ""
  loc_6B0184: FFreeVar var_A4 = ""
  loc_6B018B: ImpAdLdI4 MemVar_74C6BC
  loc_6B018E: CR8Str
  loc_6B0190: LitI2_Byte 0
  loc_6B0192: CR8I2
  loc_6B0193: NeR8
  loc_6B0194: ImpAdLdI4 MemVar_74C6BC
  loc_6B0197: LitStr vbNullString
  loc_6B019A: NeStr
  loc_6B019C: AndI4
  loc_6B019D: BranchF loc_6B027A
  loc_6B01A0: ImpAdLdI4 MemVar_74C6BC
  loc_6B01A3: FnLenStr
  loc_6B01A4: LitI4 8
  loc_6B01A9: EqI4
  loc_6B01AA: BranchF loc_6B0277
  loc_6B01AD: LitVarI2 var_A4, 2
  loc_6B01B2: LitI4 7
  loc_6B01B7: ImpAdLdRf MemVar_74C6BC
  loc_6B01BA: CVarRef
  loc_6B01BF: FLdRfVar var_C8
  loc_6B01C2: ImpAdCallFPR4  = Mid(, , )
  loc_6B01C7: FLdRfVar var_C8
  loc_6B01CA: LitVarStr var_EC, "/"
  loc_6B01CF: ConcatVar var_FC
  loc_6B01D3: LitVarI2 var_12C, 2
  loc_6B01D8: LitI4 5
  loc_6B01DD: ImpAdLdRf MemVar_74C6BC
  loc_6B01E0: CVarRef
  loc_6B01E5: FLdRfVar var_13C
  loc_6B01E8: ImpAdCallFPR4  = Mid(, , )
  loc_6B01ED: FLdRfVar var_13C
  loc_6B01F0: ConcatVar var_14C
  loc_6B01F4: LitVarStr var_15C, "/"
  loc_6B01F9: ConcatVar var_16C
  loc_6B01FD: LitVarI2 var_19C, 4
  loc_6B0202: LitI4 1
  loc_6B0207: ImpAdLdRf MemVar_74C6BC
  loc_6B020A: CVarRef
  loc_6B020F: FLdRfVar var_1AC
  loc_6B0212: ImpAdCallFPR4  = Mid(, , )
  loc_6B0217: FLdRfVar var_1AC
  loc_6B021A: ConcatVar var_1BC
  loc_6B021E: CStrVarTmp
  loc_6B021F: FStStr var_CC
  loc_6B0222: FFreeVar var_A4 = "": var_C8 = "": var_12C = "": var_FC = "": var_13C = "": var_14C = "": var_19C = "": var_16C = "": var_1AC = ""
  loc_6B0239: FLdRfVar var_CC
  loc_6B023C: CVarRef
  loc_6B0241: ImpAdCallI2 IsDate()
  loc_6B0246: LitI2_Byte 0
  loc_6B0248: EqI2
  loc_6B0249: BranchF loc_6B024F
  loc_6B024C: Branch loc_6B027A
  loc_6B024F: ILdRf var_CC
  loc_6B0252: CDateStr
  loc_6B0254: CVarDate var_94
  loc_6B0258: HardType
  loc_6B0259: FLdRfVar var_A4
  loc_6B025C: ImpAdCallFPR4  = Date
  loc_6B0261: FLdRfVar var_A4
  loc_6B0264: LtVarBool
  loc_6B0266: FFree1Var var_A4 = ""
  loc_6B0269: BranchF loc_6B0274
  loc_6B026C: LitI2_Byte &HFF
  loc_6B026E: ImpAdStI2 MemVar_74C6B8
  loc_6B0271: Branch loc_6B0277
  loc_6B0274: Branch loc_6B027A
  loc_6B0277: Branch loc_6B0298
  loc_6B027A: LitI2_Byte 0
  loc_6B027C: ImpAdStI2 MemVar_74C6B8
  loc_6B027F: LitI2_Byte 0
  loc_6B0281: ImpAdLdRf MemVar_74C760
  loc_6B0284: NewIfNullPr Formx
  loc_6B0287: VCallAd Control_ID_PriceLevel
  loc_6B028A: FStAdFunc var_AC
  loc_6B028D: FLdPr var_AC
  loc_6B0290: Formx.Menu.Visible = from_stack_1b
  loc_6B0295: FFree1Ad var_AC
  loc_6B0298: LitI2_Byte 0
  loc_6B029A: FLdRfVar var_1D0
  loc_6B029D: LitI2_Byte 0
  loc_6B029F: ImpAdLdRf MemVar_74C760
  loc_6B02A2: NewIfNullPr Formx
  loc_6B02A5: VCallAd Control_ID_menu
  loc_6B02A8: FStAdFunc var_AC
  loc_6B02AB: FLdPr var_AC
  loc_6B02AE: Set from_stack_2 = Formx(from_stack_1)
  loc_6B02B3: FLdPr var_1D0
  loc_6B02B6: Me.Visible = from_stack_1b
  loc_6B02BB: FFreeAd var_AC = ""
  loc_6B02C2: LitI2_Byte 0
  loc_6B02C4: ImpAdLdRf MemVar_74C760
  loc_6B02C7: NewIfNullPr Formx
  loc_6B02CA: VCallAd Control_ID_TarjetadeCredito
  loc_6B02CD: FStAdFunc var_AC
  loc_6B02D0: FLdPr var_AC
  loc_6B02D3: Formx.Menu.Visible = from_stack_1b
  loc_6B02D8: FFree1Ad var_AC
  loc_6B02DB: LitI2_Byte &HFF
  loc_6B02DD: ImpAdLdRf MemVar_74C760
  loc_6B02E0: NewIfNullPr Formx
  loc_6B02E3: VCallAd Control_ID_MnuLogUsuarios
  loc_6B02E6: FStAdFunc var_AC
  loc_6B02E9: FLdPr var_AC
  loc_6B02EC: Formx.Menu.Visible = from_stack_1b
  loc_6B02F1: FFree1Ad var_AC
  loc_6B02F4: LitI2_Byte &HFF
  loc_6B02F6: ImpAdLdRf MemVar_74C760
  loc_6B02F9: NewIfNullPr Formx
  loc_6B02FC: VCallAd Control_ID_mnuComisiones
  loc_6B02FF: FStAdFunc var_AC
  loc_6B0302: FLdPr var_AC
  loc_6B0305: Formx.Menu.Visible = from_stack_1b
  loc_6B030A: FFree1Ad var_AC
  loc_6B030D: LitVarI2 var_A4, 3
  loc_6B0312: LitI4 1
  loc_6B0317: ImpAdLdRf MemVar_74BF90
  loc_6B031A: CVarRef
  loc_6B031F: FLdRfVar var_C8
  loc_6B0322: ImpAdCallFPR4  = Mid(, , )
  loc_6B0327: FLdRfVar var_C8
  loc_6B032A: LitVarStr var_EC, "\\."
  loc_6B032F: HardType
  loc_6B0330: EqVar var_FC
  loc_6B0334: NotVar var_12C
  loc_6B0338: CBoolVarNull
  loc_6B033A: FFreeVar var_A4 = ""
  loc_6B0341: BranchF loc_6B037B
  loc_6B0344: FLdPr Me
  loc_6B0347: MemLdUI1 global_128
  loc_6B034B: CI2UI1
  loc_6B034D: LitI2_Byte 1
  loc_6B034F: EqI2
  loc_6B0350: NotI4
  loc_6B0351: BranchF loc_6B0378
  loc_6B0354: LitI2_Byte &HFF
  loc_6B0356: FLdPrThis
  loc_6B0357: VCallAd Control_ID_mnuAdministracionRemota
  loc_6B035A: FStAdFunc var_AC
  loc_6B035D: FLdPr var_AC
  loc_6B0360: Me.Visible = from_stack_1b
  loc_6B0365: FFree1Ad var_AC
  loc_6B0368: Call LoadRemoteConsoleConfiguration()
  loc_6B036D: LitI2_Byte 1
  loc_6B036F: CUI1I2
  loc_6B0371: FLdPr Me
  loc_6B0374: MemStUI1
  loc_6B0378: Branch loc_6B039A
  loc_6B037B: LitI2_Byte 0
  loc_6B037D: CUI1I2
  loc_6B037F: FLdPr Me
  loc_6B0382: MemStUI1
  loc_6B0386: LitI2_Byte 0
  loc_6B0388: FLdPrThis
  loc_6B0389: VCallAd Control_ID_mnuAdministracionRemota
  loc_6B038C: FStAdFunc var_AC
  loc_6B038F: FLdPr var_AC
  loc_6B0392: Me.Visible = from_stack_1b
  loc_6B0397: FFree1Ad var_AC
  loc_6B039A: FLdRfVar var_1D2
  loc_6B039D: ImpAdLdRf MemVar_74C6D8
  loc_6B03A0: NewIfNullPr CCEMLicence
  loc_6B03A8: FLdI2 var_1D2
  loc_6B03AB: FLdRfVar var_1D4
  loc_6B03AE: ImpAdLdRf MemVar_74C6D8
  loc_6B03B1: NewIfNullPr CCEMLicence
  loc_6B03B4: Set from_stack_2 = CCEMLicence(from_stack_1)
  loc_6B03B9: FLdI2 var_1D4
  loc_6B03BC: AndI4
  loc_6B03BD: BranchF loc_6B03CE
  loc_6B03C0: ImpAdLdRf MemVar_74C6DC
  loc_6B03C3: NewIfNullPr CommandConsolelicence
  loc_6B03C6: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6B03CB: Branch loc_6B04BA
  loc_6B03CE: LitI4 &H2D
  loc_6B03D3: ImpAdLdRf MemVar_74A170
  loc_6B03D6: Ary1LdI2
  loc_6B03D7: NotI4
  loc_6B03D8: CVarBoolI2 var_10C
  loc_6B03DC: LitVarI2 var_A4, 3
  loc_6B03E1: LitI4 1
  loc_6B03E6: ImpAdLdRf MemVar_74BF90
  loc_6B03E9: CVarRef
  loc_6B03EE: FLdRfVar var_C8
  loc_6B03F1: ImpAdCallFPR4  = Mid(, , )
  loc_6B03F6: FLdRfVar var_C8
  loc_6B03F9: LitVarStr var_EC, "\\."
  loc_6B03FE: HardType
  loc_6B03FF: EqVar var_FC
  loc_6B0403: NotVar var_12C
  loc_6B0407: AndVar var_13C
  loc_6B040B: CBoolVarNull
  loc_6B040D: FFreeVar var_A4 = "": var_C8 = ""
  loc_6B0416: BranchF loc_6B0430
  loc_6B0419: LitI2_Byte 0
  loc_6B041B: FLdPrThis
  loc_6B041C: VCallAd Control_ID_REPORTS
  loc_6B041F: FStAdFunc var_AC
  loc_6B0422: FLdPr var_AC
  loc_6B0425: Me.Visible = from_stack_1b
  loc_6B042A: FFree1Ad var_AC
  loc_6B042D: Branch loc_6B0444
  loc_6B0430: LitI2_Byte &HFF
  loc_6B0432: FLdPrThis
  loc_6B0433: VCallAd Control_ID_REPORTS
  loc_6B0436: FStAdFunc var_AC
  loc_6B0439: FLdPr var_AC
  loc_6B043C: Me.Visible = from_stack_1b
  loc_6B0441: FFree1Ad var_AC
  loc_6B0444: LitI4 &H1D
  loc_6B0449: ImpAdLdRf MemVar_74A170
  loc_6B044C: Ary1LdI2
  loc_6B044D: NotI4
  loc_6B044E: CVarBoolI2 var_10C
  loc_6B0452: LitVarI2 var_A4, 3
  loc_6B0457: LitI4 1
  loc_6B045C: ImpAdLdRf MemVar_74BF90
  loc_6B045F: CVarRef
  loc_6B0464: FLdRfVar var_C8
  loc_6B0467: ImpAdCallFPR4  = Mid(, , )
  loc_6B046C: FLdRfVar var_C8
  loc_6B046F: LitVarStr var_EC, "\\."
  loc_6B0474: HardType
  loc_6B0475: EqVar var_FC
  loc_6B0479: NotVar var_12C
  loc_6B047D: AndVar var_13C
  loc_6B0481: CBoolVarNull
  loc_6B0483: FFreeVar var_A4 = "": var_C8 = ""
  loc_6B048C: BranchF loc_6B04A6
  loc_6B048F: LitI2_Byte 0
  loc_6B0491: FLdPrThis
  loc_6B0492: VCallAd Control_ID_mnuImpresionReportes
  loc_6B0495: FStAdFunc var_AC
  loc_6B0498: FLdPr var_AC
  loc_6B049B: Me.Visible = from_stack_1b
  loc_6B04A0: FFree1Ad var_AC
  loc_6B04A3: Branch loc_6B04BA
  loc_6B04A6: LitI2_Byte &HFF
  loc_6B04A8: FLdPrThis
  loc_6B04A9: VCallAd Control_ID_mnuImpresionReportes
  loc_6B04AC: FStAdFunc var_AC
  loc_6B04AF: FLdPr var_AC
  loc_6B04B2: Me.Visible = from_stack_1b
  loc_6B04B7: FFree1Ad var_AC
  loc_6B04BA: LitVarStr var_94, "WINDIR"
  loc_6B04BF: FStVarCopyObj var_A4
  loc_6B04C2: FLdRfVar var_A4
  loc_6B04C5: FLdRfVar var_C8
  loc_6B04C8: ImpAdCallFPR4  = Environ()
  loc_6B04CD: FLdRfVar var_C8
  loc_6B04D0: LitVarStr var_DC, "\cem44.ini"
  loc_6B04D5: ConcatVar var_FC
  loc_6B04D9: CStrVarTmp
  loc_6B04DA: PopTmpLdAdStr
  loc_6B04DE: LitStr "CERRAR_CONSOLA"
  loc_6B04E1: FStStrCopy var_B0
  loc_6B04E4: FLdRfVar var_B0
  loc_6B04E7: LitStr "GENERAL"
  loc_6B04EA: FStStrCopy var_A8
  loc_6B04ED: FLdRfVar var_A8
  loc_6B04F0: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6B04F5: CVarStr var_12C
  loc_6B04F8: FLdRfVar var_13C
  loc_6B04FB: ImpAdCallFPR4  = Trim()
  loc_6B0500: FLdRfVar var_13C
  loc_6B0503: LitVarStr var_EC, "1"
  loc_6B0508: HardType
  loc_6B0509: EqVarBool
  loc_6B050B: FFreeStr var_A8 = "": var_B0 = ""
  loc_6B0514: FFreeVar var_A4 = "": var_C8 = "": var_FC = "": var_12C = ""
  loc_6B0521: BranchF loc_6B053B
  loc_6B0524: LitI2_Byte &HFF
  loc_6B0526: FLdPrThis
  loc_6B0527: VCallAd Control_ID_mnuCerrarConsola
  loc_6B052A: FStAdFunc var_AC
  loc_6B052D: FLdPr var_AC
  loc_6B0530: Me.Visible = from_stack_1b
  loc_6B0535: FFree1Ad var_AC
  loc_6B0538: Branch loc_6B054F
  loc_6B053B: LitI2_Byte 0
  loc_6B053D: FLdPrThis
  loc_6B053E: VCallAd Control_ID_mnuCerrarConsola
  loc_6B0541: FStAdFunc var_AC
  loc_6B0544: FLdPr var_AC
  loc_6B0547: Me.Visible = from_stack_1b
  loc_6B054C: FFree1Ad var_AC
  loc_6B054F: ImpAdLdUI1
  loc_6B0553: CI2UI1
  loc_6B0555: LitI2_Byte 4
  loc_6B0557: EqI2
  loc_6B0558: ImpAdLdUI1
  loc_6B055C: CI2UI1
  loc_6B055E: LitI2_Byte 5
  loc_6B0560: EqI2
  loc_6B0561: OrI4
  loc_6B0562: BranchF loc_6B057C
  loc_6B0565: LitI2_Byte &HFF
  loc_6B0567: FLdPrThis
  loc_6B0568: VCallAd Control_ID_mnuDesity
  loc_6B056B: FStAdFunc var_AC
  loc_6B056E: FLdPr var_AC
  loc_6B0571: Me.Visible = from_stack_1b
  loc_6B0576: FFree1Ad var_AC
  loc_6B0579: Branch loc_6B0590
  loc_6B057C: LitI2_Byte 0
  loc_6B057E: FLdPrThis
  loc_6B057F: VCallAd Control_ID_mnuDesity
  loc_6B0582: FStAdFunc var_AC
  loc_6B0585: FLdPr var_AC
  loc_6B0588: Me.Visible = from_stack_1b
  loc_6B058D: FFree1Ad var_AC
  loc_6B0590: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_6B0595: FLdRfVar var_1D2
  loc_6B0598: LitVarI2 var_A4, 1
  loc_6B059D: LitStr "FormLoad"
  loc_6B05A0: ImpAdLdPr unk_4608E6
  loc_6B05A3: MemLdPr global_0
  loc_6B05A6: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6B05AB: FLdI2 var_1D2
  loc_6B05AE: NotI4
  loc_6B05AF: FFree1Var var_A4 = ""
  loc_6B05B2: BranchF loc_6B05CC
  loc_6B05B5: LitI2_Byte 0
  loc_6B05B7: FLdPrThis
  loc_6B05B8: VCallAd Control_ID_RepDelta
  loc_6B05BB: FStAdFunc var_AC
  loc_6B05BE: FLdPr var_AC
  loc_6B05C1: Me.Visible = from_stack_1b
  loc_6B05C6: FFree1Ad var_AC
  loc_6B05C9: Branch loc_6B05E0
  loc_6B05CC: LitI2_Byte &HFF
  loc_6B05CE: FLdPrThis
  loc_6B05CF: VCallAd Control_ID_RepDelta
  loc_6B05D2: FStAdFunc var_AC
  loc_6B05D5: FLdPr var_AC
  loc_6B05D8: Me.Visible = from_stack_1b
  loc_6B05DD: FFree1Ad var_AC
  loc_6B05E0: ImpAdCallFPR4 Proc_167_12_5DCCA4()
  loc_6B05E5: FLdRfVar var_1D2
  loc_6B05E8: LitVarI2 var_A4, 1
  loc_6B05ED: LitStr "Activate"
  loc_6B05F0: ImpAdLdPr unk_4608E6
  loc_6B05F3: MemLdPr global_0
  loc_6B05F6: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6B05FB: FLdI2 var_1D2
  loc_6B05FE: NotI4
  loc_6B05FF: FFree1Var var_A4 = ""
  loc_6B0602: BranchF loc_6B061C
  loc_6B0605: LitI2_Byte 0
  loc_6B0607: FLdPrThis
  loc_6B0608: VCallAd Control_ID_mnuABM
  loc_6B060B: FStAdFunc var_AC
  loc_6B060E: FLdPr var_AC
  loc_6B0611: Me.Visible = from_stack_1b
  loc_6B0616: FFree1Ad var_AC
  loc_6B0619: Branch loc_6B0630
  loc_6B061C: LitI2_Byte &HFF
  loc_6B061E: FLdPrThis
  loc_6B061F: VCallAd Control_ID_mnuABM
  loc_6B0622: FStAdFunc var_AC
  loc_6B0625: FLdPr var_AC
  loc_6B0628: Me.Visible = from_stack_1b
  loc_6B062D: FFree1Ad var_AC
  loc_6B0630: ExitProcHresult
End Function

Private Function Proc_162_198_70C718() '70C718
  'Data Table: 460894
  loc_70B124: FLdRfVar var_1D4
  loc_70B127: LitVar_Missing var_1D0
  loc_70B12A: LitVar_Missing var_1B0
  loc_70B12D: LitVar_Missing var_190
  loc_70B130: LitVar_Missing var_170
  loc_70B133: LitVar_Missing var_150
  loc_70B136: LitVar_Missing var_130
  loc_70B139: LitVar_Missing var_110
  loc_70B13C: LitVar_Missing var_F0
  loc_70B13F: LitVar_Missing var_D0
  loc_70B142: LitVar_Missing var_B0
  loc_70B145: LitStr "Cierre de dia en proceso"
  loc_70B148: FStStrCopy var_90
  loc_70B14B: FLdRfVar var_90
  loc_70B14E: LitI4 &H4B
  loc_70B153: PopTmpLdAdStr var_8C
  loc_70B156: LitI2_Byte &HA
  loc_70B158: PopTmpLdAd2 var_86
  loc_70B15B: ImpAdLdRf MemVar_74C7D0
  loc_70B15E: NewIfNullPr clsMsg
  loc_70B161: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B166: ILdRf var_1D4
  loc_70B169: FLdPr Me
  loc_70B16C: MemStStrCopy
  loc_70B170: FFreeStr var_90 = ""
  loc_70B177: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B18E: FLdRfVar var_1D4
  loc_70B191: LitVar_Missing var_1D0
  loc_70B194: LitVar_Missing var_1B0
  loc_70B197: LitVar_Missing var_190
  loc_70B19A: LitVar_Missing var_170
  loc_70B19D: LitVar_Missing var_150
  loc_70B1A0: LitVar_Missing var_130
  loc_70B1A3: LitVar_Missing var_110
  loc_70B1A6: LitVar_Missing var_F0
  loc_70B1A9: LitVar_Missing var_D0
  loc_70B1AC: LitVar_Missing var_B0
  loc_70B1AF: LitStr "El día no contiene ventas"
  loc_70B1B2: FStStrCopy var_90
  loc_70B1B5: FLdRfVar var_90
  loc_70B1B8: LitI4 &H4C
  loc_70B1BD: PopTmpLdAdStr var_8C
  loc_70B1C0: LitI2_Byte &HA
  loc_70B1C2: PopTmpLdAd2 var_86
  loc_70B1C5: ImpAdLdRf MemVar_74C7D0
  loc_70B1C8: NewIfNullPr clsMsg
  loc_70B1CB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B1D0: ILdRf var_1D4
  loc_70B1D3: FLdPr Me
  loc_70B1D6: MemStStrCopy
  loc_70B1DA: FFreeStr var_90 = ""
  loc_70B1E1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B1F8: FLdRfVar var_1D4
  loc_70B1FB: LitVar_Missing var_1D0
  loc_70B1FE: LitVar_Missing var_1B0
  loc_70B201: LitVar_Missing var_190
  loc_70B204: LitVar_Missing var_170
  loc_70B207: LitVar_Missing var_150
  loc_70B20A: LitVar_Missing var_130
  loc_70B20D: LitVar_Missing var_110
  loc_70B210: LitVar_Missing var_F0
  loc_70B213: LitVar_Missing var_D0
  loc_70B216: LitVar_Missing var_B0
  loc_70B219: LitStr "Introduzca el formulario blanco para emitir el reporte de cierre y presione ENTER"
  loc_70B21C: FStStrCopy var_90
  loc_70B21F: FLdRfVar var_90
  loc_70B222: LitI4 &H5F
  loc_70B227: PopTmpLdAdStr var_8C
  loc_70B22A: LitI2_Byte &HA
  loc_70B22C: PopTmpLdAd2 var_86
  loc_70B22F: ImpAdLdRf MemVar_74C7D0
  loc_70B232: NewIfNullPr clsMsg
  loc_70B235: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B23A: ILdRf var_1D4
  loc_70B23D: FLdPr Me
  loc_70B240: MemStStrCopy
  loc_70B244: FFreeStr var_90 = ""
  loc_70B24B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B262: FLdRfVar var_1D4
  loc_70B265: LitVar_Missing var_1D0
  loc_70B268: LitVar_Missing var_1B0
  loc_70B26B: LitVar_Missing var_190
  loc_70B26E: LitVar_Missing var_170
  loc_70B271: LitVar_Missing var_150
  loc_70B274: LitVar_Missing var_130
  loc_70B277: LitVar_Missing var_110
  loc_70B27A: LitVar_Missing var_F0
  loc_70B27D: LitVar_Missing var_D0
  loc_70B280: LitVar_Missing var_B0
  loc_70B283: LitStr "Impresion en proceso"
  loc_70B286: FStStrCopy var_90
  loc_70B289: FLdRfVar var_90
  loc_70B28C: LitI4 &H4E
  loc_70B291: PopTmpLdAdStr var_8C
  loc_70B294: LitI2_Byte &HA
  loc_70B296: PopTmpLdAd2 var_86
  loc_70B299: ImpAdLdRf MemVar_74C7D0
  loc_70B29C: NewIfNullPr clsMsg
  loc_70B29F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B2A4: ILdRf var_1D4
  loc_70B2A7: FLdPr Me
  loc_70B2AA: MemStStrCopy
  loc_70B2AE: FFreeStr var_90 = ""
  loc_70B2B5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B2CC: FLdRfVar var_1D4
  loc_70B2CF: LitVar_Missing var_1D0
  loc_70B2D2: LitVar_Missing var_1B0
  loc_70B2D5: LitVar_Missing var_190
  loc_70B2D8: LitVar_Missing var_170
  loc_70B2DB: LitVar_Missing var_150
  loc_70B2DE: LitVar_Missing var_130
  loc_70B2E1: LitVar_Missing var_110
  loc_70B2E4: LitVar_Missing var_F0
  loc_70B2E7: LitVar_Missing var_D0
  loc_70B2EA: LitVar_Missing var_B0
  loc_70B2ED: LitStr "Esta seguro de forzar Cierre Red XXI?"
  loc_70B2F0: FStStrCopy var_90
  loc_70B2F3: FLdRfVar var_90
  loc_70B2F6: LitI4 &H67
  loc_70B2FB: PopTmpLdAdStr var_8C
  loc_70B2FE: LitI2_Byte &HA
  loc_70B300: PopTmpLdAd2 var_86
  loc_70B303: ImpAdLdRf MemVar_74C7D0
  loc_70B306: NewIfNullPr clsMsg
  loc_70B309: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B30E: ILdRf var_1D4
  loc_70B311: FLdPr Me
  loc_70B314: MemStStrCopy
  loc_70B318: FFreeStr var_90 = ""
  loc_70B31F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B336: FLdRfVar var_1D4
  loc_70B339: LitVar_Missing var_1D0
  loc_70B33C: LitVar_Missing var_1B0
  loc_70B33F: LitVar_Missing var_190
  loc_70B342: LitVar_Missing var_170
  loc_70B345: LitVar_Missing var_150
  loc_70B348: LitVar_Missing var_130
  loc_70B34B: LitVar_Missing var_110
  loc_70B34E: LitVar_Missing var_F0
  loc_70B351: LitVar_Missing var_D0
  loc_70B354: LitVar_Missing var_B0
  loc_70B357: LitStr "Forzar Cierre Red XXI"
  loc_70B35A: FStStrCopy var_90
  loc_70B35D: FLdRfVar var_90
  loc_70B360: LitI4 &H68
  loc_70B365: PopTmpLdAdStr var_8C
  loc_70B368: LitI2_Byte &HA
  loc_70B36A: PopTmpLdAd2 var_86
  loc_70B36D: ImpAdLdRf MemVar_74C7D0
  loc_70B370: NewIfNullPr clsMsg
  loc_70B373: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B378: ILdRf var_1D4
  loc_70B37B: FLdPr Me
  loc_70B37E: MemStStrCopy
  loc_70B382: FFreeStr var_90 = ""
  loc_70B389: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B3A0: FLdRfVar var_1D4
  loc_70B3A3: LitVar_Missing var_1D0
  loc_70B3A6: LitVar_Missing var_1B0
  loc_70B3A9: LitVar_Missing var_190
  loc_70B3AC: LitVar_Missing var_170
  loc_70B3AF: LitVar_Missing var_150
  loc_70B3B2: LitVar_Missing var_130
  loc_70B3B5: LitVar_Missing var_110
  loc_70B3B8: LitVar_Missing var_F0
  loc_70B3BB: LitVar_Missing var_D0
  loc_70B3BE: LitVar_Missing var_B0
  loc_70B3C1: LitStr "Se han generado exitósamente los archivos de configuración "
  loc_70B3C4: FStStrCopy var_90
  loc_70B3C7: FLdRfVar var_90
  loc_70B3CA: LitI4 &H69
  loc_70B3CF: PopTmpLdAdStr var_8C
  loc_70B3D2: LitI2_Byte &HA
  loc_70B3D4: PopTmpLdAd2 var_86
  loc_70B3D7: ImpAdLdRf MemVar_74C7D0
  loc_70B3DA: NewIfNullPr clsMsg
  loc_70B3DD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B3E2: ILdRf var_1D4
  loc_70B3E5: FLdPr Me
  loc_70B3E8: MemStStrCopy
  loc_70B3EC: FFreeStr var_90 = ""
  loc_70B3F3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B40A: FLdRfVar var_1D4
  loc_70B40D: LitVar_Missing var_1D0
  loc_70B410: LitVar_Missing var_1B0
  loc_70B413: LitVar_Missing var_190
  loc_70B416: LitVar_Missing var_170
  loc_70B419: LitVar_Missing var_150
  loc_70B41C: LitVar_Missing var_130
  loc_70B41F: LitVar_Missing var_110
  loc_70B422: LitVar_Missing var_F0
  loc_70B425: LitVar_Missing var_D0
  loc_70B428: LitVar_Missing var_B0
  loc_70B42B: LitStr "para Administración de Consignados."
  loc_70B42E: FStStrCopy var_90
  loc_70B431: FLdRfVar var_90
  loc_70B434: LitI4 &H6A
  loc_70B439: PopTmpLdAdStr var_8C
  loc_70B43C: LitI2_Byte &HA
  loc_70B43E: PopTmpLdAd2 var_86
  loc_70B441: ImpAdLdRf MemVar_74C7D0
  loc_70B444: NewIfNullPr clsMsg
  loc_70B447: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B44C: ILdRf var_1D4
  loc_70B44F: FLdPr Me
  loc_70B452: MemStStrCopy
  loc_70B456: FFreeStr var_90 = ""
  loc_70B45D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B474: FLdRfVar var_1D4
  loc_70B477: LitVar_Missing var_1D0
  loc_70B47A: LitVar_Missing var_1B0
  loc_70B47D: LitVar_Missing var_190
  loc_70B480: LitVar_Missing var_170
  loc_70B483: LitVar_Missing var_150
  loc_70B486: LitVar_Missing var_130
  loc_70B489: LitVar_Missing var_110
  loc_70B48C: LitVar_Missing var_F0
  loc_70B48F: LitVar_Missing var_D0
  loc_70B492: LitVar_Missing var_B0
  loc_70B495: LitStr "No esta configurada la consola"
  loc_70B498: FStStrCopy var_90
  loc_70B49B: FLdRfVar var_90
  loc_70B49E: LitI4 &H6A
  loc_70B4A3: PopTmpLdAdStr var_8C
  loc_70B4A6: LitI2_Byte &HA
  loc_70B4A8: PopTmpLdAd2 var_86
  loc_70B4AB: ImpAdLdRf MemVar_74C7D0
  loc_70B4AE: NewIfNullPr clsMsg
  loc_70B4B1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B4B6: ILdRf var_1D4
  loc_70B4B9: FLdPr Me
  loc_70B4BC: MemStStrCopy
  loc_70B4C0: FFreeStr var_90 = ""
  loc_70B4C7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B4DE: FLdRfVar var_1D4
  loc_70B4E1: LitVar_Missing var_1D0
  loc_70B4E4: LitVar_Missing var_1B0
  loc_70B4E7: LitVar_Missing var_190
  loc_70B4EA: LitVar_Missing var_170
  loc_70B4ED: LitVar_Missing var_150
  loc_70B4F0: LitVar_Missing var_130
  loc_70B4F3: LitVar_Missing var_110
  loc_70B4F6: LitVar_Missing var_F0
  loc_70B4F9: LitVar_Missing var_D0
  loc_70B4FC: LitVar_Missing var_B0
  loc_70B4FF: LitStr "Impresion de Reporte de turno en proceso"
  loc_70B502: FStStrCopy var_90
  loc_70B505: FLdRfVar var_90
  loc_70B508: LitI4 &H63
  loc_70B50D: PopTmpLdAdStr var_8C
  loc_70B510: LitI2_Byte &HA
  loc_70B512: PopTmpLdAd2 var_86
  loc_70B515: ImpAdLdRf MemVar_74C7D0
  loc_70B518: NewIfNullPr clsMsg
  loc_70B51B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B520: ILdRf var_1D4
  loc_70B523: FLdPr Me
  loc_70B526: MemStStrCopy
  loc_70B52A: FFreeStr var_90 = ""
  loc_70B531: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B548: FLdRfVar var_1D4
  loc_70B54B: LitVar_Missing var_1D0
  loc_70B54E: LitVar_Missing var_1B0
  loc_70B551: LitVar_Missing var_190
  loc_70B554: LitVar_Missing var_170
  loc_70B557: LitVar_Missing var_150
  loc_70B55A: LitVar_Missing var_130
  loc_70B55D: LitVar_Missing var_110
  loc_70B560: LitVar_Missing var_F0
  loc_70B563: LitVar_Missing var_D0
  loc_70B566: LitVar_Missing var_B0
  loc_70B569: LitStr "Impresion de Reporte de dia en proceso"
  loc_70B56C: FStStrCopy var_90
  loc_70B56F: FLdRfVar var_90
  loc_70B572: LitI4 &H65
  loc_70B577: PopTmpLdAdStr var_8C
  loc_70B57A: LitI2_Byte &HA
  loc_70B57C: PopTmpLdAd2 var_86
  loc_70B57F: ImpAdLdRf MemVar_74C7D0
  loc_70B582: NewIfNullPr clsMsg
  loc_70B585: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B58A: ILdRf var_1D4
  loc_70B58D: FLdPr Me
  loc_70B590: MemStStrCopy
  loc_70B594: FFreeStr var_90 = ""
  loc_70B59B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B5B2: FLdRfVar var_1D4
  loc_70B5B5: LitVar_Missing var_1D0
  loc_70B5B8: LitVar_Missing var_1B0
  loc_70B5BB: LitVar_Missing var_190
  loc_70B5BE: LitVar_Missing var_170
  loc_70B5C1: LitVar_Missing var_150
  loc_70B5C4: LitVar_Missing var_130
  loc_70B5C7: LitVar_Missing var_110
  loc_70B5CA: LitVar_Missing var_F0
  loc_70B5CD: LitVar_Missing var_D0
  loc_70B5D0: LitVar_Missing var_B0
  loc_70B5D3: LitStr "Impresion de Reporte de Mes en proceso"
  loc_70B5D6: FStStrCopy var_90
  loc_70B5D9: FLdRfVar var_90
  loc_70B5DC: LitI4 &H5D
  loc_70B5E1: PopTmpLdAdStr var_8C
  loc_70B5E4: LitI2_Byte &HA
  loc_70B5E6: PopTmpLdAd2 var_86
  loc_70B5E9: ImpAdLdRf MemVar_74C7D0
  loc_70B5EC: NewIfNullPr clsMsg
  loc_70B5EF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B5F4: ILdRf var_1D4
  loc_70B5F7: FLdPr Me
  loc_70B5FA: MemStStrCopy
  loc_70B5FE: FFreeStr var_90 = ""
  loc_70B605: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B61C: FLdRfVar var_1D4
  loc_70B61F: LitVar_Missing var_1D0
  loc_70B622: LitVar_Missing var_1B0
  loc_70B625: LitVar_Missing var_190
  loc_70B628: LitVar_Missing var_170
  loc_70B62B: LitVar_Missing var_150
  loc_70B62E: LitVar_Missing var_130
  loc_70B631: LitVar_Missing var_110
  loc_70B634: LitVar_Missing var_F0
  loc_70B637: LitVar_Missing var_D0
  loc_70B63A: LitVar_Missing var_B0
  loc_70B63D: LitStr "CEM-44 Fuera de Servicio"
  loc_70B640: FStStrCopy var_90
  loc_70B643: FLdRfVar var_90
  loc_70B646: LitI4 &H6B
  loc_70B64B: PopTmpLdAdStr var_8C
  loc_70B64E: LitI2_Byte &HA
  loc_70B650: PopTmpLdAd2 var_86
  loc_70B653: ImpAdLdRf MemVar_74C7D0
  loc_70B656: NewIfNullPr clsMsg
  loc_70B659: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B65E: ILdRf var_1D4
  loc_70B661: FLdPr Me
  loc_70B664: MemStStrCopy
  loc_70B668: FFreeStr var_90 = ""
  loc_70B66F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B686: FLdRfVar var_1D4
  loc_70B689: LitVar_Missing var_1D0
  loc_70B68C: LitVar_Missing var_1B0
  loc_70B68F: LitVar_Missing var_190
  loc_70B692: LitVar_Missing var_170
  loc_70B695: LitVar_Missing var_150
  loc_70B698: LitVar_Missing var_130
  loc_70B69B: LitVar_Missing var_110
  loc_70B69E: LitVar_Missing var_F0
  loc_70B6A1: LitVar_Missing var_D0
  loc_70B6A4: LitVar_Missing var_B0
  loc_70B6A7: LitStr "El servicio CEM - 44 no se encuentra en servicio, la configuracion no puede ser leida"
  loc_70B6AA: FStStrCopy var_90
  loc_70B6AD: FLdRfVar var_90
  loc_70B6B0: LitI4 &H6C
  loc_70B6B5: PopTmpLdAdStr var_8C
  loc_70B6B8: LitI2_Byte &HA
  loc_70B6BA: PopTmpLdAd2 var_86
  loc_70B6BD: ImpAdLdRf MemVar_74C7D0
  loc_70B6C0: NewIfNullPr clsMsg
  loc_70B6C3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B6C8: ILdRf var_1D4
  loc_70B6CB: FLdPr Me
  loc_70B6CE: MemStStrCopy
  loc_70B6D2: FFreeStr var_90 = ""
  loc_70B6D9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B6F0: FLdRfVar var_1D4
  loc_70B6F3: LitVar_Missing var_1D0
  loc_70B6F6: LitVar_Missing var_1B0
  loc_70B6F9: LitVar_Missing var_190
  loc_70B6FC: LitVar_Missing var_170
  loc_70B6FF: LitVar_Missing var_150
  loc_70B702: LitVar_Missing var_130
  loc_70B705: LitVar_Missing var_110
  loc_70B708: LitVar_Missing var_F0
  loc_70B70B: LitVar_Missing var_D0
  loc_70B70E: LitVar_Missing var_B0
  loc_70B711: LitStr "Hubo un cambio en las impresoras seleccionadas para la impresion de ticket, vuelva configurar las impresoras por favor."
  loc_70B714: FStStrCopy var_90
  loc_70B717: FLdRfVar var_90
  loc_70B71A: LitI4 &H73
  loc_70B71F: PopTmpLdAdStr var_8C
  loc_70B722: LitI2_Byte &HA
  loc_70B724: PopTmpLdAd2 var_86
  loc_70B727: ImpAdLdRf MemVar_74C7D0
  loc_70B72A: NewIfNullPr clsMsg
  loc_70B72D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B732: ILdRf var_1D4
  loc_70B735: FLdPr Me
  loc_70B738: MemStStrCopy
  loc_70B73C: FFreeStr var_90 = ""
  loc_70B743: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B75A: FLdRfVar var_1D4
  loc_70B75D: LitVar_Missing var_1D0
  loc_70B760: LitVar_Missing var_1B0
  loc_70B763: LitVar_Missing var_190
  loc_70B766: LitVar_Missing var_170
  loc_70B769: LitVar_Missing var_150
  loc_70B76C: LitVar_Missing var_130
  loc_70B76F: LitVar_Missing var_110
  loc_70B772: LitVar_Missing var_F0
  loc_70B775: LitVar_Missing var_D0
  loc_70B778: LitVar_Missing var_B0
  loc_70B77B: LitStr "Impresion de tickets"
  loc_70B77E: FStStrCopy var_90
  loc_70B781: FLdRfVar var_90
  loc_70B784: LitI4 &H74
  loc_70B789: PopTmpLdAdStr var_8C
  loc_70B78C: LitI2_Byte &HA
  loc_70B78E: PopTmpLdAd2 var_86
  loc_70B791: ImpAdLdRf MemVar_74C7D0
  loc_70B794: NewIfNullPr clsMsg
  loc_70B797: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B79C: ILdRf var_1D4
  loc_70B79F: FLdPr Me
  loc_70B7A2: MemStStrCopy
  loc_70B7A6: FFreeStr var_90 = ""
  loc_70B7AD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B7C4: FLdRfVar var_1D4
  loc_70B7C7: LitVar_Missing var_1D0
  loc_70B7CA: LitVar_Missing var_1B0
  loc_70B7CD: LitVar_Missing var_190
  loc_70B7D0: LitVar_Missing var_170
  loc_70B7D3: LitVar_Missing var_150
  loc_70B7D6: LitVar_Missing var_130
  loc_70B7D9: LitVar_Missing var_110
  loc_70B7DC: LitVar_Missing var_F0
  loc_70B7DF: LitVar_Missing var_D0
  loc_70B7E2: LitVar_Missing var_B0
  loc_70B7E5: LitStr "No existen impresoras instaladas en el sistema"
  loc_70B7E8: FStStrCopy var_90
  loc_70B7EB: FLdRfVar var_90
  loc_70B7EE: LitI4 &H75
  loc_70B7F3: PopTmpLdAdStr var_8C
  loc_70B7F6: LitI2_Byte &HA
  loc_70B7F8: PopTmpLdAd2 var_86
  loc_70B7FB: ImpAdLdRf MemVar_74C7D0
  loc_70B7FE: NewIfNullPr clsMsg
  loc_70B801: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B806: ILdRf var_1D4
  loc_70B809: FLdPr Me
  loc_70B80C: MemStStrCopy
  loc_70B810: FFreeStr var_90 = ""
  loc_70B817: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B82E: FLdRfVar var_1D4
  loc_70B831: LitVar_Missing var_1D0
  loc_70B834: LitVar_Missing var_1B0
  loc_70B837: LitVar_Missing var_190
  loc_70B83A: LitVar_Missing var_170
  loc_70B83D: LitVar_Missing var_150
  loc_70B840: LitVar_Missing var_130
  loc_70B843: LitVar_Missing var_110
  loc_70B846: LitVar_Missing var_F0
  loc_70B849: LitVar_Missing var_D0
  loc_70B84C: LitVar_Missing var_B0
  loc_70B84F: LitStr "Error Inesperado"
  loc_70B852: FStStrCopy var_90
  loc_70B855: FLdRfVar var_90
  loc_70B858: LitI4 &H76
  loc_70B85D: PopTmpLdAdStr var_8C
  loc_70B860: LitI2_Byte &HA
  loc_70B862: PopTmpLdAd2 var_86
  loc_70B865: ImpAdLdRf MemVar_74C7D0
  loc_70B868: NewIfNullPr clsMsg
  loc_70B86B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B870: ILdRf var_1D4
  loc_70B873: FLdPr Me
  loc_70B876: MemStStrCopy
  loc_70B87A: FFreeStr var_90 = ""
  loc_70B881: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B898: FLdRfVar var_1D4
  loc_70B89B: LitVar_Missing var_1D0
  loc_70B89E: LitVar_Missing var_1B0
  loc_70B8A1: LitVar_Missing var_190
  loc_70B8A4: LitVar_Missing var_170
  loc_70B8A7: LitVar_Missing var_150
  loc_70B8AA: LitVar_Missing var_130
  loc_70B8AD: LitVar_Missing var_110
  loc_70B8B0: LitVar_Missing var_F0
  loc_70B8B3: LitVar_Missing var_D0
  loc_70B8B6: LitVar_Missing var_B0
  loc_70B8B9: LitStr "La Importacion de archivos del CEM-37 Elimina todos los datos configurados anteriormente y solamente debe ejecutarse durante la instalacion o recuperacion del sistema"
  loc_70B8BC: FStStrCopy var_90
  loc_70B8BF: FLdRfVar var_90
  loc_70B8C2: LitI4 &H77
  loc_70B8C7: PopTmpLdAdStr var_8C
  loc_70B8CA: LitI2_Byte &HA
  loc_70B8CC: PopTmpLdAd2 var_86
  loc_70B8CF: ImpAdLdRf MemVar_74C7D0
  loc_70B8D2: NewIfNullPr clsMsg
  loc_70B8D5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B8DA: ILdRf var_1D4
  loc_70B8DD: FLdPr Me
  loc_70B8E0: MemStStrCopy
  loc_70B8E4: FFreeStr var_90 = ""
  loc_70B8EB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B902: FLdRfVar var_1D4
  loc_70B905: LitVar_Missing var_1D0
  loc_70B908: LitVar_Missing var_1B0
  loc_70B90B: LitVar_Missing var_190
  loc_70B90E: LitVar_Missing var_170
  loc_70B911: LitVar_Missing var_150
  loc_70B914: LitVar_Missing var_130
  loc_70B917: LitVar_Missing var_110
  loc_70B91A: LitVar_Missing var_F0
  loc_70B91D: LitVar_Missing var_D0
  loc_70B920: LitVar_Missing var_B0
  loc_70B923: LitStr "Desea imprimir la configuracion ?"
  loc_70B926: FStStrCopy var_90
  loc_70B929: FLdRfVar var_90
  loc_70B92C: LitI4 &H78
  loc_70B931: PopTmpLdAdStr var_8C
  loc_70B934: LitI2_Byte &HA
  loc_70B936: PopTmpLdAd2 var_86
  loc_70B939: ImpAdLdRf MemVar_74C7D0
  loc_70B93C: NewIfNullPr clsMsg
  loc_70B93F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B944: ILdRf var_1D4
  loc_70B947: FLdPr Me
  loc_70B94A: MemStStrCopy
  loc_70B94E: FFreeStr var_90 = ""
  loc_70B955: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B96C: FLdRfVar var_1D4
  loc_70B96F: LitVar_Missing var_1D0
  loc_70B972: LitVar_Missing var_1B0
  loc_70B975: LitVar_Missing var_190
  loc_70B978: LitVar_Missing var_170
  loc_70B97B: LitVar_Missing var_150
  loc_70B97E: LitVar_Missing var_130
  loc_70B981: LitVar_Missing var_110
  loc_70B984: LitVar_Missing var_F0
  loc_70B987: LitVar_Missing var_D0
  loc_70B98A: LitVar_Missing var_B0
  loc_70B98D: LitStr "Los archivos de impresión estan siendo utilizados. Por favor intente imprimir en unos minutos"
  loc_70B990: FStStrCopy var_90
  loc_70B993: FLdRfVar var_90
  loc_70B996: LitI4 &H79
  loc_70B99B: PopTmpLdAdStr var_8C
  loc_70B99E: LitI2_Byte &HA
  loc_70B9A0: PopTmpLdAd2 var_86
  loc_70B9A3: ImpAdLdRf MemVar_74C7D0
  loc_70B9A6: NewIfNullPr clsMsg
  loc_70B9A9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70B9AE: ILdRf var_1D4
  loc_70B9B1: FLdPr Me
  loc_70B9B4: MemStStrCopy
  loc_70B9B8: FFreeStr var_90 = ""
  loc_70B9BF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70B9D6: FLdRfVar var_1D4
  loc_70B9D9: LitVar_Missing var_1D0
  loc_70B9DC: LitVar_Missing var_1B0
  loc_70B9DF: LitVar_Missing var_190
  loc_70B9E2: LitVar_Missing var_170
  loc_70B9E5: LitVar_Missing var_150
  loc_70B9E8: LitVar_Missing var_130
  loc_70B9EB: LitVar_Missing var_110
  loc_70B9EE: LitVar_Missing var_F0
  loc_70B9F1: LitVar_Missing var_D0
  loc_70B9F4: LitVar_Missing var_B0
  loc_70B9F7: LitStr "Esta seguro de realizar un ""Cierre de Día"" ?"
  loc_70B9FA: FStStrCopy var_90
  loc_70B9FD: FLdRfVar var_90
  loc_70BA00: LitI4 &H7A
  loc_70BA05: PopTmpLdAdStr var_8C
  loc_70BA08: LitI2_Byte &HA
  loc_70BA0A: PopTmpLdAd2 var_86
  loc_70BA0D: ImpAdLdRf MemVar_74C7D0
  loc_70BA10: NewIfNullPr clsMsg
  loc_70BA13: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BA18: ILdRf var_1D4
  loc_70BA1B: FLdPr Me
  loc_70BA1E: MemStStrCopy
  loc_70BA22: FFreeStr var_90 = ""
  loc_70BA29: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BA40: FLdRfVar var_1D4
  loc_70BA43: LitVar_Missing var_1D0
  loc_70BA46: LitVar_Missing var_1B0
  loc_70BA49: LitVar_Missing var_190
  loc_70BA4C: LitVar_Missing var_170
  loc_70BA4F: LitVar_Missing var_150
  loc_70BA52: LitVar_Missing var_130
  loc_70BA55: LitVar_Missing var_110
  loc_70BA58: LitVar_Missing var_F0
  loc_70BA5B: LitVar_Missing var_D0
  loc_70BA5E: LitVar_Missing var_B0
  loc_70BA61: LitStr "El Archivo de Configuración está presente en el Diskette, pero su contenido es nulo."
  loc_70BA64: FStStrCopy var_90
  loc_70BA67: FLdRfVar var_90
  loc_70BA6A: LitI4 &H7B
  loc_70BA6F: PopTmpLdAdStr var_8C
  loc_70BA72: LitI2_Byte &HA
  loc_70BA74: PopTmpLdAd2 var_86
  loc_70BA77: ImpAdLdRf MemVar_74C7D0
  loc_70BA7A: NewIfNullPr clsMsg
  loc_70BA7D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BA82: ILdRf var_1D4
  loc_70BA85: FLdPr Me
  loc_70BA88: MemStStrCopy
  loc_70BA8C: FFreeStr var_90 = ""
  loc_70BA93: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BAAA: FLdRfVar var_1D4
  loc_70BAAD: LitVar_Missing var_1D0
  loc_70BAB0: LitVar_Missing var_1B0
  loc_70BAB3: LitVar_Missing var_190
  loc_70BAB6: LitVar_Missing var_170
  loc_70BAB9: LitVar_Missing var_150
  loc_70BABC: LitVar_Missing var_130
  loc_70BABF: LitVar_Missing var_110
  loc_70BAC2: LitVar_Missing var_F0
  loc_70BAC5: LitVar_Missing var_D0
  loc_70BAC8: LitVar_Missing var_B0
  loc_70BACB: LitStr "ERROR  EN  LA  CARGA  DEL  ARCHIVO"
  loc_70BACE: FStStrCopy var_90
  loc_70BAD1: FLdRfVar var_90
  loc_70BAD4: LitI4 &H7C
  loc_70BAD9: PopTmpLdAdStr var_8C
  loc_70BADC: LitI2_Byte &HA
  loc_70BADE: PopTmpLdAd2 var_86
  loc_70BAE1: ImpAdLdRf MemVar_74C7D0
  loc_70BAE4: NewIfNullPr clsMsg
  loc_70BAE7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BAEC: ILdRf var_1D4
  loc_70BAEF: FLdPr Me
  loc_70BAF2: MemStStrCopy
  loc_70BAF6: FFreeStr var_90 = ""
  loc_70BAFD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BB14: FLdRfVar var_1D4
  loc_70BB17: LitVar_Missing var_1D0
  loc_70BB1A: LitVar_Missing var_1B0
  loc_70BB1D: LitVar_Missing var_190
  loc_70BB20: LitVar_Missing var_170
  loc_70BB23: LitVar_Missing var_150
  loc_70BB26: LitVar_Missing var_130
  loc_70BB29: LitVar_Missing var_110
  loc_70BB2C: LitVar_Missing var_F0
  loc_70BB2F: LitVar_Missing var_D0
  loc_70BB32: LitVar_Missing var_B0
  loc_70BB35: LitStr "Cierre en proceso, comprobantes impagos"
  loc_70BB38: FStStrCopy var_90
  loc_70BB3B: FLdRfVar var_90
  loc_70BB3E: LitI4 &H7D
  loc_70BB43: PopTmpLdAdStr var_8C
  loc_70BB46: LitI2_Byte &HA
  loc_70BB48: PopTmpLdAd2 var_86
  loc_70BB4B: ImpAdLdRf MemVar_74C7D0
  loc_70BB4E: NewIfNullPr clsMsg
  loc_70BB51: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BB56: ILdRf var_1D4
  loc_70BB59: FLdPr Me
  loc_70BB5C: MemStStrCopy
  loc_70BB60: FFreeStr var_90 = ""
  loc_70BB67: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BB7E: FLdRfVar var_1D4
  loc_70BB81: LitVar_Missing var_1D0
  loc_70BB84: LitVar_Missing var_1B0
  loc_70BB87: LitVar_Missing var_190
  loc_70BB8A: LitVar_Missing var_170
  loc_70BB8D: LitVar_Missing var_150
  loc_70BB90: LitVar_Missing var_130
  loc_70BB93: LitVar_Missing var_110
  loc_70BB96: LitVar_Missing var_F0
  loc_70BB99: LitVar_Missing var_D0
  loc_70BB9C: LitVar_Missing var_B0
  loc_70BB9F: LitStr "Cierre en proceso"
  loc_70BBA2: FStStrCopy var_90
  loc_70BBA5: FLdRfVar var_90
  loc_70BBA8: LitI4 &H7E
  loc_70BBAD: PopTmpLdAdStr var_8C
  loc_70BBB0: LitI2_Byte &HA
  loc_70BBB2: PopTmpLdAd2 var_86
  loc_70BBB5: ImpAdLdRf MemVar_74C7D0
  loc_70BBB8: NewIfNullPr clsMsg
  loc_70BBBB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BBC0: ILdRf var_1D4
  loc_70BBC3: FLdPr Me
  loc_70BBC6: MemStStrCopy
  loc_70BBCA: FFreeStr var_90 = ""
  loc_70BBD1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BBE8: FLdRfVar var_1D4
  loc_70BBEB: LitVar_Missing var_1D0
  loc_70BBEE: LitVar_Missing var_1B0
  loc_70BBF1: LitVar_Missing var_190
  loc_70BBF4: LitVar_Missing var_170
  loc_70BBF7: LitVar_Missing var_150
  loc_70BBFA: LitVar_Missing var_130
  loc_70BBFD: LitVar_Missing var_110
  loc_70BC00: LitVar_Missing var_F0
  loc_70BC03: LitVar_Missing var_D0
  loc_70BC06: LitVar_Missing var_B0
  loc_70BC09: LitStr "Impresion de Reporte en proceso"
  loc_70BC0C: FStStrCopy var_90
  loc_70BC0F: FLdRfVar var_90
  loc_70BC12: LitI4 &H7F
  loc_70BC17: PopTmpLdAdStr var_8C
  loc_70BC1A: LitI2_Byte &HA
  loc_70BC1C: PopTmpLdAd2 var_86
  loc_70BC1F: ImpAdLdRf MemVar_74C7D0
  loc_70BC22: NewIfNullPr clsMsg
  loc_70BC25: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BC2A: ILdRf var_1D4
  loc_70BC2D: FLdPr Me
  loc_70BC30: MemStStrCopy
  loc_70BC34: FFreeStr var_90 = ""
  loc_70BC3B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BC52: FLdRfVar var_1D4
  loc_70BC55: LitVar_Missing var_1D0
  loc_70BC58: LitVar_Missing var_1B0
  loc_70BC5B: LitVar_Missing var_190
  loc_70BC5E: LitVar_Missing var_170
  loc_70BC61: LitVar_Missing var_150
  loc_70BC64: LitVar_Missing var_130
  loc_70BC67: LitVar_Missing var_110
  loc_70BC6A: LitVar_Missing var_F0
  loc_70BC6D: LitVar_Missing var_D0
  loc_70BC70: LitVar_Missing var_B0
  loc_70BC73: LitStr "Archivos de impresion en uso, por favor reintente en unos segundos"
  loc_70BC76: FStStrCopy var_90
  loc_70BC79: FLdRfVar var_90
  loc_70BC7C: LitI4 &H80
  loc_70BC81: PopTmpLdAdStr var_8C
  loc_70BC84: LitI2_Byte &HA
  loc_70BC86: PopTmpLdAd2 var_86
  loc_70BC89: ImpAdLdRf MemVar_74C7D0
  loc_70BC8C: NewIfNullPr clsMsg
  loc_70BC8F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BC94: ILdRf var_1D4
  loc_70BC97: FLdPr Me
  loc_70BC9A: MemStStrCopy
  loc_70BC9E: FFreeStr var_90 = ""
  loc_70BCA5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BCBC: FLdRfVar var_1D4
  loc_70BCBF: LitVar_Missing var_1D0
  loc_70BCC2: LitVar_Missing var_1B0
  loc_70BCC5: LitVar_Missing var_190
  loc_70BCC8: LitVar_Missing var_170
  loc_70BCCB: LitVar_Missing var_150
  loc_70BCCE: LitVar_Missing var_130
  loc_70BCD1: LitVar_Missing var_110
  loc_70BCD4: LitVar_Missing var_F0
  loc_70BCD7: LitVar_Missing var_D0
  loc_70BCDA: LitVar_Missing var_B0
  loc_70BCDD: LitStr "Los archivos de impresión estan siendo utilizados. El cierre se ha realizado satisfactoriamente. Por favor intente imprimirlo en unos minutos"
  loc_70BCE0: FStStrCopy var_90
  loc_70BCE3: FLdRfVar var_90
  loc_70BCE6: LitI4 &H4D
  loc_70BCEB: PopTmpLdAdStr var_8C
  loc_70BCEE: LitI2_Byte &HA
  loc_70BCF0: PopTmpLdAd2 var_86
  loc_70BCF3: ImpAdLdRf MemVar_74C7D0
  loc_70BCF6: NewIfNullPr clsMsg
  loc_70BCF9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BCFE: ILdRf var_1D4
  loc_70BD01: FLdPr Me
  loc_70BD04: MemStStrCopy
  loc_70BD08: FFreeStr var_90 = ""
  loc_70BD0F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BD26: FLdRfVar var_1D4
  loc_70BD29: LitVar_Missing var_1D0
  loc_70BD2C: LitVar_Missing var_1B0
  loc_70BD2F: LitVar_Missing var_190
  loc_70BD32: LitVar_Missing var_170
  loc_70BD35: LitVar_Missing var_150
  loc_70BD38: LitVar_Missing var_130
  loc_70BD3B: LitVar_Missing var_110
  loc_70BD3E: LitVar_Missing var_F0
  loc_70BD41: LitVar_Missing var_D0
  loc_70BD44: LitVar_Missing var_B0
  loc_70BD47: LitStr "No se ha podido realizar el cierre de día porque "
  loc_70BD4A: FStStrCopy var_90
  loc_70BD4D: FLdRfVar var_90
  loc_70BD50: LitI4 &H4F
  loc_70BD55: PopTmpLdAdStr var_8C
  loc_70BD58: LitI2_Byte &HA
  loc_70BD5A: PopTmpLdAd2 var_86
  loc_70BD5D: ImpAdLdRf MemVar_74C7D0
  loc_70BD60: NewIfNullPr clsMsg
  loc_70BD63: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BD68: ILdRf var_1D4
  loc_70BD6B: FLdPr Me
  loc_70BD6E: MemStStrCopy
  loc_70BD72: FFreeStr var_90 = ""
  loc_70BD79: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BD90: FLdRfVar var_1D4
  loc_70BD93: LitVar_Missing var_1D0
  loc_70BD96: LitVar_Missing var_1B0
  loc_70BD99: LitVar_Missing var_190
  loc_70BD9C: LitVar_Missing var_170
  loc_70BD9F: LitVar_Missing var_150
  loc_70BDA2: LitVar_Missing var_130
  loc_70BDA5: LitVar_Missing var_110
  loc_70BDA8: LitVar_Missing var_F0
  loc_70BDAB: LitVar_Missing var_D0
  loc_70BDAE: LitVar_Missing var_B0
  loc_70BDB1: LitStr "Cierre de día"
  loc_70BDB4: FStStrCopy var_90
  loc_70BDB7: FLdRfVar var_90
  loc_70BDBA: LitI4 &H50
  loc_70BDBF: PopTmpLdAdStr var_8C
  loc_70BDC2: LitI2_Byte &HA
  loc_70BDC4: PopTmpLdAd2 var_86
  loc_70BDC7: ImpAdLdRf MemVar_74C7D0
  loc_70BDCA: NewIfNullPr clsMsg
  loc_70BDCD: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BDD2: ILdRf var_1D4
  loc_70BDD5: FLdPr Me
  loc_70BDD8: MemStStrCopy
  loc_70BDDC: FFreeStr var_90 = ""
  loc_70BDE3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BDFA: FLdRfVar var_1D4
  loc_70BDFD: LitVar_Missing var_1D0
  loc_70BE00: LitVar_Missing var_1B0
  loc_70BE03: LitVar_Missing var_190
  loc_70BE06: LitVar_Missing var_170
  loc_70BE09: LitVar_Missing var_150
  loc_70BE0C: LitVar_Missing var_130
  loc_70BE0F: LitVar_Missing var_110
  loc_70BE12: LitVar_Missing var_F0
  loc_70BE15: LitVar_Missing var_D0
  loc_70BE18: LitVar_Missing var_B0
  loc_70BE1B: LitStr "No se ha podido realizar el cierre de turno porque "
  loc_70BE1E: FStStrCopy var_90
  loc_70BE21: FLdRfVar var_90
  loc_70BE24: LitI4 &H51
  loc_70BE29: PopTmpLdAdStr var_8C
  loc_70BE2C: LitI2_Byte &HA
  loc_70BE2E: PopTmpLdAd2 var_86
  loc_70BE31: ImpAdLdRf MemVar_74C7D0
  loc_70BE34: NewIfNullPr clsMsg
  loc_70BE37: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BE3C: ILdRf var_1D4
  loc_70BE3F: FLdPr Me
  loc_70BE42: MemStStrCopy
  loc_70BE46: FFreeStr var_90 = ""
  loc_70BE4D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BE64: FLdRfVar var_1D4
  loc_70BE67: LitVar_Missing var_1D0
  loc_70BE6A: LitVar_Missing var_1B0
  loc_70BE6D: LitVar_Missing var_190
  loc_70BE70: LitVar_Missing var_170
  loc_70BE73: LitVar_Missing var_150
  loc_70BE76: LitVar_Missing var_130
  loc_70BE79: LitVar_Missing var_110
  loc_70BE7C: LitVar_Missing var_F0
  loc_70BE7F: LitVar_Missing var_D0
  loc_70BE82: LitVar_Missing var_B0
  loc_70BE85: LitStr "Cierre de turno"
  loc_70BE88: FStStrCopy var_90
  loc_70BE8B: FLdRfVar var_90
  loc_70BE8E: LitI4 &H52
  loc_70BE93: PopTmpLdAdStr var_8C
  loc_70BE96: LitI2_Byte &HA
  loc_70BE98: PopTmpLdAd2 var_86
  loc_70BE9B: ImpAdLdRf MemVar_74C7D0
  loc_70BE9E: NewIfNullPr clsMsg
  loc_70BEA1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BEA6: ILdRf var_1D4
  loc_70BEA9: FLdPr Me
  loc_70BEAC: MemStStrCopy
  loc_70BEB0: FFreeStr var_90 = ""
  loc_70BEB7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BECE: FLdRfVar var_1D4
  loc_70BED1: LitVar_Missing var_1D0
  loc_70BED4: LitVar_Missing var_1B0
  loc_70BED7: LitVar_Missing var_190
  loc_70BEDA: LitVar_Missing var_170
  loc_70BEDD: LitVar_Missing var_150
  loc_70BEE0: LitVar_Missing var_130
  loc_70BEE3: LitVar_Missing var_110
  loc_70BEE6: LitVar_Missing var_F0
  loc_70BEE9: LitVar_Missing var_D0
  loc_70BEEC: LitVar_Missing var_B0
  loc_70BEEF: LitStr "No se ha podido realizar el cierre de mes porque "
  loc_70BEF2: FStStrCopy var_90
  loc_70BEF5: FLdRfVar var_90
  loc_70BEF8: LitI4 &H53
  loc_70BEFD: PopTmpLdAdStr var_8C
  loc_70BF00: LitI2_Byte &HA
  loc_70BF02: PopTmpLdAd2 var_86
  loc_70BF05: ImpAdLdRf MemVar_74C7D0
  loc_70BF08: NewIfNullPr clsMsg
  loc_70BF0B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BF10: ILdRf var_1D4
  loc_70BF13: FLdPr Me
  loc_70BF16: MemStStrCopy
  loc_70BF1A: FFreeStr var_90 = ""
  loc_70BF21: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BF38: FLdRfVar var_1D4
  loc_70BF3B: LitVar_Missing var_1D0
  loc_70BF3E: LitVar_Missing var_1B0
  loc_70BF41: LitVar_Missing var_190
  loc_70BF44: LitVar_Missing var_170
  loc_70BF47: LitVar_Missing var_150
  loc_70BF4A: LitVar_Missing var_130
  loc_70BF4D: LitVar_Missing var_110
  loc_70BF50: LitVar_Missing var_F0
  loc_70BF53: LitVar_Missing var_D0
  loc_70BF56: LitVar_Missing var_B0
  loc_70BF59: LitStr "Cierre de mes"
  loc_70BF5C: FStStrCopy var_90
  loc_70BF5F: FLdRfVar var_90
  loc_70BF62: LitI4 &H54
  loc_70BF67: PopTmpLdAdStr var_8C
  loc_70BF6A: LitI2_Byte &HA
  loc_70BF6C: PopTmpLdAd2 var_86
  loc_70BF6F: ImpAdLdRf MemVar_74C7D0
  loc_70BF72: NewIfNullPr clsMsg
  loc_70BF75: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BF7A: ILdRf var_1D4
  loc_70BF7D: FLdPr Me
  loc_70BF80: MemStStrCopy
  loc_70BF84: FFreeStr var_90 = ""
  loc_70BF8B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70BFA2: FLdRfVar var_1D4
  loc_70BFA5: LitVar_Missing var_1D0
  loc_70BFA8: LitVar_Missing var_1B0
  loc_70BFAB: LitVar_Missing var_190
  loc_70BFAE: LitVar_Missing var_170
  loc_70BFB1: LitVar_Missing var_150
  loc_70BFB4: LitVar_Missing var_130
  loc_70BFB7: LitVar_Missing var_110
  loc_70BFBA: LitVar_Missing var_F0
  loc_70BFBD: LitVar_Missing var_D0
  loc_70BFC0: LitVar_Missing var_B0
  loc_70BFC3: LitStr "no existen datos a reportar."
  loc_70BFC6: FStStrCopy var_90
  loc_70BFC9: FLdRfVar var_90
  loc_70BFCC: LitI4 &H55
  loc_70BFD1: PopTmpLdAdStr var_8C
  loc_70BFD4: LitI2_Byte &HA
  loc_70BFD6: PopTmpLdAd2 var_86
  loc_70BFD9: ImpAdLdRf MemVar_74C7D0
  loc_70BFDC: NewIfNullPr clsMsg
  loc_70BFDF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70BFE4: ILdRf var_1D4
  loc_70BFE7: FLdPr Me
  loc_70BFEA: MemStStrCopy
  loc_70BFEE: FFreeStr var_90 = ""
  loc_70BFF5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C00C: FLdRfVar var_1D4
  loc_70C00F: LitVar_Missing var_1D0
  loc_70C012: LitVar_Missing var_1B0
  loc_70C015: LitVar_Missing var_190
  loc_70C018: LitVar_Missing var_170
  loc_70C01B: LitVar_Missing var_150
  loc_70C01E: LitVar_Missing var_130
  loc_70C021: LitVar_Missing var_110
  loc_70C024: LitVar_Missing var_F0
  loc_70C027: LitVar_Missing var_D0
  loc_70C02A: LitVar_Missing var_B0
  loc_70C02D: LitStr "el CEM-44 está atendiendo un cierre de turno."
  loc_70C030: FStStrCopy var_90
  loc_70C033: FLdRfVar var_90
  loc_70C036: LitI4 &H56
  loc_70C03B: PopTmpLdAdStr var_8C
  loc_70C03E: LitI2_Byte &HA
  loc_70C040: PopTmpLdAd2 var_86
  loc_70C043: ImpAdLdRf MemVar_74C7D0
  loc_70C046: NewIfNullPr clsMsg
  loc_70C049: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C04E: ILdRf var_1D4
  loc_70C051: FLdPr Me
  loc_70C054: MemStStrCopy
  loc_70C058: FFreeStr var_90 = ""
  loc_70C05F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C076: FLdRfVar var_1D4
  loc_70C079: LitVar_Missing var_1D0
  loc_70C07C: LitVar_Missing var_1B0
  loc_70C07F: LitVar_Missing var_190
  loc_70C082: LitVar_Missing var_170
  loc_70C085: LitVar_Missing var_150
  loc_70C088: LitVar_Missing var_130
  loc_70C08B: LitVar_Missing var_110
  loc_70C08E: LitVar_Missing var_F0
  loc_70C091: LitVar_Missing var_D0
  loc_70C094: LitVar_Missing var_B0
  loc_70C097: LitStr "ha ocurrido un error inesperado código "
  loc_70C09A: FStStrCopy var_90
  loc_70C09D: FLdRfVar var_90
  loc_70C0A0: LitI4 &H57
  loc_70C0A5: PopTmpLdAdStr var_8C
  loc_70C0A8: LitI2_Byte &HA
  loc_70C0AA: PopTmpLdAd2 var_86
  loc_70C0AD: ImpAdLdRf MemVar_74C7D0
  loc_70C0B0: NewIfNullPr clsMsg
  loc_70C0B3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C0B8: ILdRf var_1D4
  loc_70C0BB: FLdPr Me
  loc_70C0BE: MemStStrCopy
  loc_70C0C2: FFreeStr var_90 = ""
  loc_70C0C9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C0E0: FLdRfVar var_1D4
  loc_70C0E3: LitVar_Missing var_1D0
  loc_70C0E6: LitVar_Missing var_1B0
  loc_70C0E9: LitVar_Missing var_190
  loc_70C0EC: LitVar_Missing var_170
  loc_70C0EF: LitVar_Missing var_150
  loc_70C0F2: LitVar_Missing var_130
  loc_70C0F5: LitVar_Missing var_110
  loc_70C0F8: LitVar_Missing var_F0
  loc_70C0FB: LitVar_Missing var_D0
  loc_70C0FE: LitVar_Missing var_B0
  loc_70C101: LitStr "Desea aplicar ahora la nueva codificacion"
  loc_70C104: FStStrCopy var_90
  loc_70C107: FLdRfVar var_90
  loc_70C10A: LitI4 &H58
  loc_70C10F: PopTmpLdAdStr var_8C
  loc_70C112: LitI2_Byte &HA
  loc_70C114: PopTmpLdAd2 var_86
  loc_70C117: ImpAdLdRf MemVar_74C7D0
  loc_70C11A: NewIfNullPr clsMsg
  loc_70C11D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C122: ILdRf var_1D4
  loc_70C125: FLdPr Me
  loc_70C128: MemStStrCopy
  loc_70C12C: FFreeStr var_90 = ""
  loc_70C133: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C14A: FLdRfVar var_1D4
  loc_70C14D: LitVar_Missing var_1D0
  loc_70C150: LitVar_Missing var_1B0
  loc_70C153: LitVar_Missing var_190
  loc_70C156: LitVar_Missing var_170
  loc_70C159: LitVar_Missing var_150
  loc_70C15C: LitVar_Missing var_130
  loc_70C15F: LitVar_Missing var_110
  loc_70C162: LitVar_Missing var_F0
  loc_70C165: LitVar_Missing var_D0
  loc_70C168: LitVar_Missing var_B0
  loc_70C16B: LitStr "Aplicar Nueva Codificacion"
  loc_70C16E: FStStrCopy var_90
  loc_70C171: FLdRfVar var_90
  loc_70C174: LitI4 &H59
  loc_70C179: PopTmpLdAdStr var_8C
  loc_70C17C: LitI2_Byte &HA
  loc_70C17E: PopTmpLdAd2 var_86
  loc_70C181: ImpAdLdRf MemVar_74C7D0
  loc_70C184: NewIfNullPr clsMsg
  loc_70C187: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C18C: ILdRf var_1D4
  loc_70C18F: FLdPr Me
  loc_70C192: MemStStrCopy
  loc_70C196: FFreeStr var_90 = ""
  loc_70C19D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C1B4: FLdRfVar var_1D4
  loc_70C1B7: LitVar_Missing var_1D0
  loc_70C1BA: LitVar_Missing var_1B0
  loc_70C1BD: LitVar_Missing var_190
  loc_70C1C0: LitVar_Missing var_170
  loc_70C1C3: LitVar_Missing var_150
  loc_70C1C6: LitVar_Missing var_130
  loc_70C1C9: LitVar_Missing var_110
  loc_70C1CC: LitVar_Missing var_F0
  loc_70C1CF: LitVar_Missing var_D0
  loc_70C1D2: LitVar_Missing var_B0
  loc_70C1D5: LitStr "Hay períodos abiertos (Turno, Día, Mes y/o Red XXI)"
  loc_70C1D8: FStStrCopy var_90
  loc_70C1DB: FLdRfVar var_90
  loc_70C1DE: LitI4 &H5A
  loc_70C1E3: PopTmpLdAdStr var_8C
  loc_70C1E6: LitI2_Byte &HA
  loc_70C1E8: PopTmpLdAd2 var_86
  loc_70C1EB: ImpAdLdRf MemVar_74C7D0
  loc_70C1EE: NewIfNullPr clsMsg
  loc_70C1F1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C1F6: ILdRf var_1D4
  loc_70C1F9: FLdPr Me
  loc_70C1FC: MemStStrCopy
  loc_70C200: FFreeStr var_90 = ""
  loc_70C207: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C21E: FLdRfVar var_1D4
  loc_70C221: LitVar_Missing var_1D0
  loc_70C224: LitVar_Missing var_1B0
  loc_70C227: LitVar_Missing var_190
  loc_70C22A: LitVar_Missing var_170
  loc_70C22D: LitVar_Missing var_150
  loc_70C230: LitVar_Missing var_130
  loc_70C233: LitVar_Missing var_110
  loc_70C236: LitVar_Missing var_F0
  loc_70C239: LitVar_Missing var_D0
  loc_70C23C: LitVar_Missing var_B0
  loc_70C23F: LitStr "Antes de aplicar la nueva codificación, primero debe cerrarlos"
  loc_70C242: FStStrCopy var_90
  loc_70C245: FLdRfVar var_90
  loc_70C248: LitI4 &H5B
  loc_70C24D: PopTmpLdAdStr var_8C
  loc_70C250: LitI2_Byte &HA
  loc_70C252: PopTmpLdAd2 var_86
  loc_70C255: ImpAdLdRf MemVar_74C7D0
  loc_70C258: NewIfNullPr clsMsg
  loc_70C25B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C260: ILdRf var_1D4
  loc_70C263: FLdPr Me
  loc_70C266: MemStStrCopy
  loc_70C26A: FFreeStr var_90 = ""
  loc_70C271: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C288: FLdRfVar var_1D4
  loc_70C28B: LitVar_Missing var_1D0
  loc_70C28E: LitVar_Missing var_1B0
  loc_70C291: LitVar_Missing var_190
  loc_70C294: LitVar_Missing var_170
  loc_70C297: LitVar_Missing var_150
  loc_70C29A: LitVar_Missing var_130
  loc_70C29D: LitVar_Missing var_110
  loc_70C2A0: LitVar_Missing var_F0
  loc_70C2A3: LitVar_Missing var_D0
  loc_70C2A6: LitVar_Missing var_B0
  loc_70C2A9: LitStr "Esta seguro de realizar un ""Cierre de Mes"" ?"
  loc_70C2AC: FStStrCopy var_90
  loc_70C2AF: FLdRfVar var_90
  loc_70C2B2: LitI4 &H5C
  loc_70C2B7: PopTmpLdAdStr var_8C
  loc_70C2BA: LitI2_Byte &HA
  loc_70C2BC: PopTmpLdAd2 var_86
  loc_70C2BF: ImpAdLdRf MemVar_74C7D0
  loc_70C2C2: NewIfNullPr clsMsg
  loc_70C2C5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C2CA: ILdRf var_1D4
  loc_70C2CD: FLdPr Me
  loc_70C2D0: MemStStrCopy
  loc_70C2D4: FFreeStr var_90 = ""
  loc_70C2DB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C2F2: FLdRfVar var_1D4
  loc_70C2F5: LitVar_Missing var_1D0
  loc_70C2F8: LitVar_Missing var_1B0
  loc_70C2FB: LitVar_Missing var_190
  loc_70C2FE: LitVar_Missing var_170
  loc_70C301: LitVar_Missing var_150
  loc_70C304: LitVar_Missing var_130
  loc_70C307: LitVar_Missing var_110
  loc_70C30A: LitVar_Missing var_F0
  loc_70C30D: LitVar_Missing var_D0
  loc_70C310: LitVar_Missing var_B0
  loc_70C313: LitStr "El mes no contiene ventas"
  loc_70C316: FStStrCopy var_90
  loc_70C319: FLdRfVar var_90
  loc_70C31C: LitI4 &H5E
  loc_70C321: PopTmpLdAdStr var_8C
  loc_70C324: LitI2_Byte &HA
  loc_70C326: PopTmpLdAd2 var_86
  loc_70C329: ImpAdLdRf MemVar_74C7D0
  loc_70C32C: NewIfNullPr clsMsg
  loc_70C32F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C334: ILdRf var_1D4
  loc_70C337: FLdPr Me
  loc_70C33A: MemStStrCopy
  loc_70C33E: FFreeStr var_90 = ""
  loc_70C345: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C35C: FLdRfVar var_1D4
  loc_70C35F: LitVar_Missing var_1D0
  loc_70C362: LitVar_Missing var_1B0
  loc_70C365: LitVar_Missing var_190
  loc_70C368: LitVar_Missing var_170
  loc_70C36B: LitVar_Missing var_150
  loc_70C36E: LitVar_Missing var_130
  loc_70C371: LitVar_Missing var_110
  loc_70C374: LitVar_Missing var_F0
  loc_70C377: LitVar_Missing var_D0
  loc_70C37A: LitVar_Missing var_B0
  loc_70C37D: LitStr "Esta seguro de realizar un ""Cierre de Turno"" ?"
  loc_70C380: FStStrCopy var_90
  loc_70C383: FLdRfVar var_90
  loc_70C386: LitI4 &H60
  loc_70C38B: PopTmpLdAdStr var_8C
  loc_70C38E: LitI2_Byte &HA
  loc_70C390: PopTmpLdAd2 var_86
  loc_70C393: ImpAdLdRf MemVar_74C7D0
  loc_70C396: NewIfNullPr clsMsg
  loc_70C399: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C39E: ILdRf var_1D4
  loc_70C3A1: FLdPr Me
  loc_70C3A4: MemStStrCopy
  loc_70C3A8: FFreeStr var_90 = ""
  loc_70C3AF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C3C6: FLdRfVar var_1D4
  loc_70C3C9: LitVar_Missing var_1D0
  loc_70C3CC: LitVar_Missing var_1B0
  loc_70C3CF: LitVar_Missing var_190
  loc_70C3D2: LitVar_Missing var_170
  loc_70C3D5: LitVar_Missing var_150
  loc_70C3D8: LitVar_Missing var_130
  loc_70C3DB: LitVar_Missing var_110
  loc_70C3DE: LitVar_Missing var_F0
  loc_70C3E1: LitVar_Missing var_D0
  loc_70C3E4: LitVar_Missing var_B0
  loc_70C3E7: LitStr "Cierre de turno en proceso"
  loc_70C3EA: FStStrCopy var_90
  loc_70C3ED: FLdRfVar var_90
  loc_70C3F0: LitI4 &H61
  loc_70C3F5: PopTmpLdAdStr var_8C
  loc_70C3F8: LitI2_Byte &HA
  loc_70C3FA: PopTmpLdAd2 var_86
  loc_70C3FD: ImpAdLdRf MemVar_74C7D0
  loc_70C400: NewIfNullPr clsMsg
  loc_70C403: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C408: ILdRf var_1D4
  loc_70C40B: FLdPr Me
  loc_70C40E: MemStStrCopy
  loc_70C412: FFreeStr var_90 = ""
  loc_70C419: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C430: FLdRfVar var_1D4
  loc_70C433: LitVar_Missing var_1D0
  loc_70C436: LitVar_Missing var_1B0
  loc_70C439: LitVar_Missing var_190
  loc_70C43C: LitVar_Missing var_170
  loc_70C43F: LitVar_Missing var_150
  loc_70C442: LitVar_Missing var_130
  loc_70C445: LitVar_Missing var_110
  loc_70C448: LitVar_Missing var_F0
  loc_70C44B: LitVar_Missing var_D0
  loc_70C44E: LitVar_Missing var_B0
  loc_70C451: LitStr "Cierre de turno en proceso, comprobantes impagos"
  loc_70C454: FStStrCopy var_90
  loc_70C457: FLdRfVar var_90
  loc_70C45A: LitI4 &H62
  loc_70C45F: PopTmpLdAdStr var_8C
  loc_70C462: LitI2_Byte &HA
  loc_70C464: PopTmpLdAd2 var_86
  loc_70C467: ImpAdLdRf MemVar_74C7D0
  loc_70C46A: NewIfNullPr clsMsg
  loc_70C46D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C472: ILdRf var_1D4
  loc_70C475: FLdPr Me
  loc_70C478: MemStStrCopy
  loc_70C47C: FFreeStr var_90 = ""
  loc_70C483: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C49A: FLdRfVar var_1D4
  loc_70C49D: LitVar_Missing var_1D0
  loc_70C4A0: LitVar_Missing var_1B0
  loc_70C4A3: LitVar_Missing var_190
  loc_70C4A6: LitVar_Missing var_170
  loc_70C4A9: LitVar_Missing var_150
  loc_70C4AC: LitVar_Missing var_130
  loc_70C4AF: LitVar_Missing var_110
  loc_70C4B2: LitVar_Missing var_F0
  loc_70C4B5: LitVar_Missing var_D0
  loc_70C4B8: LitVar_Missing var_B0
  loc_70C4BB: LitStr "El turno no contiene ventas"
  loc_70C4BE: FStStrCopy var_90
  loc_70C4C1: FLdRfVar var_90
  loc_70C4C4: LitI4 &H64
  loc_70C4C9: PopTmpLdAdStr var_8C
  loc_70C4CC: LitI2_Byte &HA
  loc_70C4CE: PopTmpLdAd2 var_86
  loc_70C4D1: ImpAdLdRf MemVar_74C7D0
  loc_70C4D4: NewIfNullPr clsMsg
  loc_70C4D7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C4DC: ILdRf var_1D4
  loc_70C4DF: FLdPr Me
  loc_70C4E2: MemStStrCopy
  loc_70C4E6: FFreeStr var_90 = ""
  loc_70C4ED: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C504: FLdRfVar var_1D4
  loc_70C507: LitVar_Missing var_1D0
  loc_70C50A: LitVar_Missing var_1B0
  loc_70C50D: LitVar_Missing var_190
  loc_70C510: LitVar_Missing var_170
  loc_70C513: LitVar_Missing var_150
  loc_70C516: LitVar_Missing var_130
  loc_70C519: LitVar_Missing var_110
  loc_70C51C: LitVar_Missing var_F0
  loc_70C51F: LitVar_Missing var_D0
  loc_70C522: LitVar_Missing var_B0
  loc_70C525: LitStr "El día no contiene ventas"
  loc_70C528: FStStrCopy var_90
  loc_70C52B: FLdRfVar var_90
  loc_70C52E: LitI4 &H66
  loc_70C533: PopTmpLdAdStr var_8C
  loc_70C536: LitI2_Byte &HA
  loc_70C538: PopTmpLdAd2 var_86
  loc_70C53B: ImpAdLdRf MemVar_74C7D0
  loc_70C53E: NewIfNullPr clsMsg
  loc_70C541: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C546: ILdRf var_1D4
  loc_70C549: FLdPr Me
  loc_70C54C: MemStStrCopy
  loc_70C550: FFreeStr var_90 = ""
  loc_70C557: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C56E: FLdRfVar var_1D4
  loc_70C571: LitVar_Missing var_1D0
  loc_70C574: LitVar_Missing var_1B0
  loc_70C577: LitVar_Missing var_190
  loc_70C57A: LitVar_Missing var_170
  loc_70C57D: LitVar_Missing var_150
  loc_70C580: LitVar_Missing var_130
  loc_70C583: LitVar_Missing var_110
  loc_70C586: LitVar_Missing var_F0
  loc_70C589: LitVar_Missing var_D0
  loc_70C58C: LitVar_Missing var_B0
  loc_70C58F: LitStr "Ha ocurrido un error inesperado al intentar imprimir una factura."
  loc_70C592: FStStrCopy var_90
  loc_70C595: FLdRfVar var_90
  loc_70C598: LitI4 &HA0
  loc_70C59D: PopTmpLdAdStr var_8C
  loc_70C5A0: LitI2_Byte &HA
  loc_70C5A2: PopTmpLdAd2 var_86
  loc_70C5A5: ImpAdLdRf MemVar_74C7D0
  loc_70C5A8: NewIfNullPr clsMsg
  loc_70C5AB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C5B0: ILdRf var_1D4
  loc_70C5B3: FLdPr Me
  loc_70C5B6: MemStStrCopy
  loc_70C5BA: FFreeStr var_90 = ""
  loc_70C5C1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C5D8: FLdRfVar var_1D4
  loc_70C5DB: LitVar_Missing var_1D0
  loc_70C5DE: LitVar_Missing var_1B0
  loc_70C5E1: LitVar_Missing var_190
  loc_70C5E4: LitVar_Missing var_170
  loc_70C5E7: LitVar_Missing var_150
  loc_70C5EA: LitVar_Missing var_130
  loc_70C5ED: LitVar_Missing var_110
  loc_70C5F0: LitVar_Missing var_F0
  loc_70C5F3: LitVar_Missing var_D0
  loc_70C5F6: LitVar_Missing var_B0
  loc_70C5F9: LitStr "Error Número: "
  loc_70C5FC: FStStrCopy var_90
  loc_70C5FF: FLdRfVar var_90
  loc_70C602: LitI4 &HA1
  loc_70C607: PopTmpLdAdStr var_8C
  loc_70C60A: LitI2_Byte &HA
  loc_70C60C: PopTmpLdAd2 var_86
  loc_70C60F: ImpAdLdRf MemVar_74C7D0
  loc_70C612: NewIfNullPr clsMsg
  loc_70C615: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C61A: ILdRf var_1D4
  loc_70C61D: FLdPr Me
  loc_70C620: MemStStrCopy
  loc_70C624: FFreeStr var_90 = ""
  loc_70C62B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C642: FLdRfVar var_1D4
  loc_70C645: LitVar_Missing var_1D0
  loc_70C648: LitVar_Missing var_1B0
  loc_70C64B: LitVar_Missing var_190
  loc_70C64E: LitVar_Missing var_170
  loc_70C651: LitVar_Missing var_150
  loc_70C654: LitVar_Missing var_130
  loc_70C657: LitVar_Missing var_110
  loc_70C65A: LitVar_Missing var_F0
  loc_70C65D: LitVar_Missing var_D0
  loc_70C660: LitVar_Missing var_B0
  loc_70C663: LitStr "Descripción: "
  loc_70C666: FStStrCopy var_90
  loc_70C669: FLdRfVar var_90
  loc_70C66C: LitI4 &HA2
  loc_70C671: PopTmpLdAdStr var_8C
  loc_70C674: LitI2_Byte &HA
  loc_70C676: PopTmpLdAd2 var_86
  loc_70C679: ImpAdLdRf MemVar_74C7D0
  loc_70C67C: NewIfNullPr clsMsg
  loc_70C67F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C684: ILdRf var_1D4
  loc_70C687: FLdPr Me
  loc_70C68A: MemStStrCopy
  loc_70C68E: FFreeStr var_90 = ""
  loc_70C695: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C6AC: FLdRfVar var_1D4
  loc_70C6AF: LitVar_Missing var_1D0
  loc_70C6B2: LitVar_Missing var_1B0
  loc_70C6B5: LitVar_Missing var_190
  loc_70C6B8: LitVar_Missing var_170
  loc_70C6BB: LitVar_Missing var_150
  loc_70C6BE: LitVar_Missing var_130
  loc_70C6C1: LitVar_Missing var_110
  loc_70C6C4: LitVar_Missing var_F0
  loc_70C6C7: LitVar_Missing var_D0
  loc_70C6CA: LitVar_Missing var_B0
  loc_70C6CD: LitStr "Error inesperado"
  loc_70C6D0: FStStrCopy var_90
  loc_70C6D3: FLdRfVar var_90
  loc_70C6D6: LitI4 &HA3
  loc_70C6DB: PopTmpLdAdStr var_8C
  loc_70C6DE: LitI2_Byte &HA
  loc_70C6E0: PopTmpLdAd2 var_86
  loc_70C6E3: ImpAdLdRf MemVar_74C7D0
  loc_70C6E6: NewIfNullPr clsMsg
  loc_70C6E9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_70C6EE: ILdRf var_1D4
  loc_70C6F1: FLdPr Me
  loc_70C6F4: MemStStrCopy
  loc_70C6F8: FFreeStr var_90 = ""
  loc_70C6FF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_70C716: ExitProcHresult
End Function

Private Function Proc_162_199_72E7A0() '72E7A0
  'Data Table: 460894
  loc_72C110: FLdRfVar var_1D4
  loc_72C113: LitVar_Missing var_1D0
  loc_72C116: LitVar_Missing var_1B0
  loc_72C119: LitVar_Missing var_190
  loc_72C11C: LitVar_Missing var_170
  loc_72C11F: LitVar_Missing var_150
  loc_72C122: LitVar_Missing var_130
  loc_72C125: LitVar_Missing var_110
  loc_72C128: LitVar_Missing var_F0
  loc_72C12B: LitVar_Missing var_D0
  loc_72C12E: LitVar_Missing var_B0
  loc_72C131: LitStr "&Operaciones de Playa"
  loc_72C134: FStStrCopy var_90
  loc_72C137: FLdRfVar var_90
  loc_72C13A: LitI4 1
  loc_72C13F: PopTmpLdAdStr var_8C
  loc_72C142: LitI2_Byte &HA
  loc_72C144: PopTmpLdAd2 var_86
  loc_72C147: ImpAdLdRf MemVar_74C7D0
  loc_72C14A: NewIfNullPr clsMsg
  loc_72C14D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C152: ILdRf var_1D4
  loc_72C155: FLdPrThis
  loc_72C156: VCallAd Control_ID_FORECOURT
  loc_72C159: FStAdFunc var_1D8
  loc_72C15C: FLdPr var_1D8
  loc_72C15F: Me.Caption = from_stack_1
  loc_72C164: FFreeStr var_90 = ""
  loc_72C16B: FFree1Ad var_1D8
  loc_72C16E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C185: FLdRfVar var_1D4
  loc_72C188: LitVar_Missing var_1D0
  loc_72C18B: LitVar_Missing var_1B0
  loc_72C18E: LitVar_Missing var_190
  loc_72C191: LitVar_Missing var_170
  loc_72C194: LitVar_Missing var_150
  loc_72C197: LitVar_Missing var_130
  loc_72C19A: LitVar_Missing var_110
  loc_72C19D: LitVar_Missing var_F0
  loc_72C1A0: LitVar_Missing var_D0
  loc_72C1A3: LitVar_Missing var_B0
  loc_72C1A6: LitStr "&Cierres"
  loc_72C1A9: FStStrCopy var_90
  loc_72C1AC: FLdRfVar var_90
  loc_72C1AF: LitI4 2
  loc_72C1B4: PopTmpLdAdStr var_8C
  loc_72C1B7: LitI2_Byte &HA
  loc_72C1B9: PopTmpLdAd2 var_86
  loc_72C1BC: ImpAdLdRf MemVar_74C7D0
  loc_72C1BF: NewIfNullPr clsMsg
  loc_72C1C2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C1C7: ILdRf var_1D4
  loc_72C1CA: FLdPrThis
  loc_72C1CB: VCallAd Control_ID_CLOSES
  loc_72C1CE: FStAdFunc var_1D8
  loc_72C1D1: FLdPr var_1D8
  loc_72C1D4: Me.Caption = from_stack_1
  loc_72C1D9: FFreeStr var_90 = ""
  loc_72C1E0: FFree1Ad var_1D8
  loc_72C1E3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C1FA: FLdRfVar var_1D4
  loc_72C1FD: LitVar_Missing var_1D0
  loc_72C200: LitVar_Missing var_1B0
  loc_72C203: LitVar_Missing var_190
  loc_72C206: LitVar_Missing var_170
  loc_72C209: LitVar_Missing var_150
  loc_72C20C: LitVar_Missing var_130
  loc_72C20F: LitVar_Missing var_110
  loc_72C212: LitVar_Missing var_F0
  loc_72C215: LitVar_Missing var_D0
  loc_72C218: LitVar_Missing var_B0
  loc_72C21B: LitStr "&Turno"
  loc_72C21E: FStStrCopy var_90
  loc_72C221: FLdRfVar var_90
  loc_72C224: LitI4 3
  loc_72C229: PopTmpLdAdStr var_8C
  loc_72C22C: LitI2_Byte &HA
  loc_72C22E: PopTmpLdAd2 var_86
  loc_72C231: ImpAdLdRf MemVar_74C7D0
  loc_72C234: NewIfNullPr clsMsg
  loc_72C237: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C23C: ILdRf var_1D4
  loc_72C23F: FLdPrThis
  loc_72C240: VCallAd Control_ID_CLOSE_SHIFT
  loc_72C243: FStAdFunc var_1D8
  loc_72C246: FLdPr var_1D8
  loc_72C249: Me.Caption = from_stack_1
  loc_72C24E: FFreeStr var_90 = ""
  loc_72C255: FFree1Ad var_1D8
  loc_72C258: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C26F: FLdRfVar var_1D4
  loc_72C272: LitVar_Missing var_1D0
  loc_72C275: LitVar_Missing var_1B0
  loc_72C278: LitVar_Missing var_190
  loc_72C27B: LitVar_Missing var_170
  loc_72C27E: LitVar_Missing var_150
  loc_72C281: LitVar_Missing var_130
  loc_72C284: LitVar_Missing var_110
  loc_72C287: LitVar_Missing var_F0
  loc_72C28A: LitVar_Missing var_D0
  loc_72C28D: LitVar_Missing var_B0
  loc_72C290: LitStr "&Diario"
  loc_72C293: FStStrCopy var_90
  loc_72C296: FLdRfVar var_90
  loc_72C299: LitI4 4
  loc_72C29E: PopTmpLdAdStr var_8C
  loc_72C2A1: LitI2_Byte &HA
  loc_72C2A3: PopTmpLdAd2 var_86
  loc_72C2A6: ImpAdLdRf MemVar_74C7D0
  loc_72C2A9: NewIfNullPr clsMsg
  loc_72C2AC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C2B1: ILdRf var_1D4
  loc_72C2B4: FLdPrThis
  loc_72C2B5: VCallAd Control_ID_PCLOSE_DAY
  loc_72C2B8: FStAdFunc var_1D8
  loc_72C2BB: FLdPr var_1D8
  loc_72C2BE: Me.Caption = from_stack_1
  loc_72C2C3: FFreeStr var_90 = ""
  loc_72C2CA: FFree1Ad var_1D8
  loc_72C2CD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C2E4: FLdRfVar var_1D4
  loc_72C2E7: LitVar_Missing var_1D0
  loc_72C2EA: LitVar_Missing var_1B0
  loc_72C2ED: LitVar_Missing var_190
  loc_72C2F0: LitVar_Missing var_170
  loc_72C2F3: LitVar_Missing var_150
  loc_72C2F6: LitVar_Missing var_130
  loc_72C2F9: LitVar_Missing var_110
  loc_72C2FC: LitVar_Missing var_F0
  loc_72C2FF: LitVar_Missing var_D0
  loc_72C302: LitVar_Missing var_B0
  loc_72C305: LitStr "&Mensual"
  loc_72C308: FStStrCopy var_90
  loc_72C30B: FLdRfVar var_90
  loc_72C30E: LitI4 5
  loc_72C313: PopTmpLdAdStr var_8C
  loc_72C316: LitI2_Byte &HA
  loc_72C318: PopTmpLdAd2 var_86
  loc_72C31B: ImpAdLdRf MemVar_74C7D0
  loc_72C31E: NewIfNullPr clsMsg
  loc_72C321: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C326: ILdRf var_1D4
  loc_72C329: FLdPrThis
  loc_72C32A: VCallAd Control_ID_CLOSE_MONTH
  loc_72C32D: FStAdFunc var_1D8
  loc_72C330: FLdPr var_1D8
  loc_72C333: Me.Caption = from_stack_1
  loc_72C338: FFreeStr var_90 = ""
  loc_72C33F: FFree1Ad var_1D8
  loc_72C342: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C359: FLdRfVar var_1D4
  loc_72C35C: LitVar_Missing var_1D0
  loc_72C35F: LitVar_Missing var_1B0
  loc_72C362: LitVar_Missing var_190
  loc_72C365: LitVar_Missing var_170
  loc_72C368: LitVar_Missing var_150
  loc_72C36B: LitVar_Missing var_130
  loc_72C36E: LitVar_Missing var_110
  loc_72C371: LitVar_Missing var_F0
  loc_72C374: LitVar_Missing var_D0
  loc_72C377: LitVar_Missing var_B0
  loc_72C37A: LitStr "&Mantenimiento"
  loc_72C37D: FStStrCopy var_90
  loc_72C380: FLdRfVar var_90
  loc_72C383: LitI4 6
  loc_72C388: PopTmpLdAdStr var_8C
  loc_72C38B: LitI2_Byte &HA
  loc_72C38D: PopTmpLdAd2 var_86
  loc_72C390: ImpAdLdRf MemVar_74C7D0
  loc_72C393: NewIfNullPr clsMsg
  loc_72C396: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C39B: ILdRf var_1D4
  loc_72C39E: FLdPrThis
  loc_72C39F: VCallAd Control_ID_mnuForzarCierreRedXXI
  loc_72C3A2: FStAdFunc var_1D8
  loc_72C3A5: FLdPr var_1D8
  loc_72C3A8: Me.Caption = from_stack_1
  loc_72C3AD: FFreeStr var_90 = ""
  loc_72C3B4: FFree1Ad var_1D8
  loc_72C3B7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C3CE: FLdRfVar var_1D4
  loc_72C3D1: LitVar_Missing var_1D0
  loc_72C3D4: LitVar_Missing var_1B0
  loc_72C3D7: LitVar_Missing var_190
  loc_72C3DA: LitVar_Missing var_170
  loc_72C3DD: LitVar_Missing var_150
  loc_72C3E0: LitVar_Missing var_130
  loc_72C3E3: LitVar_Missing var_110
  loc_72C3E6: LitVar_Missing var_F0
  loc_72C3E9: LitVar_Missing var_D0
  loc_72C3EC: LitVar_Missing var_B0
  loc_72C3EF: LitStr "&Reportes"
  loc_72C3F2: FStStrCopy var_90
  loc_72C3F5: FLdRfVar var_90
  loc_72C3F8: LitI4 7
  loc_72C3FD: PopTmpLdAdStr var_8C
  loc_72C400: LitI2_Byte &HA
  loc_72C402: PopTmpLdAd2 var_86
  loc_72C405: ImpAdLdRf MemVar_74C7D0
  loc_72C408: NewIfNullPr clsMsg
  loc_72C40B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C410: ILdRf var_1D4
  loc_72C413: FLdPrThis
  loc_72C414: VCallAd Control_ID_REPORTS
  loc_72C417: FStAdFunc var_1D8
  loc_72C41A: FLdPr var_1D8
  loc_72C41D: Me.Caption = from_stack_1
  loc_72C422: FFreeStr var_90 = ""
  loc_72C429: FFree1Ad var_1D8
  loc_72C42C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C443: FLdRfVar var_1D4
  loc_72C446: LitVar_Missing var_1D0
  loc_72C449: LitVar_Missing var_1B0
  loc_72C44C: LitVar_Missing var_190
  loc_72C44F: LitVar_Missing var_170
  loc_72C452: LitVar_Missing var_150
  loc_72C455: LitVar_Missing var_130
  loc_72C458: LitVar_Missing var_110
  loc_72C45B: LitVar_Missing var_F0
  loc_72C45E: LitVar_Missing var_D0
  loc_72C461: LitVar_Missing var_B0
  loc_72C464: LitStr "Aplicaciones"
  loc_72C467: FStStrCopy var_90
  loc_72C46A: FLdRfVar var_90
  loc_72C46D: LitI4 &HAE
  loc_72C472: PopTmpLdAdStr var_8C
  loc_72C475: LitI2_Byte &HA
  loc_72C477: PopTmpLdAd2 var_86
  loc_72C47A: ImpAdLdRf MemVar_74C7D0
  loc_72C47D: NewIfNullPr clsMsg
  loc_72C480: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C485: ILdRf var_1D4
  loc_72C488: FLdPrThis
  loc_72C489: VCallAd Control_ID_mnuAplicaciones
  loc_72C48C: FStAdFunc var_1D8
  loc_72C48F: FLdPr var_1D8
  loc_72C492: Me.Caption = from_stack_1
  loc_72C497: FFreeStr var_90 = ""
  loc_72C49E: FFree1Ad var_1D8
  loc_72C4A1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C4B8: FLdRfVar var_1D4
  loc_72C4BB: LitVar_Missing var_1D0
  loc_72C4BE: LitVar_Missing var_1B0
  loc_72C4C1: LitVar_Missing var_190
  loc_72C4C4: LitVar_Missing var_170
  loc_72C4C7: LitVar_Missing var_150
  loc_72C4CA: LitVar_Missing var_130
  loc_72C4CD: LitVar_Missing var_110
  loc_72C4D0: LitVar_Missing var_F0
  loc_72C4D3: LitVar_Missing var_D0
  loc_72C4D6: LitVar_Missing var_B0
  loc_72C4D9: LitStr "&En curso"
  loc_72C4DC: FStStrCopy var_90
  loc_72C4DF: FLdRfVar var_90
  loc_72C4E2: LitI4 8
  loc_72C4E7: PopTmpLdAdStr var_8C
  loc_72C4EA: LitI2_Byte &HA
  loc_72C4EC: PopTmpLdAd2 var_86
  loc_72C4EF: ImpAdLdRf MemVar_74C7D0
  loc_72C4F2: NewIfNullPr clsMsg
  loc_72C4F5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C4FA: ILdRf var_1D4
  loc_72C4FD: FLdPrThis
  loc_72C4FE: VCallAd Control_ID_REPORT_IN_PROGRESS
  loc_72C501: FStAdFunc var_1D8
  loc_72C504: FLdPr var_1D8
  loc_72C507: Me.Caption = from_stack_1
  loc_72C50C: FFreeStr var_90 = ""
  loc_72C513: FFree1Ad var_1D8
  loc_72C516: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C52D: FLdRfVar var_1D4
  loc_72C530: LitVar_Missing var_1D0
  loc_72C533: LitVar_Missing var_1B0
  loc_72C536: LitVar_Missing var_190
  loc_72C539: LitVar_Missing var_170
  loc_72C53C: LitVar_Missing var_150
  loc_72C53F: LitVar_Missing var_130
  loc_72C542: LitVar_Missing var_110
  loc_72C545: LitVar_Missing var_F0
  loc_72C548: LitVar_Missing var_D0
  loc_72C54B: LitVar_Missing var_B0
  loc_72C54E: LitStr "&Turno"
  loc_72C551: FStStrCopy var_90
  loc_72C554: FLdRfVar var_90
  loc_72C557: LitI4 9
  loc_72C55C: PopTmpLdAdStr var_8C
  loc_72C55F: LitI2_Byte &HA
  loc_72C561: PopTmpLdAd2 var_86
  loc_72C564: ImpAdLdRf MemVar_74C7D0
  loc_72C567: NewIfNullPr clsMsg
  loc_72C56A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C56F: ILdRf var_1D4
  loc_72C572: FLdPrThis
  loc_72C573: VCallAd Control_ID_Shift_in_Progress
  loc_72C576: FStAdFunc var_1D8
  loc_72C579: FLdPr var_1D8
  loc_72C57C: Me.Caption = from_stack_1
  loc_72C581: FFreeStr var_90 = ""
  loc_72C588: FFree1Ad var_1D8
  loc_72C58B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C5A2: FLdRfVar var_1D4
  loc_72C5A5: LitVar_Missing var_1D0
  loc_72C5A8: LitVar_Missing var_1B0
  loc_72C5AB: LitVar_Missing var_190
  loc_72C5AE: LitVar_Missing var_170
  loc_72C5B1: LitVar_Missing var_150
  loc_72C5B4: LitVar_Missing var_130
  loc_72C5B7: LitVar_Missing var_110
  loc_72C5BA: LitVar_Missing var_F0
  loc_72C5BD: LitVar_Missing var_D0
  loc_72C5C0: LitVar_Missing var_B0
  loc_72C5C3: LitStr "&Dia"
  loc_72C5C6: FStStrCopy var_90
  loc_72C5C9: FLdRfVar var_90
  loc_72C5CC: LitI4 &HA
  loc_72C5D1: PopTmpLdAdStr var_8C
  loc_72C5D4: LitI2_Byte &HA
  loc_72C5D6: PopTmpLdAd2 var_86
  loc_72C5D9: ImpAdLdRf MemVar_74C7D0
  loc_72C5DC: NewIfNullPr clsMsg
  loc_72C5DF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C5E4: ILdRf var_1D4
  loc_72C5E7: FLdPrThis
  loc_72C5E8: VCallAd Control_ID_Day_in_progress
  loc_72C5EB: FStAdFunc var_1D8
  loc_72C5EE: FLdPr var_1D8
  loc_72C5F1: Me.Caption = from_stack_1
  loc_72C5F6: FFreeStr var_90 = ""
  loc_72C5FD: FFree1Ad var_1D8
  loc_72C600: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C617: FLdRfVar var_1D4
  loc_72C61A: LitVar_Missing var_1D0
  loc_72C61D: LitVar_Missing var_1B0
  loc_72C620: LitVar_Missing var_190
  loc_72C623: LitVar_Missing var_170
  loc_72C626: LitVar_Missing var_150
  loc_72C629: LitVar_Missing var_130
  loc_72C62C: LitVar_Missing var_110
  loc_72C62F: LitVar_Missing var_F0
  loc_72C632: LitVar_Missing var_D0
  loc_72C635: LitVar_Missing var_B0
  loc_72C638: LitStr "&Mes"
  loc_72C63B: FStStrCopy var_90
  loc_72C63E: FLdRfVar var_90
  loc_72C641: LitI4 &HB
  loc_72C646: PopTmpLdAdStr var_8C
  loc_72C649: LitI2_Byte &HA
  loc_72C64B: PopTmpLdAd2 var_86
  loc_72C64E: ImpAdLdRf MemVar_74C7D0
  loc_72C651: NewIfNullPr clsMsg
  loc_72C654: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C659: ILdRf var_1D4
  loc_72C65C: FLdPrThis
  loc_72C65D: VCallAd Control_ID_Month_in_Progress
  loc_72C660: FStAdFunc var_1D8
  loc_72C663: FLdPr var_1D8
  loc_72C666: Me.Caption = from_stack_1
  loc_72C66B: FFreeStr var_90 = ""
  loc_72C672: FFree1Ad var_1D8
  loc_72C675: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C68C: FLdRfVar var_1D4
  loc_72C68F: LitVar_Missing var_1D0
  loc_72C692: LitVar_Missing var_1B0
  loc_72C695: LitVar_Missing var_190
  loc_72C698: LitVar_Missing var_170
  loc_72C69B: LitVar_Missing var_150
  loc_72C69E: LitVar_Missing var_130
  loc_72C6A1: LitVar_Missing var_110
  loc_72C6A4: LitVar_Missing var_F0
  loc_72C6A7: LitVar_Missing var_D0
  loc_72C6AA: LitVar_Missing var_B0
  loc_72C6AD: LitStr "&Turnos"
  loc_72C6B0: FStStrCopy var_90
  loc_72C6B3: FLdRfVar var_90
  loc_72C6B6: LitI4 &HC
  loc_72C6BB: PopTmpLdAdStr var_8C
  loc_72C6BE: LitI2_Byte &HA
  loc_72C6C0: PopTmpLdAd2 var_86
  loc_72C6C3: ImpAdLdRf MemVar_74C7D0
  loc_72C6C6: NewIfNullPr clsMsg
  loc_72C6C9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C6CE: ILdRf var_1D4
  loc_72C6D1: FLdPrThis
  loc_72C6D2: VCallAd Control_ID_REPORT_SHIFT
  loc_72C6D5: FStAdFunc var_1D8
  loc_72C6D8: FLdPr var_1D8
  loc_72C6DB: Me.Caption = from_stack_1
  loc_72C6E0: FFreeStr var_90 = ""
  loc_72C6E7: FFree1Ad var_1D8
  loc_72C6EA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C701: FLdRfVar var_1D4
  loc_72C704: LitVar_Missing var_1D0
  loc_72C707: LitVar_Missing var_1B0
  loc_72C70A: LitVar_Missing var_190
  loc_72C70D: LitVar_Missing var_170
  loc_72C710: LitVar_Missing var_150
  loc_72C713: LitVar_Missing var_130
  loc_72C716: LitVar_Missing var_110
  loc_72C719: LitVar_Missing var_F0
  loc_72C71C: LitVar_Missing var_D0
  loc_72C71F: LitVar_Missing var_B0
  loc_72C722: LitStr "&Diarios"
  loc_72C725: FStStrCopy var_90
  loc_72C728: FLdRfVar var_90
  loc_72C72B: LitI4 &HD
  loc_72C730: PopTmpLdAdStr var_8C
  loc_72C733: LitI2_Byte &HA
  loc_72C735: PopTmpLdAd2 var_86
  loc_72C738: ImpAdLdRf MemVar_74C7D0
  loc_72C73B: NewIfNullPr clsMsg
  loc_72C73E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C743: ILdRf var_1D4
  loc_72C746: FLdPrThis
  loc_72C747: VCallAd Control_ID_REPORT_DAY
  loc_72C74A: FStAdFunc var_1D8
  loc_72C74D: FLdPr var_1D8
  loc_72C750: Me.Caption = from_stack_1
  loc_72C755: FFreeStr var_90 = ""
  loc_72C75C: FFree1Ad var_1D8
  loc_72C75F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C776: FLdRfVar var_1D4
  loc_72C779: LitVar_Missing var_1D0
  loc_72C77C: LitVar_Missing var_1B0
  loc_72C77F: LitVar_Missing var_190
  loc_72C782: LitVar_Missing var_170
  loc_72C785: LitVar_Missing var_150
  loc_72C788: LitVar_Missing var_130
  loc_72C78B: LitVar_Missing var_110
  loc_72C78E: LitVar_Missing var_F0
  loc_72C791: LitVar_Missing var_D0
  loc_72C794: LitVar_Missing var_B0
  loc_72C797: LitStr "&Mensuales"
  loc_72C79A: FStStrCopy var_90
  loc_72C79D: FLdRfVar var_90
  loc_72C7A0: LitI4 &HE
  loc_72C7A5: PopTmpLdAdStr var_8C
  loc_72C7A8: LitI2_Byte &HA
  loc_72C7AA: PopTmpLdAd2 var_86
  loc_72C7AD: ImpAdLdRf MemVar_74C7D0
  loc_72C7B0: NewIfNullPr clsMsg
  loc_72C7B3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C7B8: ILdRf var_1D4
  loc_72C7BB: FLdPrThis
  loc_72C7BC: VCallAd Control_ID_REPORT_MONTH
  loc_72C7BF: FStAdFunc var_1D8
  loc_72C7C2: FLdPr var_1D8
  loc_72C7C5: Me.Caption = from_stack_1
  loc_72C7CA: FFreeStr var_90 = ""
  loc_72C7D1: FFree1Ad var_1D8
  loc_72C7D4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C7EB: FLdRfVar var_1D4
  loc_72C7EE: LitVar_Missing var_1D0
  loc_72C7F1: LitVar_Missing var_1B0
  loc_72C7F4: LitVar_Missing var_190
  loc_72C7F7: LitVar_Missing var_170
  loc_72C7FA: LitVar_Missing var_150
  loc_72C7FD: LitVar_Missing var_130
  loc_72C800: LitVar_Missing var_110
  loc_72C803: LitVar_Missing var_F0
  loc_72C806: LitVar_Missing var_D0
  loc_72C809: LitVar_Missing var_B0
  loc_72C80C: LitStr "&Cierre de Consignado"
  loc_72C80F: FStStrCopy var_90
  loc_72C812: FLdRfVar var_90
  loc_72C815: LitI4 &HF
  loc_72C81A: PopTmpLdAdStr var_8C
  loc_72C81D: LitI2_Byte &HA
  loc_72C81F: PopTmpLdAd2 var_86
  loc_72C822: ImpAdLdRf MemVar_74C7D0
  loc_72C825: NewIfNullPr clsMsg
  loc_72C828: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C82D: ILdRf var_1D4
  loc_72C830: FLdPrThis
  loc_72C831: VCallAd Control_ID_mnuCierreRed21
  loc_72C834: FStAdFunc var_1D8
  loc_72C837: FLdPr var_1D8
  loc_72C83A: Me.Caption = from_stack_1
  loc_72C83F: FFreeStr var_90 = ""
  loc_72C846: FFree1Ad var_1D8
  loc_72C849: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C860: FLdRfVar var_1D4
  loc_72C863: LitVar_Missing var_1D0
  loc_72C866: LitVar_Missing var_1B0
  loc_72C869: LitVar_Missing var_190
  loc_72C86C: LitVar_Missing var_170
  loc_72C86F: LitVar_Missing var_150
  loc_72C872: LitVar_Missing var_130
  loc_72C875: LitVar_Missing var_110
  loc_72C878: LitVar_Missing var_F0
  loc_72C87B: LitVar_Missing var_D0
  loc_72C87E: LitVar_Missing var_B0
  loc_72C881: LitStr "Consolidación Mensual Red &XXI"
  loc_72C884: FStStrCopy var_90
  loc_72C887: FLdRfVar var_90
  loc_72C88A: LitI4 &H10
  loc_72C88F: PopTmpLdAdStr var_8C
  loc_72C892: LitI2_Byte &HA
  loc_72C894: PopTmpLdAd2 var_86
  loc_72C897: ImpAdLdRf MemVar_74C7D0
  loc_72C89A: NewIfNullPr clsMsg
  loc_72C89D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C8A2: ILdRf var_1D4
  loc_72C8A5: FLdPrThis
  loc_72C8A6: VCallAd Control_ID_mnuCierresRed21Mensuales
  loc_72C8A9: FStAdFunc var_1D8
  loc_72C8AC: FLdPr var_1D8
  loc_72C8AF: Me.Caption = from_stack_1
  loc_72C8B4: FFreeStr var_90 = ""
  loc_72C8BB: FFree1Ad var_1D8
  loc_72C8BE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C8D5: FLdRfVar var_1D4
  loc_72C8D8: LitVar_Missing var_1D0
  loc_72C8DB: LitVar_Missing var_1B0
  loc_72C8DE: LitVar_Missing var_190
  loc_72C8E1: LitVar_Missing var_170
  loc_72C8E4: LitVar_Missing var_150
  loc_72C8E7: LitVar_Missing var_130
  loc_72C8EA: LitVar_Missing var_110
  loc_72C8ED: LitVar_Missing var_F0
  loc_72C8F0: LitVar_Missing var_D0
  loc_72C8F3: LitVar_Missing var_B0
  loc_72C8F6: LitStr "Débitos &Bancários"
  loc_72C8F9: FStStrCopy var_90
  loc_72C8FC: FLdRfVar var_90
  loc_72C8FF: LitI4 &H11
  loc_72C904: PopTmpLdAdStr var_8C
  loc_72C907: LitI2_Byte &HA
  loc_72C909: PopTmpLdAd2 var_86
  loc_72C90C: ImpAdLdRf MemVar_74C7D0
  loc_72C90F: NewIfNullPr clsMsg
  loc_72C912: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C917: ILdRf var_1D4
  loc_72C91A: FLdPrThis
  loc_72C91B: VCallAd Control_ID_Debitos
  loc_72C91E: FStAdFunc var_1D8
  loc_72C921: FLdPr var_1D8
  loc_72C924: Me.Caption = from_stack_1
  loc_72C929: FFreeStr var_90 = ""
  loc_72C930: FFree1Ad var_1D8
  loc_72C933: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C94A: FLdRfVar var_1D4
  loc_72C94D: LitVar_Missing var_1D0
  loc_72C950: LitVar_Missing var_1B0
  loc_72C953: LitVar_Missing var_190
  loc_72C956: LitVar_Missing var_170
  loc_72C959: LitVar_Missing var_150
  loc_72C95C: LitVar_Missing var_130
  loc_72C95F: LitVar_Missing var_110
  loc_72C962: LitVar_Missing var_F0
  loc_72C965: LitVar_Missing var_D0
  loc_72C968: LitVar_Missing var_B0
  loc_72C96B: LitStr "C&ontrol de Existencias de Productos"
  loc_72C96E: FStStrCopy var_90
  loc_72C971: FLdRfVar var_90
  loc_72C974: LitI4 &H12
  loc_72C979: PopTmpLdAdStr var_8C
  loc_72C97C: LitI2_Byte &HA
  loc_72C97E: PopTmpLdAd2 var_86
  loc_72C981: ImpAdLdRf MemVar_74C7D0
  loc_72C984: NewIfNullPr clsMsg
  loc_72C987: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72C98C: ILdRf var_1D4
  loc_72C98F: FLdPrThis
  loc_72C990: VCallAd Control_ID_mnuExistecias
  loc_72C993: FStAdFunc var_1D8
  loc_72C996: FLdPr var_1D8
  loc_72C999: Me.Caption = from_stack_1
  loc_72C99E: FFreeStr var_90 = ""
  loc_72C9A5: FFree1Ad var_1D8
  loc_72C9A8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72C9BF: FLdRfVar var_1D4
  loc_72C9C2: LitVar_Missing var_1D0
  loc_72C9C5: LitVar_Missing var_1B0
  loc_72C9C8: LitVar_Missing var_190
  loc_72C9CB: LitVar_Missing var_170
  loc_72C9CE: LitVar_Missing var_150
  loc_72C9D1: LitVar_Missing var_130
  loc_72C9D4: LitVar_Missing var_110
  loc_72C9D7: LitVar_Missing var_F0
  loc_72C9DA: LitVar_Missing var_D0
  loc_72C9DD: LitVar_Missing var_B0
  loc_72C9E0: LitStr "&Nota de Liquidación de Combustibles"
  loc_72C9E3: FStStrCopy var_90
  loc_72C9E6: FLdRfVar var_90
  loc_72C9E9: LitI4 &H13
  loc_72C9EE: PopTmpLdAdStr var_8C
  loc_72C9F1: LitI2_Byte &HA
  loc_72C9F3: PopTmpLdAd2 var_86
  loc_72C9F6: ImpAdLdRf MemVar_74C7D0
  loc_72C9F9: NewIfNullPr clsMsg
  loc_72C9FC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CA01: ILdRf var_1D4
  loc_72CA04: FLdPrThis
  loc_72CA05: VCallAd Control_ID_NotaComb
  loc_72CA08: FStAdFunc var_1D8
  loc_72CA0B: FLdPr var_1D8
  loc_72CA0E: Me.Caption = from_stack_1
  loc_72CA13: FFreeStr var_90 = ""
  loc_72CA1A: FFree1Ad var_1D8
  loc_72CA1D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CA34: FLdRfVar var_1D4
  loc_72CA37: LitVar_Missing var_1D0
  loc_72CA3A: LitVar_Missing var_1B0
  loc_72CA3D: LitVar_Missing var_190
  loc_72CA40: LitVar_Missing var_170
  loc_72CA43: LitVar_Missing var_150
  loc_72CA46: LitVar_Missing var_130
  loc_72CA49: LitVar_Missing var_110
  loc_72CA4C: LitVar_Missing var_F0
  loc_72CA4F: LitVar_Missing var_D0
  loc_72CA52: LitVar_Missing var_B0
  loc_72CA55: LitStr "&Cuenta Líquido Producto"
  loc_72CA58: FStStrCopy var_90
  loc_72CA5B: FLdRfVar var_90
  loc_72CA5E: LitI4 &H14
  loc_72CA63: PopTmpLdAdStr var_8C
  loc_72CA66: LitI2_Byte &HA
  loc_72CA68: PopTmpLdAd2 var_86
  loc_72CA6B: ImpAdLdRf MemVar_74C7D0
  loc_72CA6E: NewIfNullPr clsMsg
  loc_72CA71: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CA76: ILdRf var_1D4
  loc_72CA79: FLdPrThis
  loc_72CA7A: VCallAd Control_ID_Cuenta_Liquido_Producto
  loc_72CA7D: FStAdFunc var_1D8
  loc_72CA80: FLdPr var_1D8
  loc_72CA83: Me.Caption = from_stack_1
  loc_72CA88: FFreeStr var_90 = ""
  loc_72CA8F: FFree1Ad var_1D8
  loc_72CA92: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CAA9: FLdRfVar var_1D4
  loc_72CAAC: LitVar_Missing var_1D0
  loc_72CAAF: LitVar_Missing var_1B0
  loc_72CAB2: LitVar_Missing var_190
  loc_72CAB5: LitVar_Missing var_170
  loc_72CAB8: LitVar_Missing var_150
  loc_72CABB: LitVar_Missing var_130
  loc_72CABE: LitVar_Missing var_110
  loc_72CAC1: LitVar_Missing var_F0
  loc_72CAC4: LitVar_Missing var_D0
  loc_72CAC7: LitVar_Missing var_B0
  loc_72CACA: LitStr "&Anexo III"
  loc_72CACD: FStStrCopy var_90
  loc_72CAD0: FLdRfVar var_90
  loc_72CAD3: LitI4 &H15
  loc_72CAD8: PopTmpLdAdStr var_8C
  loc_72CADB: LitI2_Byte &HA
  loc_72CADD: PopTmpLdAd2 var_86
  loc_72CAE0: ImpAdLdRf MemVar_74C7D0
  loc_72CAE3: NewIfNullPr clsMsg
  loc_72CAE6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CAEB: ILdRf var_1D4
  loc_72CAEE: FLdPrThis
  loc_72CAEF: VCallAd Control_ID_MenuAnexoIII
  loc_72CAF2: FStAdFunc var_1D8
  loc_72CAF5: FLdPr var_1D8
  loc_72CAF8: Me.Caption = from_stack_1
  loc_72CAFD: FFreeStr var_90 = ""
  loc_72CB04: FFree1Ad var_1D8
  loc_72CB07: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CB1E: FLdRfVar var_1D4
  loc_72CB21: LitVar_Missing var_1D0
  loc_72CB24: LitVar_Missing var_1B0
  loc_72CB27: LitVar_Missing var_190
  loc_72CB2A: LitVar_Missing var_170
  loc_72CB2D: LitVar_Missing var_150
  loc_72CB30: LitVar_Missing var_130
  loc_72CB33: LitVar_Missing var_110
  loc_72CB36: LitVar_Missing var_F0
  loc_72CB39: LitVar_Missing var_D0
  loc_72CB3C: LitVar_Missing var_B0
  loc_72CB3F: LitStr "Reporte de Gr&upo de Surtidores"
  loc_72CB42: FStStrCopy var_90
  loc_72CB45: FLdRfVar var_90
  loc_72CB48: LitI4 &H16
  loc_72CB4D: PopTmpLdAdStr var_8C
  loc_72CB50: LitI2_Byte &HA
  loc_72CB52: PopTmpLdAd2 var_86
  loc_72CB55: ImpAdLdRf MemVar_74C7D0
  loc_72CB58: NewIfNullPr clsMsg
  loc_72CB5B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CB60: ILdRf var_1D4
  loc_72CB63: FLdPrThis
  loc_72CB64: VCallAd Control_ID_mnuReporteGrupo
  loc_72CB67: FStAdFunc var_1D8
  loc_72CB6A: FLdPr var_1D8
  loc_72CB6D: Me.Caption = from_stack_1
  loc_72CB72: FFreeStr var_90 = ""
  loc_72CB79: FFree1Ad var_1D8
  loc_72CB7C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CB93: FLdRfVar var_1D4
  loc_72CB96: LitVar_Missing var_1D0
  loc_72CB99: LitVar_Missing var_1B0
  loc_72CB9C: LitVar_Missing var_190
  loc_72CB9F: LitVar_Missing var_170
  loc_72CBA2: LitVar_Missing var_150
  loc_72CBA5: LitVar_Missing var_130
  loc_72CBA8: LitVar_Missing var_110
  loc_72CBAB: LitVar_Missing var_F0
  loc_72CBAE: LitVar_Missing var_D0
  loc_72CBB1: LitVar_Missing var_B0
  loc_72CBB4: LitStr "Camión C&isterna"
  loc_72CBB7: FStStrCopy var_90
  loc_72CBBA: FLdRfVar var_90
  loc_72CBBD: LitI4 &H17
  loc_72CBC2: PopTmpLdAdStr var_8C
  loc_72CBC5: LitI2_Byte &HA
  loc_72CBC7: PopTmpLdAd2 var_86
  loc_72CBCA: ImpAdLdRf MemVar_74C7D0
  loc_72CBCD: NewIfNullPr clsMsg
  loc_72CBD0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CBD5: ILdRf var_1D4
  loc_72CBD8: FLdPrThis
  loc_72CBD9: VCallAd Control_ID_mnuCamionCisterna
  loc_72CBDC: FStAdFunc var_1D8
  loc_72CBDF: FLdPr var_1D8
  loc_72CBE2: Me.Caption = from_stack_1
  loc_72CBE7: FFreeStr var_90 = ""
  loc_72CBEE: FFree1Ad var_1D8
  loc_72CBF1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CC08: FLdRfVar var_1D4
  loc_72CC0B: LitVar_Missing var_1D0
  loc_72CC0E: LitVar_Missing var_1B0
  loc_72CC11: LitVar_Missing var_190
  loc_72CC14: LitVar_Missing var_170
  loc_72CC17: LitVar_Missing var_150
  loc_72CC1A: LitVar_Missing var_130
  loc_72CC1D: LitVar_Missing var_110
  loc_72CC20: LitVar_Missing var_F0
  loc_72CC23: LitVar_Missing var_D0
  loc_72CC26: LitVar_Missing var_B0
  loc_72CC29: LitStr "&Gráficos"
  loc_72CC2C: FStStrCopy var_90
  loc_72CC2F: FLdRfVar var_90
  loc_72CC32: LitI4 &H18
  loc_72CC37: PopTmpLdAdStr var_8C
  loc_72CC3A: LitI2_Byte &HA
  loc_72CC3C: PopTmpLdAd2 var_86
  loc_72CC3F: ImpAdLdRf MemVar_74C7D0
  loc_72CC42: NewIfNullPr clsMsg
  loc_72CC45: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CC4A: ILdRf var_1D4
  loc_72CC4D: FLdPrThis
  loc_72CC4E: VCallAd Control_ID_Estadisticas_menu
  loc_72CC51: FStAdFunc var_1D8
  loc_72CC54: FLdPr var_1D8
  loc_72CC57: Me.Caption = from_stack_1
  loc_72CC5C: FFreeStr var_90 = ""
  loc_72CC63: FFree1Ad var_1D8
  loc_72CC66: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CC7D: FLdRfVar var_1D4
  loc_72CC80: LitVar_Missing var_1D0
  loc_72CC83: LitVar_Missing var_1B0
  loc_72CC86: LitVar_Missing var_190
  loc_72CC89: LitVar_Missing var_170
  loc_72CC8C: LitVar_Missing var_150
  loc_72CC8F: LitVar_Missing var_130
  loc_72CC92: LitVar_Missing var_110
  loc_72CC95: LitVar_Missing var_F0
  loc_72CC98: LitVar_Missing var_D0
  loc_72CC9B: LitVar_Missing var_B0
  loc_72CC9E: LitStr "De&spachos"
  loc_72CCA1: FStStrCopy var_90
  loc_72CCA4: FLdRfVar var_90
  loc_72CCA7: LitI4 &H19
  loc_72CCAC: PopTmpLdAdStr var_8C
  loc_72CCAF: LitI2_Byte &HA
  loc_72CCB1: PopTmpLdAd2 var_86
  loc_72CCB4: ImpAdLdRf MemVar_74C7D0
  loc_72CCB7: NewIfNullPr clsMsg
  loc_72CCBA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CCBF: ILdRf var_1D4
  loc_72CCC2: FLdPrThis
  loc_72CCC3: VCallAd Control_ID_Despachos
  loc_72CCC6: FStAdFunc var_1D8
  loc_72CCC9: FLdPr var_1D8
  loc_72CCCC: Me.Caption = from_stack_1
  loc_72CCD1: FFreeStr var_90 = ""
  loc_72CCD8: FFree1Ad var_1D8
  loc_72CCDB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CCF2: FLdRfVar var_1D4
  loc_72CCF5: LitVar_Missing var_1D0
  loc_72CCF8: LitVar_Missing var_1B0
  loc_72CCFB: LitVar_Missing var_190
  loc_72CCFE: LitVar_Missing var_170
  loc_72CD01: LitVar_Missing var_150
  loc_72CD04: LitVar_Missing var_130
  loc_72CD07: LitVar_Missing var_110
  loc_72CD0A: LitVar_Missing var_F0
  loc_72CD0D: LitVar_Missing var_D0
  loc_72CD10: LitVar_Missing var_B0
  loc_72CD13: LitStr "&Listado CDFP"
  loc_72CD16: FStStrCopy var_90
  loc_72CD19: FLdRfVar var_90
  loc_72CD1C: LitI4 &H1A
  loc_72CD21: PopTmpLdAdStr var_8C
  loc_72CD24: LitI2_Byte &HA
  loc_72CD26: PopTmpLdAd2 var_86
  loc_72CD29: ImpAdLdRf MemVar_74C7D0
  loc_72CD2C: NewIfNullPr clsMsg
  loc_72CD2F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CD34: ILdRf var_1D4
  loc_72CD37: FLdPrThis
  loc_72CD38: VCallAd Control_ID_mnuListadoCTF
  loc_72CD3B: FStAdFunc var_1D8
  loc_72CD3E: FLdPr var_1D8
  loc_72CD41: Me.Caption = from_stack_1
  loc_72CD46: FFreeStr var_90 = ""
  loc_72CD4D: FFree1Ad var_1D8
  loc_72CD50: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CD67: FLdRfVar var_1D4
  loc_72CD6A: LitVar_Missing var_1D0
  loc_72CD6D: LitVar_Missing var_1B0
  loc_72CD70: LitVar_Missing var_190
  loc_72CD73: LitVar_Missing var_170
  loc_72CD76: LitVar_Missing var_150
  loc_72CD79: LitVar_Missing var_130
  loc_72CD7C: LitVar_Missing var_110
  loc_72CD7F: LitVar_Missing var_F0
  loc_72CD82: LitVar_Missing var_D0
  loc_72CD85: LitVar_Missing var_B0
  loc_72CD88: LitStr "T&otales de Playeros"
  loc_72CD8B: FStStrCopy var_90
  loc_72CD8E: FLdRfVar var_90
  loc_72CD91: LitI4 &H1B
  loc_72CD96: PopTmpLdAdStr var_8C
  loc_72CD99: LitI2_Byte &HA
  loc_72CD9B: PopTmpLdAd2 var_86
  loc_72CD9E: ImpAdLdRf MemVar_74C7D0
  loc_72CDA1: NewIfNullPr clsMsg
  loc_72CDA4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CDA9: ILdRf var_1D4
  loc_72CDAC: FLdPrThis
  loc_72CDAD: VCallAd Control_ID_mnuTotalesCTF
  loc_72CDB0: FStAdFunc var_1D8
  loc_72CDB3: FLdPr var_1D8
  loc_72CDB6: Me.Caption = from_stack_1
  loc_72CDBB: FFreeStr var_90 = ""
  loc_72CDC2: FFree1Ad var_1D8
  loc_72CDC5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CDDC: FLdRfVar var_1D4
  loc_72CDDF: LitVar_Missing var_1D0
  loc_72CDE2: LitVar_Missing var_1B0
  loc_72CDE5: LitVar_Missing var_190
  loc_72CDE8: LitVar_Missing var_170
  loc_72CDEB: LitVar_Missing var_150
  loc_72CDEE: LitVar_Missing var_130
  loc_72CDF1: LitVar_Missing var_110
  loc_72CDF4: LitVar_Missing var_F0
  loc_72CDF7: LitVar_Missing var_D0
  loc_72CDFA: LitVar_Missing var_B0
  loc_72CDFD: LitStr "Estadisticas de &Playeros"
  loc_72CE00: FStStrCopy var_90
  loc_72CE03: FLdRfVar var_90
  loc_72CE06: LitI4 &H1C
  loc_72CE0B: PopTmpLdAdStr var_8C
  loc_72CE0E: LitI2_Byte &HA
  loc_72CE10: PopTmpLdAd2 var_86
  loc_72CE13: ImpAdLdRf MemVar_74C7D0
  loc_72CE16: NewIfNullPr clsMsg
  loc_72CE19: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CE1E: ILdRf var_1D4
  loc_72CE21: FLdPrThis
  loc_72CE22: VCallAd Control_ID_mnuEstadisticasCTF
  loc_72CE25: FStAdFunc var_1D8
  loc_72CE28: FLdPr var_1D8
  loc_72CE2B: Me.Caption = from_stack_1
  loc_72CE30: FFreeStr var_90 = ""
  loc_72CE37: FFree1Ad var_1D8
  loc_72CE3A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CE51: FLdRfVar var_1D4
  loc_72CE54: LitVar_Missing var_1D0
  loc_72CE57: LitVar_Missing var_1B0
  loc_72CE5A: LitVar_Missing var_190
  loc_72CE5D: LitVar_Missing var_170
  loc_72CE60: LitVar_Missing var_150
  loc_72CE63: LitVar_Missing var_130
  loc_72CE66: LitVar_Missing var_110
  loc_72CE69: LitVar_Missing var_F0
  loc_72CE6C: LitVar_Missing var_D0
  loc_72CE6F: LitVar_Missing var_B0
  loc_72CE72: LitStr "Datos de Comunicació&n"
  loc_72CE75: FStStrCopy var_90
  loc_72CE78: FLdRfVar var_90
  loc_72CE7B: LitI4 &H1D
  loc_72CE80: PopTmpLdAdStr var_8C
  loc_72CE83: LitI2_Byte &HA
  loc_72CE85: PopTmpLdAd2 var_86
  loc_72CE88: ImpAdLdRf MemVar_74C7D0
  loc_72CE8B: NewIfNullPr clsMsg
  loc_72CE8E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CE93: ILdRf var_1D4
  loc_72CE96: FLdPrThis
  loc_72CE97: VCallAd Control_ID_mnuDatosComunicacion
  loc_72CE9A: FStAdFunc var_1D8
  loc_72CE9D: FLdPr var_1D8
  loc_72CEA0: Me.Caption = from_stack_1
  loc_72CEA5: FFreeStr var_90 = ""
  loc_72CEAC: FFree1Ad var_1D8
  loc_72CEAF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CEC6: FLdRfVar var_1D4
  loc_72CEC9: LitVar_Missing var_1D0
  loc_72CECC: LitVar_Missing var_1B0
  loc_72CECF: LitVar_Missing var_190
  loc_72CED2: LitVar_Missing var_170
  loc_72CED5: LitVar_Missing var_150
  loc_72CED8: LitVar_Missing var_130
  loc_72CEDB: LitVar_Missing var_110
  loc_72CEDE: LitVar_Missing var_F0
  loc_72CEE1: LitVar_Missing var_D0
  loc_72CEE4: LitVar_Missing var_B0
  loc_72CEE7: LitStr "&Precios"
  loc_72CEEA: FStStrCopy var_90
  loc_72CEED: FLdRfVar var_90
  loc_72CEF0: LitI4 &H1F
  loc_72CEF5: PopTmpLdAdStr var_8C
  loc_72CEF8: LitI2_Byte &HA
  loc_72CEFA: PopTmpLdAd2 var_86
  loc_72CEFD: ImpAdLdRf MemVar_74C7D0
  loc_72CF00: NewIfNullPr clsMsg
  loc_72CF03: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CF08: ILdRf var_1D4
  loc_72CF0B: FLdPrThis
  loc_72CF0C: VCallAd Control_ID_menuPrecios
  loc_72CF0F: FStAdFunc var_1D8
  loc_72CF12: FLdPr var_1D8
  loc_72CF15: Me.Caption = from_stack_1
  loc_72CF1A: FFreeStr var_90 = ""
  loc_72CF21: FFree1Ad var_1D8
  loc_72CF24: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CF3B: FLdRfVar var_1D4
  loc_72CF3E: LitVar_Missing var_1D0
  loc_72CF41: LitVar_Missing var_1B0
  loc_72CF44: LitVar_Missing var_190
  loc_72CF47: LitVar_Missing var_170
  loc_72CF4A: LitVar_Missing var_150
  loc_72CF4D: LitVar_Missing var_130
  loc_72CF50: LitVar_Missing var_110
  loc_72CF53: LitVar_Missing var_F0
  loc_72CF56: LitVar_Missing var_D0
  loc_72CF59: LitVar_Missing var_B0
  loc_72CF5C: LitStr "Programación de Precios"
  loc_72CF5F: FStStrCopy var_90
  loc_72CF62: FLdRfVar var_90
  loc_72CF65: LitI4 &H20
  loc_72CF6A: PopTmpLdAdStr var_8C
  loc_72CF6D: LitI2_Byte &HA
  loc_72CF6F: PopTmpLdAd2 var_86
  loc_72CF72: ImpAdLdRf MemVar_74C7D0
  loc_72CF75: NewIfNullPr clsMsg
  loc_72CF78: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CF7D: ILdRf var_1D4
  loc_72CF80: FLdPrThis
  loc_72CF81: VCallAd Control_ID_SETUP_PPU
  loc_72CF84: FStAdFunc var_1D8
  loc_72CF87: FLdPr var_1D8
  loc_72CF8A: Me.Caption = from_stack_1
  loc_72CF8F: FFreeStr var_90 = ""
  loc_72CF96: FFree1Ad var_1D8
  loc_72CF99: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72CFB0: FLdRfVar var_1D4
  loc_72CFB3: LitVar_Missing var_1D0
  loc_72CFB6: LitVar_Missing var_1B0
  loc_72CFB9: LitVar_Missing var_190
  loc_72CFBC: LitVar_Missing var_170
  loc_72CFBF: LitVar_Missing var_150
  loc_72CFC2: LitVar_Missing var_130
  loc_72CFC5: LitVar_Missing var_110
  loc_72CFC8: LitVar_Missing var_F0
  loc_72CFCB: LitVar_Missing var_D0
  loc_72CFCE: LitVar_Missing var_B0
  loc_72CFD1: LitStr "Precios de la &Competencia"
  loc_72CFD4: FStStrCopy var_90
  loc_72CFD7: FLdRfVar var_90
  loc_72CFDA: LitI4 &H21
  loc_72CFDF: PopTmpLdAdStr var_8C
  loc_72CFE2: LitI2_Byte &HA
  loc_72CFE4: PopTmpLdAd2 var_86
  loc_72CFE7: ImpAdLdRf MemVar_74C7D0
  loc_72CFEA: NewIfNullPr clsMsg
  loc_72CFED: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72CFF2: ILdRf var_1D4
  loc_72CFF5: FLdPrThis
  loc_72CFF6: VCallAd Control_ID_PreciosComp
  loc_72CFF9: FStAdFunc var_1D8
  loc_72CFFC: FLdPr var_1D8
  loc_72CFFF: Me.Caption = from_stack_1
  loc_72D004: FFreeStr var_90 = ""
  loc_72D00B: FFree1Ad var_1D8
  loc_72D00E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D025: FLdRfVar var_1D4
  loc_72D028: LitVar_Missing var_1D0
  loc_72D02B: LitVar_Missing var_1B0
  loc_72D02E: LitVar_Missing var_190
  loc_72D031: LitVar_Missing var_170
  loc_72D034: LitVar_Missing var_150
  loc_72D037: LitVar_Missing var_130
  loc_72D03A: LitVar_Missing var_110
  loc_72D03D: LitVar_Missing var_F0
  loc_72D040: LitVar_Missing var_D0
  loc_72D043: LitVar_Missing var_B0
  loc_72D046: LitStr "P&recio Promedio Ponderado"
  loc_72D049: FStStrCopy var_90
  loc_72D04C: FLdRfVar var_90
  loc_72D04F: LitI4 &H22
  loc_72D054: PopTmpLdAdStr var_8C
  loc_72D057: LitI2_Byte &HA
  loc_72D059: PopTmpLdAd2 var_86
  loc_72D05C: ImpAdLdRf MemVar_74C7D0
  loc_72D05F: NewIfNullPr clsMsg
  loc_72D062: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D067: ILdRf var_1D4
  loc_72D06A: FLdPrThis
  loc_72D06B: VCallAd Control_ID_mnuPPP
  loc_72D06E: FStAdFunc var_1D8
  loc_72D071: FLdPr var_1D8
  loc_72D074: Me.Caption = from_stack_1
  loc_72D079: FFreeStr var_90 = ""
  loc_72D080: FFree1Ad var_1D8
  loc_72D083: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D09A: FLdRfVar var_1D4
  loc_72D09D: LitVar_Missing var_1D0
  loc_72D0A0: LitVar_Missing var_1B0
  loc_72D0A3: LitVar_Missing var_190
  loc_72D0A6: LitVar_Missing var_170
  loc_72D0A9: LitVar_Missing var_150
  loc_72D0AC: LitVar_Missing var_130
  loc_72D0AF: LitVar_Missing var_110
  loc_72D0B2: LitVar_Missing var_F0
  loc_72D0B5: LitVar_Missing var_D0
  loc_72D0B8: LitVar_Missing var_B0
  loc_72D0BB: LitStr "Niveles de Precio"
  loc_72D0BE: FStStrCopy var_90
  loc_72D0C1: FLdRfVar var_90
  loc_72D0C4: LitI4 &H23
  loc_72D0C9: PopTmpLdAdStr var_8C
  loc_72D0CC: LitI2_Byte &HA
  loc_72D0CE: PopTmpLdAd2 var_86
  loc_72D0D1: ImpAdLdRf MemVar_74C7D0
  loc_72D0D4: NewIfNullPr clsMsg
  loc_72D0D7: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D0DC: ILdRf var_1D4
  loc_72D0DF: FLdPrThis
  loc_72D0E0: VCallAd Control_ID_PriceLevel
  loc_72D0E3: FStAdFunc var_1D8
  loc_72D0E6: FLdPr var_1D8
  loc_72D0E9: Me.Caption = from_stack_1
  loc_72D0EE: FFreeStr var_90 = ""
  loc_72D0F5: FFree1Ad var_1D8
  loc_72D0F8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D10F: FLdRfVar var_1D4
  loc_72D112: LitVar_Missing var_1D0
  loc_72D115: LitVar_Missing var_1B0
  loc_72D118: LitVar_Missing var_190
  loc_72D11B: LitVar_Missing var_170
  loc_72D11E: LitVar_Missing var_150
  loc_72D121: LitVar_Missing var_130
  loc_72D124: LitVar_Missing var_110
  loc_72D127: LitVar_Missing var_F0
  loc_72D12A: LitVar_Missing var_D0
  loc_72D12D: LitVar_Missing var_B0
  loc_72D130: LitStr "Precios P&endientes"
  loc_72D133: FStStrCopy var_90
  loc_72D136: FLdRfVar var_90
  loc_72D139: LitI4 &H24
  loc_72D13E: PopTmpLdAdStr var_8C
  loc_72D141: LitI2_Byte &HA
  loc_72D143: PopTmpLdAd2 var_86
  loc_72D146: ImpAdLdRf MemVar_74C7D0
  loc_72D149: NewIfNullPr clsMsg
  loc_72D14C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D151: ILdRf var_1D4
  loc_72D154: FLdPrThis
  loc_72D155: VCallAd Control_ID_PRECIOS_PENDIENTES
  loc_72D158: FStAdFunc var_1D8
  loc_72D15B: FLdPr var_1D8
  loc_72D15E: Me.Caption = from_stack_1
  loc_72D163: FFreeStr var_90 = ""
  loc_72D16A: FFree1Ad var_1D8
  loc_72D16D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D184: FLdRfVar var_1D4
  loc_72D187: LitVar_Missing var_1D0
  loc_72D18A: LitVar_Missing var_1B0
  loc_72D18D: LitVar_Missing var_190
  loc_72D190: LitVar_Missing var_170
  loc_72D193: LitVar_Missing var_150
  loc_72D196: LitVar_Missing var_130
  loc_72D199: LitVar_Missing var_110
  loc_72D19C: LitVar_Missing var_F0
  loc_72D19F: LitVar_Missing var_D0
  loc_72D1A2: LitVar_Missing var_B0
  loc_72D1A5: LitStr "&Comisiones"
  loc_72D1A8: FStStrCopy var_90
  loc_72D1AB: FLdRfVar var_90
  loc_72D1AE: LitI4 &H25
  loc_72D1B3: PopTmpLdAdStr var_8C
  loc_72D1B6: LitI2_Byte &HA
  loc_72D1B8: PopTmpLdAd2 var_86
  loc_72D1BB: ImpAdLdRf MemVar_74C7D0
  loc_72D1BE: NewIfNullPr clsMsg
  loc_72D1C1: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D1C6: ILdRf var_1D4
  loc_72D1C9: FLdPrThis
  loc_72D1CA: VCallAd Control_ID_Comisiones
  loc_72D1CD: FStAdFunc var_1D8
  loc_72D1D0: FLdPr var_1D8
  loc_72D1D3: Me.Caption = from_stack_1
  loc_72D1D8: FFreeStr var_90 = ""
  loc_72D1DF: FFree1Ad var_1D8
  loc_72D1E2: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D1F9: FLdRfVar var_1D4
  loc_72D1FC: LitVar_Missing var_1D0
  loc_72D1FF: LitVar_Missing var_1B0
  loc_72D202: LitVar_Missing var_190
  loc_72D205: LitVar_Missing var_170
  loc_72D208: LitVar_Missing var_150
  loc_72D20B: LitVar_Missing var_130
  loc_72D20E: LitVar_Missing var_110
  loc_72D211: LitVar_Missing var_F0
  loc_72D214: LitVar_Missing var_D0
  loc_72D217: LitVar_Missing var_B0
  loc_72D21A: LitStr "&Opción Decimal"
  loc_72D21D: FStStrCopy var_90
  loc_72D220: FLdRfVar var_90
  loc_72D223: LitI4 &H26
  loc_72D228: PopTmpLdAdStr var_8C
  loc_72D22B: LitI2_Byte &HA
  loc_72D22D: PopTmpLdAd2 var_86
  loc_72D230: ImpAdLdRf MemVar_74C7D0
  loc_72D233: NewIfNullPr clsMsg
  loc_72D236: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D23B: ILdRf var_1D4
  loc_72D23E: FLdPrThis
  loc_72D23F: VCallAd Control_ID_SETUP_DECIMAL
  loc_72D242: FStAdFunc var_1D8
  loc_72D245: FLdPr var_1D8
  loc_72D248: Me.Caption = from_stack_1
  loc_72D24D: FFreeStr var_90 = ""
  loc_72D254: FFree1Ad var_1D8
  loc_72D257: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D26E: FLdRfVar var_1D4
  loc_72D271: LitVar_Missing var_1D0
  loc_72D274: LitVar_Missing var_1B0
  loc_72D277: LitVar_Missing var_190
  loc_72D27A: LitVar_Missing var_170
  loc_72D27D: LitVar_Missing var_150
  loc_72D280: LitVar_Missing var_130
  loc_72D283: LitVar_Missing var_110
  loc_72D286: LitVar_Missing var_F0
  loc_72D289: LitVar_Missing var_D0
  loc_72D28C: LitVar_Missing var_B0
  loc_72D28F: LitStr "&Tiempo de Espera"
  loc_72D292: FStStrCopy var_90
  loc_72D295: FLdRfVar var_90
  loc_72D298: LitI4 &H27
  loc_72D29D: PopTmpLdAdStr var_8C
  loc_72D2A0: LitI2_Byte &HA
  loc_72D2A2: PopTmpLdAd2 var_86
  loc_72D2A5: ImpAdLdRf MemVar_74C7D0
  loc_72D2A8: NewIfNullPr clsMsg
  loc_72D2AB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D2B0: ILdRf var_1D4
  loc_72D2B3: FLdPrThis
  loc_72D2B4: VCallAd Control_ID_mnuTiempoEspera
  loc_72D2B7: FStAdFunc var_1D8
  loc_72D2BA: FLdPr var_1D8
  loc_72D2BD: Me.Caption = from_stack_1
  loc_72D2C2: FFreeStr var_90 = ""
  loc_72D2C9: FFree1Ad var_1D8
  loc_72D2CC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D2E3: FLdRfVar var_1D4
  loc_72D2E6: LitVar_Missing var_1D0
  loc_72D2E9: LitVar_Missing var_1B0
  loc_72D2EC: LitVar_Missing var_190
  loc_72D2EF: LitVar_Missing var_170
  loc_72D2F2: LitVar_Missing var_150
  loc_72D2F5: LitVar_Missing var_130
  loc_72D2F8: LitVar_Missing var_110
  loc_72D2FB: LitVar_Missing var_F0
  loc_72D2FE: LitVar_Missing var_D0
  loc_72D301: LitVar_Missing var_B0
  loc_72D304: LitStr "&Actualización de Productos"
  loc_72D307: FStStrCopy var_90
  loc_72D30A: FLdRfVar var_90
  loc_72D30D: LitI4 &H28
  loc_72D312: PopTmpLdAdStr var_8C
  loc_72D315: LitI2_Byte &HA
  loc_72D317: PopTmpLdAd2 var_86
  loc_72D31A: ImpAdLdRf MemVar_74C7D0
  loc_72D31D: NewIfNullPr clsMsg
  loc_72D320: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D325: ILdRf var_1D4
  loc_72D328: FLdPrThis
  loc_72D329: VCallAd Control_ID_AssertNewCodes
  loc_72D32C: FStAdFunc var_1D8
  loc_72D32F: FLdPr var_1D8
  loc_72D332: Me.Caption = from_stack_1
  loc_72D337: FFreeStr var_90 = ""
  loc_72D33E: FFree1Ad var_1D8
  loc_72D341: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D358: FLdRfVar var_1D4
  loc_72D35B: LitVar_Missing var_1D0
  loc_72D35E: LitVar_Missing var_1B0
  loc_72D361: LitVar_Missing var_190
  loc_72D364: LitVar_Missing var_170
  loc_72D367: LitVar_Missing var_150
  loc_72D36A: LitVar_Missing var_130
  loc_72D36D: LitVar_Missing var_110
  loc_72D370: LitVar_Missing var_F0
  loc_72D373: LitVar_Missing var_D0
  loc_72D376: LitVar_Missing var_B0
  loc_72D379: LitStr "Configuració&n"
  loc_72D37C: FStStrCopy var_90
  loc_72D37F: FLdRfVar var_90
  loc_72D382: LitI4 &H29
  loc_72D387: PopTmpLdAdStr var_8C
  loc_72D38A: LitI2_Byte &HA
  loc_72D38C: PopTmpLdAd2 var_86
  loc_72D38F: ImpAdLdRf MemVar_74C7D0
  loc_72D392: NewIfNullPr clsMsg
  loc_72D395: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D39A: ILdRf var_1D4
  loc_72D39D: FLdPrThis
  loc_72D39E: VCallAd Control_ID_SETUP
  loc_72D3A1: FStAdFunc var_1D8
  loc_72D3A4: FLdPr var_1D8
  loc_72D3A7: Me.Caption = from_stack_1
  loc_72D3AC: FFreeStr var_90 = ""
  loc_72D3B3: FFree1Ad var_1D8
  loc_72D3B6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D3CD: FLdRfVar var_1D4
  loc_72D3D0: LitVar_Missing var_1D0
  loc_72D3D3: LitVar_Missing var_1B0
  loc_72D3D6: LitVar_Missing var_190
  loc_72D3D9: LitVar_Missing var_170
  loc_72D3DC: LitVar_Missing var_150
  loc_72D3DF: LitVar_Missing var_130
  loc_72D3E2: LitVar_Missing var_110
  loc_72D3E5: LitVar_Missing var_F0
  loc_72D3E8: LitVar_Missing var_D0
  loc_72D3EB: LitVar_Missing var_B0
  loc_72D3EE: LitStr "&Menú Editor"
  loc_72D3F1: FStStrCopy var_90
  loc_72D3F4: FLdRfVar var_90
  loc_72D3F7: LitI4 &H2A
  loc_72D3FC: PopTmpLdAdStr var_8C
  loc_72D3FF: LitI2_Byte &HA
  loc_72D401: PopTmpLdAd2 var_86
  loc_72D404: ImpAdLdRf MemVar_74C7D0
  loc_72D407: NewIfNullPr clsMsg
  loc_72D40A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D40F: ILdRf var_1D4
  loc_72D412: FLdPrThis
  loc_72D413: VCallAd Control_ID_SETUP_MANUAL
  loc_72D416: FStAdFunc var_1D8
  loc_72D419: FLdPr var_1D8
  loc_72D41C: Me.Caption = from_stack_1
  loc_72D421: FFreeStr var_90 = ""
  loc_72D428: FFree1Ad var_1D8
  loc_72D42B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D442: FLdRfVar var_1D4
  loc_72D445: LitVar_Missing var_1D0
  loc_72D448: LitVar_Missing var_1B0
  loc_72D44B: LitVar_Missing var_190
  loc_72D44E: LitVar_Missing var_170
  loc_72D451: LitVar_Missing var_150
  loc_72D454: LitVar_Missing var_130
  loc_72D457: LitVar_Missing var_110
  loc_72D45A: LitVar_Missing var_F0
  loc_72D45D: LitVar_Missing var_D0
  loc_72D460: LitVar_Missing var_B0
  loc_72D463: LitStr "Seg&uridad"
  loc_72D466: FStStrCopy var_90
  loc_72D469: FLdRfVar var_90
  loc_72D46C: LitI4 &H2B
  loc_72D471: PopTmpLdAdStr var_8C
  loc_72D474: LitI2_Byte &HA
  loc_72D476: PopTmpLdAd2 var_86
  loc_72D479: ImpAdLdRf MemVar_74C7D0
  loc_72D47C: NewIfNullPr clsMsg
  loc_72D47F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D484: ILdRf var_1D4
  loc_72D487: FLdPrThis
  loc_72D488: VCallAd Control_ID_Menu_Seguridad
  loc_72D48B: FStAdFunc var_1D8
  loc_72D48E: FLdPr var_1D8
  loc_72D491: Me.Caption = from_stack_1
  loc_72D496: FFreeStr var_90 = ""
  loc_72D49D: FFree1Ad var_1D8
  loc_72D4A0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D4B7: FLdRfVar var_1D4
  loc_72D4BA: LitVar_Missing var_1D0
  loc_72D4BD: LitVar_Missing var_1B0
  loc_72D4C0: LitVar_Missing var_190
  loc_72D4C3: LitVar_Missing var_170
  loc_72D4C6: LitVar_Missing var_150
  loc_72D4C9: LitVar_Missing var_130
  loc_72D4CC: LitVar_Missing var_110
  loc_72D4CF: LitVar_Missing var_F0
  loc_72D4D2: LitVar_Missing var_D0
  loc_72D4D5: LitVar_Missing var_B0
  loc_72D4D8: LitStr "Cam&bio de Claves"
  loc_72D4DB: FStStrCopy var_90
  loc_72D4DE: FLdRfVar var_90
  loc_72D4E1: LitI4 &H2C
  loc_72D4E6: PopTmpLdAdStr var_8C
  loc_72D4E9: LitI2_Byte &HA
  loc_72D4EB: PopTmpLdAd2 var_86
  loc_72D4EE: ImpAdLdRf MemVar_74C7D0
  loc_72D4F1: NewIfNullPr clsMsg
  loc_72D4F4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D4F9: ILdRf var_1D4
  loc_72D4FC: FLdPrThis
  loc_72D4FD: VCallAd Control_ID_CambiodeClave
  loc_72D500: FStAdFunc var_1D8
  loc_72D503: FLdPr var_1D8
  loc_72D506: Me.Caption = from_stack_1
  loc_72D50B: FFreeStr var_90 = ""
  loc_72D512: FFree1Ad var_1D8
  loc_72D515: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D52C: FLdRfVar var_1D4
  loc_72D52F: LitVar_Missing var_1D0
  loc_72D532: LitVar_Missing var_1B0
  loc_72D535: LitVar_Missing var_190
  loc_72D538: LitVar_Missing var_170
  loc_72D53B: LitVar_Missing var_150
  loc_72D53E: LitVar_Missing var_130
  loc_72D541: LitVar_Missing var_110
  loc_72D544: LitVar_Missing var_F0
  loc_72D547: LitVar_Missing var_D0
  loc_72D54A: LitVar_Missing var_B0
  loc_72D54D: LitStr "C&onsola"
  loc_72D550: FStStrCopy var_90
  loc_72D553: FLdRfVar var_90
  loc_72D556: LitI4 &H2D
  loc_72D55B: PopTmpLdAdStr var_8C
  loc_72D55E: LitI2_Byte &HA
  loc_72D560: PopTmpLdAd2 var_86
  loc_72D563: ImpAdLdRf MemVar_74C7D0
  loc_72D566: NewIfNullPr clsMsg
  loc_72D569: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D56E: ILdRf var_1D4
  loc_72D571: FLdPrThis
  loc_72D572: VCallAd Control_ID_SETUP_CONSOLA
  loc_72D575: FStAdFunc var_1D8
  loc_72D578: FLdPr var_1D8
  loc_72D57B: Me.Caption = from_stack_1
  loc_72D580: FFreeStr var_90 = ""
  loc_72D587: FFree1Ad var_1D8
  loc_72D58A: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D5A1: FLdRfVar var_1D4
  loc_72D5A4: LitVar_Missing var_1D0
  loc_72D5A7: LitVar_Missing var_1B0
  loc_72D5AA: LitVar_Missing var_190
  loc_72D5AD: LitVar_Missing var_170
  loc_72D5B0: LitVar_Missing var_150
  loc_72D5B3: LitVar_Missing var_130
  loc_72D5B6: LitVar_Missing var_110
  loc_72D5B9: LitVar_Missing var_F0
  loc_72D5BC: LitVar_Missing var_D0
  loc_72D5BF: LitVar_Missing var_B0
  loc_72D5C2: LitStr "&Estación"
  loc_72D5C5: FStStrCopy var_90
  loc_72D5C8: FLdRfVar var_90
  loc_72D5CB: LitI4 &H2E
  loc_72D5D0: PopTmpLdAdStr var_8C
  loc_72D5D3: LitI2_Byte &HA
  loc_72D5D5: PopTmpLdAd2 var_86
  loc_72D5D8: ImpAdLdRf MemVar_74C7D0
  loc_72D5DB: NewIfNullPr clsMsg
  loc_72D5DE: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D5E3: ILdRf var_1D4
  loc_72D5E6: FLdPrThis
  loc_72D5E7: VCallAd Control_ID_SETUP_STATION
  loc_72D5EA: FStAdFunc var_1D8
  loc_72D5ED: FLdPr var_1D8
  loc_72D5F0: Me.Caption = from_stack_1
  loc_72D5F5: FFreeStr var_90 = ""
  loc_72D5FC: FFree1Ad var_1D8
  loc_72D5FF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D616: FLdRfVar var_1D4
  loc_72D619: LitVar_Missing var_1D0
  loc_72D61C: LitVar_Missing var_1B0
  loc_72D61F: LitVar_Missing var_190
  loc_72D622: LitVar_Missing var_170
  loc_72D625: LitVar_Missing var_150
  loc_72D628: LitVar_Missing var_130
  loc_72D62B: LitVar_Missing var_110
  loc_72D62E: LitVar_Missing var_F0
  loc_72D631: LitVar_Missing var_D0
  loc_72D634: LitVar_Missing var_B0
  loc_72D637: LitStr "Impresión de Reportes"
  loc_72D63A: FStStrCopy var_90
  loc_72D63D: FLdRfVar var_90
  loc_72D640: LitI4 &H2F
  loc_72D645: PopTmpLdAdStr var_8C
  loc_72D648: LitI2_Byte &HA
  loc_72D64A: PopTmpLdAd2 var_86
  loc_72D64D: ImpAdLdRf MemVar_74C7D0
  loc_72D650: NewIfNullPr clsMsg
  loc_72D653: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D658: ILdRf var_1D4
  loc_72D65B: FLdPrThis
  loc_72D65C: VCallAd Control_ID_mnuImpresionReportes
  loc_72D65F: FStAdFunc var_1D8
  loc_72D662: FLdPr var_1D8
  loc_72D665: Me.Caption = from_stack_1
  loc_72D66A: FFreeStr var_90 = ""
  loc_72D671: FFree1Ad var_1D8
  loc_72D674: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D68B: FLdRfVar var_1D4
  loc_72D68E: LitVar_Missing var_1D0
  loc_72D691: LitVar_Missing var_1B0
  loc_72D694: LitVar_Missing var_190
  loc_72D697: LitVar_Missing var_170
  loc_72D69A: LitVar_Missing var_150
  loc_72D69D: LitVar_Missing var_130
  loc_72D6A0: LitVar_Missing var_110
  loc_72D6A3: LitVar_Missing var_F0
  loc_72D6A6: LitVar_Missing var_D0
  loc_72D6A9: LitVar_Missing var_B0
  loc_72D6AC: LitStr "Cierre de &Turno"
  loc_72D6AF: FStStrCopy var_90
  loc_72D6B2: FLdRfVar var_90
  loc_72D6B5: LitI4 &H30
  loc_72D6BA: PopTmpLdAdStr var_8C
  loc_72D6BD: LitI2_Byte &HA
  loc_72D6BF: PopTmpLdAd2 var_86
  loc_72D6C2: ImpAdLdRf MemVar_74C7D0
  loc_72D6C5: NewIfNullPr clsMsg
  loc_72D6C8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D6CD: ILdRf var_1D4
  loc_72D6D0: FLdPrThis
  loc_72D6D1: VCallAd Control_ID_mnuCierreTurno
  loc_72D6D4: FStAdFunc var_1D8
  loc_72D6D7: FLdPr var_1D8
  loc_72D6DA: Me.Caption = from_stack_1
  loc_72D6DF: FFreeStr var_90 = ""
  loc_72D6E6: FFree1Ad var_1D8
  loc_72D6E9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D700: FLdRfVar var_1D4
  loc_72D703: LitVar_Missing var_1D0
  loc_72D706: LitVar_Missing var_1B0
  loc_72D709: LitVar_Missing var_190
  loc_72D70C: LitVar_Missing var_170
  loc_72D70F: LitVar_Missing var_150
  loc_72D712: LitVar_Missing var_130
  loc_72D715: LitVar_Missing var_110
  loc_72D718: LitVar_Missing var_F0
  loc_72D71B: LitVar_Missing var_D0
  loc_72D71E: LitVar_Missing var_B0
  loc_72D721: LitStr "Cierre de &Día"
  loc_72D724: FStStrCopy var_90
  loc_72D727: FLdRfVar var_90
  loc_72D72A: LitI4 &H31
  loc_72D72F: PopTmpLdAdStr var_8C
  loc_72D732: LitI2_Byte &HA
  loc_72D734: PopTmpLdAd2 var_86
  loc_72D737: ImpAdLdRf MemVar_74C7D0
  loc_72D73A: NewIfNullPr clsMsg
  loc_72D73D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D742: ILdRf var_1D4
  loc_72D745: FLdPrThis
  loc_72D746: VCallAd Control_ID_mnuCierreDia
  loc_72D749: FStAdFunc var_1D8
  loc_72D74C: FLdPr var_1D8
  loc_72D74F: Me.Caption = from_stack_1
  loc_72D754: FFreeStr var_90 = ""
  loc_72D75B: FFree1Ad var_1D8
  loc_72D75E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D775: FLdRfVar var_1D4
  loc_72D778: LitVar_Missing var_1D0
  loc_72D77B: LitVar_Missing var_1B0
  loc_72D77E: LitVar_Missing var_190
  loc_72D781: LitVar_Missing var_170
  loc_72D784: LitVar_Missing var_150
  loc_72D787: LitVar_Missing var_130
  loc_72D78A: LitVar_Missing var_110
  loc_72D78D: LitVar_Missing var_F0
  loc_72D790: LitVar_Missing var_D0
  loc_72D793: LitVar_Missing var_B0
  loc_72D796: LitStr "Cierre de &Mes"
  loc_72D799: FStStrCopy var_90
  loc_72D79C: FLdRfVar var_90
  loc_72D79F: LitI4 &H32
  loc_72D7A4: PopTmpLdAdStr var_8C
  loc_72D7A7: LitI2_Byte &HA
  loc_72D7A9: PopTmpLdAd2 var_86
  loc_72D7AC: ImpAdLdRf MemVar_74C7D0
  loc_72D7AF: NewIfNullPr clsMsg
  loc_72D7B2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D7B7: ILdRf var_1D4
  loc_72D7BA: FLdPrThis
  loc_72D7BB: VCallAd Control_ID_mnuCierreMes
  loc_72D7BE: FStAdFunc var_1D8
  loc_72D7C1: FLdPr var_1D8
  loc_72D7C4: Me.Caption = from_stack_1
  loc_72D7C9: FFreeStr var_90 = ""
  loc_72D7D0: FFree1Ad var_1D8
  loc_72D7D3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D7EA: FLdRfVar var_1D4
  loc_72D7ED: LitVar_Missing var_1D0
  loc_72D7F0: LitVar_Missing var_1B0
  loc_72D7F3: LitVar_Missing var_190
  loc_72D7F6: LitVar_Missing var_170
  loc_72D7F9: LitVar_Missing var_150
  loc_72D7FC: LitVar_Missing var_130
  loc_72D7FF: LitVar_Missing var_110
  loc_72D802: LitVar_Missing var_F0
  loc_72D805: LitVar_Missing var_D0
  loc_72D808: LitVar_Missing var_B0
  loc_72D80B: LitStr "Totales de &CTF"
  loc_72D80E: FStStrCopy var_90
  loc_72D811: FLdRfVar var_90
  loc_72D814: LitI4 &H33
  loc_72D819: PopTmpLdAdStr var_8C
  loc_72D81C: LitI2_Byte &HA
  loc_72D81E: PopTmpLdAd2 var_86
  loc_72D821: ImpAdLdRf MemVar_74C7D0
  loc_72D824: NewIfNullPr clsMsg
  loc_72D827: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D82C: ILdRf var_1D4
  loc_72D82F: FLdPrThis
  loc_72D830: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_72D833: FStAdFunc var_1D8
  loc_72D836: FLdPr var_1D8
  loc_72D839: Me.Caption = from_stack_1
  loc_72D83E: FFreeStr var_90 = ""
  loc_72D845: FFree1Ad var_1D8
  loc_72D848: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D85F: FLdRfVar var_1D4
  loc_72D862: LitVar_Missing var_1D0
  loc_72D865: LitVar_Missing var_1B0
  loc_72D868: LitVar_Missing var_190
  loc_72D86B: LitVar_Missing var_170
  loc_72D86E: LitVar_Missing var_150
  loc_72D871: LitVar_Missing var_130
  loc_72D874: LitVar_Missing var_110
  loc_72D877: LitVar_Missing var_F0
  loc_72D87A: LitVar_Missing var_D0
  loc_72D87D: LitVar_Missing var_B0
  loc_72D880: LitStr "Se&cciones de Reportes"
  loc_72D883: FStStrCopy var_90
  loc_72D886: FLdRfVar var_90
  loc_72D889: LitI4 &H34
  loc_72D88E: PopTmpLdAdStr var_8C
  loc_72D891: LitI2_Byte &HA
  loc_72D893: PopTmpLdAd2 var_86
  loc_72D896: ImpAdLdRf MemVar_74C7D0
  loc_72D899: NewIfNullPr clsMsg
  loc_72D89C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D8A1: ILdRf var_1D4
  loc_72D8A4: FLdPrThis
  loc_72D8A5: VCallAd Control_ID_mnuSeccionesReporte
  loc_72D8A8: FStAdFunc var_1D8
  loc_72D8AB: FLdPr var_1D8
  loc_72D8AE: Me.Caption = from_stack_1
  loc_72D8B3: FFreeStr var_90 = ""
  loc_72D8BA: FFree1Ad var_1D8
  loc_72D8BD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D8D4: FLdRfVar var_1D4
  loc_72D8D7: LitVar_Missing var_1D0
  loc_72D8DA: LitVar_Missing var_1B0
  loc_72D8DD: LitVar_Missing var_190
  loc_72D8E0: LitVar_Missing var_170
  loc_72D8E3: LitVar_Missing var_150
  loc_72D8E6: LitVar_Missing var_130
  loc_72D8E9: LitVar_Missing var_110
  loc_72D8EC: LitVar_Missing var_F0
  loc_72D8EF: LitVar_Missing var_D0
  loc_72D8F2: LitVar_Missing var_B0
  loc_72D8F5: LitStr "&Autorización del Despacho"
  loc_72D8F8: FStStrCopy var_90
  loc_72D8FB: FLdRfVar var_90
  loc_72D8FE: LitI4 &H35
  loc_72D903: PopTmpLdAdStr var_8C
  loc_72D906: LitI2_Byte &HA
  loc_72D908: PopTmpLdAd2 var_86
  loc_72D90B: ImpAdLdRf MemVar_74C7D0
  loc_72D90E: NewIfNullPr clsMsg
  loc_72D911: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D916: ILdRf var_1D4
  loc_72D919: FLdPrThis
  loc_72D91A: VCallAd Control_ID_SETUP_AUTORIZA
  loc_72D91D: FStAdFunc var_1D8
  loc_72D920: FLdPr var_1D8
  loc_72D923: Me.Caption = from_stack_1
  loc_72D928: FFreeStr var_90 = ""
  loc_72D92F: FFree1Ad var_1D8
  loc_72D932: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D949: FLdRfVar var_1D4
  loc_72D94C: LitVar_Missing var_1D0
  loc_72D94F: LitVar_Missing var_1B0
  loc_72D952: LitVar_Missing var_190
  loc_72D955: LitVar_Missing var_170
  loc_72D958: LitVar_Missing var_150
  loc_72D95B: LitVar_Missing var_130
  loc_72D95E: LitVar_Missing var_110
  loc_72D961: LitVar_Missing var_F0
  loc_72D964: LitVar_Missing var_D0
  loc_72D967: LitVar_Missing var_B0
  loc_72D96A: LitStr "&Tarjetas de Crédito"
  loc_72D96D: FStStrCopy var_90
  loc_72D970: FLdRfVar var_90
  loc_72D973: LitI4 &H36
  loc_72D978: PopTmpLdAdStr var_8C
  loc_72D97B: LitI2_Byte &HA
  loc_72D97D: PopTmpLdAd2 var_86
  loc_72D980: ImpAdLdRf MemVar_74C7D0
  loc_72D983: NewIfNullPr clsMsg
  loc_72D986: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72D98B: ILdRf var_1D4
  loc_72D98E: FLdPrThis
  loc_72D98F: VCallAd Control_ID_TarjetadeCredito
  loc_72D992: FStAdFunc var_1D8
  loc_72D995: FLdPr var_1D8
  loc_72D998: Me.Caption = from_stack_1
  loc_72D99D: FFreeStr var_90 = ""
  loc_72D9A4: FFree1Ad var_1D8
  loc_72D9A7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72D9BE: FLdRfVar var_1D4
  loc_72D9C1: LitVar_Missing var_1D0
  loc_72D9C4: LitVar_Missing var_1B0
  loc_72D9C7: LitVar_Missing var_190
  loc_72D9CA: LitVar_Missing var_170
  loc_72D9CD: LitVar_Missing var_150
  loc_72D9D0: LitVar_Missing var_130
  loc_72D9D3: LitVar_Missing var_110
  loc_72D9D6: LitVar_Missing var_F0
  loc_72D9D9: LitVar_Missing var_D0
  loc_72D9DC: LitVar_Missing var_B0
  loc_72D9DF: LitStr "E&ventos de Log"
  loc_72D9E2: FStStrCopy var_90
  loc_72D9E5: FLdRfVar var_90
  loc_72D9E8: LitI4 &H37
  loc_72D9ED: PopTmpLdAdStr var_8C
  loc_72D9F0: LitI2_Byte &HA
  loc_72D9F2: PopTmpLdAd2 var_86
  loc_72D9F5: ImpAdLdRf MemVar_74C7D0
  loc_72D9F8: NewIfNullPr clsMsg
  loc_72D9FB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DA00: ILdRf var_1D4
  loc_72DA03: FLdPrThis
  loc_72DA04: VCallAd Control_ID_LOG_Event
  loc_72DA07: FStAdFunc var_1D8
  loc_72DA0A: FLdPr var_1D8
  loc_72DA0D: Me.Caption = from_stack_1
  loc_72DA12: FFreeStr var_90 = ""
  loc_72DA19: FFree1Ad var_1D8
  loc_72DA1C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DA33: FLdRfVar var_1D4
  loc_72DA36: LitVar_Missing var_1D0
  loc_72DA39: LitVar_Missing var_1B0
  loc_72DA3C: LitVar_Missing var_190
  loc_72DA3F: LitVar_Missing var_170
  loc_72DA42: LitVar_Missing var_150
  loc_72DA45: LitVar_Missing var_130
  loc_72DA48: LitVar_Missing var_110
  loc_72DA4B: LitVar_Missing var_F0
  loc_72DA4E: LitVar_Missing var_D0
  loc_72DA51: LitVar_Missing var_B0
  loc_72DA54: LitStr "Datos Regionales"
  loc_72DA57: FStStrCopy var_90
  loc_72DA5A: FLdRfVar var_90
  loc_72DA5D: LitI4 &H38
  loc_72DA62: PopTmpLdAdStr var_8C
  loc_72DA65: LitI2_Byte &HA
  loc_72DA67: PopTmpLdAd2 var_86
  loc_72DA6A: ImpAdLdRf MemVar_74C7D0
  loc_72DA6D: NewIfNullPr clsMsg
  loc_72DA70: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DA75: ILdRf var_1D4
  loc_72DA78: FLdPrThis
  loc_72DA79: VCallAd Control_ID_DATOS_REGIONALES
  loc_72DA7C: FStAdFunc var_1D8
  loc_72DA7F: FLdPr var_1D8
  loc_72DA82: Me.Caption = from_stack_1
  loc_72DA87: FFreeStr var_90 = ""
  loc_72DA8E: FFree1Ad var_1D8
  loc_72DA91: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DAA8: FLdRfVar var_1D4
  loc_72DAAB: LitVar_Missing var_1D0
  loc_72DAAE: LitVar_Missing var_1B0
  loc_72DAB1: LitVar_Missing var_190
  loc_72DAB4: LitVar_Missing var_170
  loc_72DAB7: LitVar_Missing var_150
  loc_72DABA: LitVar_Missing var_130
  loc_72DABD: LitVar_Missing var_110
  loc_72DAC0: LitVar_Missing var_F0
  loc_72DAC3: LitVar_Missing var_D0
  loc_72DAC6: LitVar_Missing var_B0
  loc_72DAC9: LitStr "C&ontrol de Tanques"
  loc_72DACC: FStStrCopy var_90
  loc_72DACF: FLdRfVar var_90
  loc_72DAD2: LitI4 &H39
  loc_72DAD7: PopTmpLdAdStr var_8C
  loc_72DADA: LitI2_Byte &HA
  loc_72DADC: PopTmpLdAd2 var_86
  loc_72DADF: ImpAdLdRf MemVar_74C7D0
  loc_72DAE2: NewIfNullPr clsMsg
  loc_72DAE5: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DAEA: ILdRf var_1D4
  loc_72DAED: FLdPrThis
  loc_72DAEE: VCallAd Control_ID_mnuControlTanques
  loc_72DAF1: FStAdFunc var_1D8
  loc_72DAF4: FLdPr var_1D8
  loc_72DAF7: Me.Caption = from_stack_1
  loc_72DAFC: FFreeStr var_90 = ""
  loc_72DB03: FFree1Ad var_1D8
  loc_72DB06: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DB1D: FLdRfVar var_1D4
  loc_72DB20: LitVar_Missing var_1D0
  loc_72DB23: LitVar_Missing var_1B0
  loc_72DB26: LitVar_Missing var_190
  loc_72DB29: LitVar_Missing var_170
  loc_72DB2C: LitVar_Missing var_150
  loc_72DB2F: LitVar_Missing var_130
  loc_72DB32: LitVar_Missing var_110
  loc_72DB35: LitVar_Missing var_F0
  loc_72DB38: LitVar_Missing var_D0
  loc_72DB3B: LitVar_Missing var_B0
  loc_72DB3E: LitStr "Convertir Unidades de Medida"
  loc_72DB41: FStStrCopy var_90
  loc_72DB44: FLdRfVar var_90
  loc_72DB47: LitI4 &HB4
  loc_72DB4C: PopTmpLdAdStr var_8C
  loc_72DB4F: LitI2_Byte &HA
  loc_72DB51: PopTmpLdAd2 var_86
  loc_72DB54: ImpAdLdRf MemVar_74C7D0
  loc_72DB57: NewIfNullPr clsMsg
  loc_72DB5A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DB5F: ILdRf var_1D4
  loc_72DB62: FLdPrThis
  loc_72DB63: VCallAd Control_ID_MnuConvert
  loc_72DB66: FStAdFunc var_1D8
  loc_72DB69: FLdPr var_1D8
  loc_72DB6C: Me.Caption = from_stack_1
  loc_72DB71: FFreeStr var_90 = ""
  loc_72DB78: FFree1Ad var_1D8
  loc_72DB7B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DB92: FLdRfVar var_1D4
  loc_72DB95: LitVar_Missing var_1D0
  loc_72DB98: LitVar_Missing var_1B0
  loc_72DB9B: LitVar_Missing var_190
  loc_72DB9E: LitVar_Missing var_170
  loc_72DBA1: LitVar_Missing var_150
  loc_72DBA4: LitVar_Missing var_130
  loc_72DBA7: LitVar_Missing var_110
  loc_72DBAA: LitVar_Missing var_F0
  loc_72DBAD: LitVar_Missing var_D0
  loc_72DBB0: LitVar_Missing var_B0
  loc_72DBB3: LitStr "Gestion de Puertos"
  loc_72DBB6: FStStrCopy var_90
  loc_72DBB9: FLdRfVar var_90
  loc_72DBBC: LitI4 &H3A
  loc_72DBC1: PopTmpLdAdStr var_8C
  loc_72DBC4: LitI2_Byte &HA
  loc_72DBC6: PopTmpLdAd2 var_86
  loc_72DBC9: ImpAdLdRf MemVar_74C7D0
  loc_72DBCC: NewIfNullPr clsMsg
  loc_72DBCF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DBD4: ILdRf var_1D4
  loc_72DBD7: FLdPrThis
  loc_72DBD8: VCallAd Control_ID_GESTION_PUERTOS
  loc_72DBDB: FStAdFunc var_1D8
  loc_72DBDE: FLdPr var_1D8
  loc_72DBE1: Me.Caption = from_stack_1
  loc_72DBE6: FFreeStr var_90 = ""
  loc_72DBED: FFree1Ad var_1D8
  loc_72DBF0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DC07: FLdRfVar var_1D4
  loc_72DC0A: LitVar_Missing var_1D0
  loc_72DC0D: LitVar_Missing var_1B0
  loc_72DC10: LitVar_Missing var_190
  loc_72DC13: LitVar_Missing var_170
  loc_72DC16: LitVar_Missing var_150
  loc_72DC19: LitVar_Missing var_130
  loc_72DC1C: LitVar_Missing var_110
  loc_72DC1F: LitVar_Missing var_F0
  loc_72DC22: LitVar_Missing var_D0
  loc_72DC25: LitVar_Missing var_B0
  loc_72DC28: LitStr "Control de Pla&yeros"
  loc_72DC2B: FStStrCopy var_90
  loc_72DC2E: FLdRfVar var_90
  loc_72DC31: LitI4 &H3B
  loc_72DC36: PopTmpLdAdStr var_8C
  loc_72DC39: LitI2_Byte &HA
  loc_72DC3B: PopTmpLdAd2 var_86
  loc_72DC3E: ImpAdLdRf MemVar_74C7D0
  loc_72DC41: NewIfNullPr clsMsg
  loc_72DC44: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DC49: ILdRf var_1D4
  loc_72DC4C: FLdPrThis
  loc_72DC4D: VCallAd Control_ID_mnuControlPlayeros
  loc_72DC50: FStAdFunc var_1D8
  loc_72DC53: FLdPr var_1D8
  loc_72DC56: Me.Caption = from_stack_1
  loc_72DC5B: FFreeStr var_90 = ""
  loc_72DC62: FFree1Ad var_1D8
  loc_72DC65: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DC7C: FLdRfVar var_1D4
  loc_72DC7F: LitVar_Missing var_1D0
  loc_72DC82: LitVar_Missing var_1B0
  loc_72DC85: LitVar_Missing var_190
  loc_72DC88: LitVar_Missing var_170
  loc_72DC8B: LitVar_Missing var_150
  loc_72DC8E: LitVar_Missing var_130
  loc_72DC91: LitVar_Missing var_110
  loc_72DC94: LitVar_Missing var_F0
  loc_72DC97: LitVar_Missing var_D0
  loc_72DC9A: LitVar_Missing var_B0
  loc_72DC9D: LitStr "Configuración de Ticket"
  loc_72DCA0: FStStrCopy var_90
  loc_72DCA3: FLdRfVar var_90
  loc_72DCA6: LitI4 &H3C
  loc_72DCAB: PopTmpLdAdStr var_8C
  loc_72DCAE: LitI2_Byte &HA
  loc_72DCB0: PopTmpLdAd2 var_86
  loc_72DCB3: ImpAdLdRf MemVar_74C7D0
  loc_72DCB6: NewIfNullPr clsMsg
  loc_72DCB9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DCBE: ILdRf var_1D4
  loc_72DCC1: FLdPrThis
  loc_72DCC2: VCallAd Control_ID_mnuTicket
  loc_72DCC5: FStAdFunc var_1D8
  loc_72DCC8: FLdPr var_1D8
  loc_72DCCB: Me.Caption = from_stack_1
  loc_72DCD0: FFreeStr var_90 = ""
  loc_72DCD7: FFree1Ad var_1D8
  loc_72DCDA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DCF1: FLdRfVar var_1D4
  loc_72DCF4: LitVar_Missing var_1D0
  loc_72DCF7: LitVar_Missing var_1B0
  loc_72DCFA: LitVar_Missing var_190
  loc_72DCFD: LitVar_Missing var_170
  loc_72DD00: LitVar_Missing var_150
  loc_72DD03: LitVar_Missing var_130
  loc_72DD06: LitVar_Missing var_110
  loc_72DD09: LitVar_Missing var_F0
  loc_72DD0C: LitVar_Missing var_D0
  loc_72DD0F: LitVar_Missing var_B0
  loc_72DD12: LitStr "Programación de Eventos"
  loc_72DD15: FStStrCopy var_90
  loc_72DD18: FLdRfVar var_90
  loc_72DD1B: LitI4 &H3D
  loc_72DD20: PopTmpLdAdStr var_8C
  loc_72DD23: LitI2_Byte &HA
  loc_72DD25: PopTmpLdAd2 var_86
  loc_72DD28: ImpAdLdRf MemVar_74C7D0
  loc_72DD2B: NewIfNullPr clsMsg
  loc_72DD2E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DD33: ILdRf var_1D4
  loc_72DD36: FLdPrThis
  loc_72DD37: VCallAd Control_ID_mnuProgramacionEventos
  loc_72DD3A: FStAdFunc var_1D8
  loc_72DD3D: FLdPr var_1D8
  loc_72DD40: Me.Caption = from_stack_1
  loc_72DD45: FFreeStr var_90 = ""
  loc_72DD4C: FFree1Ad var_1D8
  loc_72DD4F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DD66: FLdRfVar var_1D4
  loc_72DD69: LitVar_Missing var_1D0
  loc_72DD6C: LitVar_Missing var_1B0
  loc_72DD6F: LitVar_Missing var_190
  loc_72DD72: LitVar_Missing var_170
  loc_72DD75: LitVar_Missing var_150
  loc_72DD78: LitVar_Missing var_130
  loc_72DD7B: LitVar_Missing var_110
  loc_72DD7E: LitVar_Missing var_F0
  loc_72DD81: LitVar_Missing var_D0
  loc_72DD84: LitVar_Missing var_B0
  loc_72DD87: LitStr "Programación"
  loc_72DD8A: FStStrCopy var_90
  loc_72DD8D: FLdRfVar var_90
  loc_72DD90: LitI4 &H3E
  loc_72DD95: PopTmpLdAdStr var_8C
  loc_72DD98: LitI2_Byte &HA
  loc_72DD9A: PopTmpLdAd2 var_86
  loc_72DD9D: ImpAdLdRf MemVar_74C7D0
  loc_72DDA0: NewIfNullPr clsMsg
  loc_72DDA3: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DDA8: ILdRf var_1D4
  loc_72DDAB: FLdPrThis
  loc_72DDAC: VCallAd Control_ID_mnuProgramacion
  loc_72DDAF: FStAdFunc var_1D8
  loc_72DDB2: FLdPr var_1D8
  loc_72DDB5: Me.Caption = from_stack_1
  loc_72DDBA: FFreeStr var_90 = ""
  loc_72DDC1: FFree1Ad var_1D8
  loc_72DDC4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DDDB: FLdRfVar var_1D4
  loc_72DDDE: LitVar_Missing var_1D0
  loc_72DDE1: LitVar_Missing var_1B0
  loc_72DDE4: LitVar_Missing var_190
  loc_72DDE7: LitVar_Missing var_170
  loc_72DDEA: LitVar_Missing var_150
  loc_72DDED: LitVar_Missing var_130
  loc_72DDF0: LitVar_Missing var_110
  loc_72DDF3: LitVar_Missing var_F0
  loc_72DDF6: LitVar_Missing var_D0
  loc_72DDF9: LitVar_Missing var_B0
  loc_72DDFC: LitStr "&Alarmas"
  loc_72DDFF: FStStrCopy var_90
  loc_72DE02: FLdRfVar var_90
  loc_72DE05: LitI4 &H3F
  loc_72DE0A: PopTmpLdAdStr var_8C
  loc_72DE0D: LitI2_Byte &HA
  loc_72DE0F: PopTmpLdAd2 var_86
  loc_72DE12: ImpAdLdRf MemVar_74C7D0
  loc_72DE15: NewIfNullPr clsMsg
  loc_72DE18: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DE1D: ILdRf var_1D4
  loc_72DE20: FLdPrThis
  loc_72DE21: VCallAd Control_ID_mnuAlarmas
  loc_72DE24: FStAdFunc var_1D8
  loc_72DE27: FLdPr var_1D8
  loc_72DE2A: Me.Caption = from_stack_1
  loc_72DE2F: FFreeStr var_90 = ""
  loc_72DE36: FFree1Ad var_1D8
  loc_72DE39: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DE50: FLdRfVar var_1D4
  loc_72DE53: LitVar_Missing var_1D0
  loc_72DE56: LitVar_Missing var_1B0
  loc_72DE59: LitVar_Missing var_190
  loc_72DE5C: LitVar_Missing var_170
  loc_72DE5F: LitVar_Missing var_150
  loc_72DE62: LitVar_Missing var_130
  loc_72DE65: LitVar_Missing var_110
  loc_72DE68: LitVar_Missing var_F0
  loc_72DE6B: LitVar_Missing var_D0
  loc_72DE6E: LitVar_Missing var_B0
  loc_72DE71: LitStr "&Imprimir Configuración"
  loc_72DE74: FStStrCopy var_90
  loc_72DE77: FLdRfVar var_90
  loc_72DE7A: LitI4 &H41
  loc_72DE7F: PopTmpLdAdStr var_8C
  loc_72DE82: LitI2_Byte &HA
  loc_72DE84: PopTmpLdAd2 var_86
  loc_72DE87: ImpAdLdRf MemVar_74C7D0
  loc_72DE8A: NewIfNullPr clsMsg
  loc_72DE8D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DE92: ILdRf var_1D4
  loc_72DE95: FLdPrThis
  loc_72DE96: VCallAd Control_ID_mnuPrintConfig
  loc_72DE99: FStAdFunc var_1D8
  loc_72DE9C: FLdPr var_1D8
  loc_72DE9F: Me.Caption = from_stack_1
  loc_72DEA4: FFreeStr var_90 = ""
  loc_72DEAB: FFree1Ad var_1D8
  loc_72DEAE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DEC5: FLdRfVar var_1D4
  loc_72DEC8: LitVar_Missing var_1D0
  loc_72DECB: LitVar_Missing var_1B0
  loc_72DECE: LitVar_Missing var_190
  loc_72DED1: LitVar_Missing var_170
  loc_72DED4: LitVar_Missing var_150
  loc_72DED7: LitVar_Missing var_130
  loc_72DEDA: LitVar_Missing var_110
  loc_72DEDD: LitVar_Missing var_F0
  loc_72DEE0: LitVar_Missing var_D0
  loc_72DEE3: LitVar_Missing var_B0
  loc_72DEE6: LitStr "R&eset"
  loc_72DEE9: FStStrCopy var_90
  loc_72DEEC: FLdRfVar var_90
  loc_72DEEF: LitI4 &H42
  loc_72DEF4: PopTmpLdAdStr var_8C
  loc_72DEF7: LitI2_Byte &HA
  loc_72DEF9: PopTmpLdAd2 var_86
  loc_72DEFC: ImpAdLdRf MemVar_74C7D0
  loc_72DEFF: NewIfNullPr clsMsg
  loc_72DF02: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DF07: ILdRf var_1D4
  loc_72DF0A: FLdPrThis
  loc_72DF0B: VCallAd Control_ID_SETUP_RESET
  loc_72DF0E: FStAdFunc var_1D8
  loc_72DF11: FLdPr var_1D8
  loc_72DF14: Me.Caption = from_stack_1
  loc_72DF19: FFreeStr var_90 = ""
  loc_72DF20: FFree1Ad var_1D8
  loc_72DF23: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DF3A: FLdRfVar var_1D4
  loc_72DF3D: LitVar_Missing var_1D0
  loc_72DF40: LitVar_Missing var_1B0
  loc_72DF43: LitVar_Missing var_190
  loc_72DF46: LitVar_Missing var_170
  loc_72DF49: LitVar_Missing var_150
  loc_72DF4C: LitVar_Missing var_130
  loc_72DF4F: LitVar_Missing var_110
  loc_72DF52: LitVar_Missing var_F0
  loc_72DF55: LitVar_Missing var_D0
  loc_72DF58: LitVar_Missing var_B0
  loc_72DF5B: LitStr "Importación de Datos CEM - 3&7"
  loc_72DF5E: FStStrCopy var_90
  loc_72DF61: FLdRfVar var_90
  loc_72DF64: LitI4 &H43
  loc_72DF69: PopTmpLdAdStr var_8C
  loc_72DF6C: LitI2_Byte &HA
  loc_72DF6E: PopTmpLdAd2 var_86
  loc_72DF71: ImpAdLdRf MemVar_74C7D0
  loc_72DF74: NewIfNullPr clsMsg
  loc_72DF77: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DF7C: ILdRf var_1D4
  loc_72DF7F: FLdPrThis
  loc_72DF80: VCallAd Control_ID_IMPORTA_37
  loc_72DF83: FStAdFunc var_1D8
  loc_72DF86: FLdPr var_1D8
  loc_72DF89: Me.Caption = from_stack_1
  loc_72DF8E: FFreeStr var_90 = ""
  loc_72DF95: FFree1Ad var_1D8
  loc_72DF98: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72DFAF: FLdRfVar var_1D4
  loc_72DFB2: LitVar_Missing var_1D0
  loc_72DFB5: LitVar_Missing var_1B0
  loc_72DFB8: LitVar_Missing var_190
  loc_72DFBB: LitVar_Missing var_170
  loc_72DFBE: LitVar_Missing var_150
  loc_72DFC1: LitVar_Missing var_130
  loc_72DFC4: LitVar_Missing var_110
  loc_72DFC7: LitVar_Missing var_F0
  loc_72DFCA: LitVar_Missing var_D0
  loc_72DFCD: LitVar_Missing var_B0
  loc_72DFD0: LitStr "A&lmacenar Copia en Diskette"
  loc_72DFD3: FStStrCopy var_90
  loc_72DFD6: FLdRfVar var_90
  loc_72DFD9: LitI4 &H44
  loc_72DFDE: PopTmpLdAdStr var_8C
  loc_72DFE1: LitI2_Byte &HA
  loc_72DFE3: PopTmpLdAd2 var_86
  loc_72DFE6: ImpAdLdRf MemVar_74C7D0
  loc_72DFE9: NewIfNullPr clsMsg
  loc_72DFEC: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72DFF1: ILdRf var_1D4
  loc_72DFF4: FLdPrThis
  loc_72DFF5: VCallAd Control_ID_SETUP_STORE
  loc_72DFF8: FStAdFunc var_1D8
  loc_72DFFB: FLdPr var_1D8
  loc_72DFFE: Me.Caption = from_stack_1
  loc_72E003: FFreeStr var_90 = ""
  loc_72E00A: FFree1Ad var_1D8
  loc_72E00D: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E024: FLdRfVar var_1D4
  loc_72E027: LitVar_Missing var_1D0
  loc_72E02A: LitVar_Missing var_1B0
  loc_72E02D: LitVar_Missing var_190
  loc_72E030: LitVar_Missing var_170
  loc_72E033: LitVar_Missing var_150
  loc_72E036: LitVar_Missing var_130
  loc_72E039: LitVar_Missing var_110
  loc_72E03C: LitVar_Missing var_F0
  loc_72E03F: LitVar_Missing var_D0
  loc_72E042: LitVar_Missing var_B0
  loc_72E045: LitStr "&Recuperar Copia en Diskette"
  loc_72E048: FStStrCopy var_90
  loc_72E04B: FLdRfVar var_90
  loc_72E04E: LitI4 &H45
  loc_72E053: PopTmpLdAdStr var_8C
  loc_72E056: LitI2_Byte &HA
  loc_72E058: PopTmpLdAd2 var_86
  loc_72E05B: ImpAdLdRf MemVar_74C7D0
  loc_72E05E: NewIfNullPr clsMsg
  loc_72E061: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E066: ILdRf var_1D4
  loc_72E069: FLdPrThis
  loc_72E06A: VCallAd Control_ID_SETUP_RESTORE
  loc_72E06D: FStAdFunc var_1D8
  loc_72E070: FLdPr var_1D8
  loc_72E073: Me.Caption = from_stack_1
  loc_72E078: FFreeStr var_90 = ""
  loc_72E07F: FFree1Ad var_1D8
  loc_72E082: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E099: FLdRfVar var_1D4
  loc_72E09C: LitVar_Missing var_1D0
  loc_72E09F: LitVar_Missing var_1B0
  loc_72E0A2: LitVar_Missing var_190
  loc_72E0A5: LitVar_Missing var_170
  loc_72E0A8: LitVar_Missing var_150
  loc_72E0AB: LitVar_Missing var_130
  loc_72E0AE: LitVar_Missing var_110
  loc_72E0B1: LitVar_Missing var_F0
  loc_72E0B4: LitVar_Missing var_D0
  loc_72E0B7: LitVar_Missing var_B0
  loc_72E0BA: LitStr "Operaciones &Manuales"
  loc_72E0BD: FStStrCopy var_90
  loc_72E0C0: FLdRfVar var_90
  loc_72E0C3: LitI4 &H46
  loc_72E0C8: PopTmpLdAdStr var_8C
  loc_72E0CB: LitI2_Byte &HA
  loc_72E0CD: PopTmpLdAd2 var_86
  loc_72E0D0: ImpAdLdRf MemVar_74C7D0
  loc_72E0D3: NewIfNullPr clsMsg
  loc_72E0D6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E0DB: ILdRf var_1D4
  loc_72E0DE: FLdPrThis
  loc_72E0DF: VCallAd Control_ID_mnuOperacionesEspecialesInutil
  loc_72E0E2: FStAdFunc var_1D8
  loc_72E0E5: FLdPr var_1D8
  loc_72E0E8: Me.Caption = from_stack_1
  loc_72E0ED: FFreeStr var_90 = ""
  loc_72E0F4: FFree1Ad var_1D8
  loc_72E0F7: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E10E: FLdRfVar var_1D4
  loc_72E111: LitVar_Missing var_1D0
  loc_72E114: LitVar_Missing var_1B0
  loc_72E117: LitVar_Missing var_190
  loc_72E11A: LitVar_Missing var_170
  loc_72E11D: LitVar_Missing var_150
  loc_72E120: LitVar_Missing var_130
  loc_72E123: LitVar_Missing var_110
  loc_72E126: LitVar_Missing var_F0
  loc_72E129: LitVar_Missing var_D0
  loc_72E12C: LitVar_Missing var_B0
  loc_72E12F: LitStr "&Operaciones Diferenciales"
  loc_72E132: FStStrCopy var_90
  loc_72E135: FLdRfVar var_90
  loc_72E138: LitI4 &H47
  loc_72E13D: PopTmpLdAdStr var_8C
  loc_72E140: LitI2_Byte &HA
  loc_72E142: PopTmpLdAd2 var_86
  loc_72E145: ImpAdLdRf MemVar_74C7D0
  loc_72E148: NewIfNullPr clsMsg
  loc_72E14B: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E150: ILdRf var_1D4
  loc_72E153: FLdPrThis
  loc_72E154: VCallAd Control_ID_mnuOperacionesEspecialesInutil
  loc_72E157: FStAdFunc var_1D8
  loc_72E15A: FLdPr var_1D8
  loc_72E15D: Me.Caption = from_stack_1
  loc_72E162: FFreeStr var_90 = ""
  loc_72E169: FFree1Ad var_1D8
  loc_72E16C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E183: FLdRfVar var_1D4
  loc_72E186: LitVar_Missing var_1D0
  loc_72E189: LitVar_Missing var_1B0
  loc_72E18C: LitVar_Missing var_190
  loc_72E18F: LitVar_Missing var_170
  loc_72E192: LitVar_Missing var_150
  loc_72E195: LitVar_Missing var_130
  loc_72E198: LitVar_Missing var_110
  loc_72E19B: LitVar_Missing var_F0
  loc_72E19E: LitVar_Missing var_D0
  loc_72E1A1: LitVar_Missing var_B0
  loc_72E1A4: LitStr "Acerca de..."
  loc_72E1A7: FStStrCopy var_90
  loc_72E1AA: FLdRfVar var_90
  loc_72E1AD: LitI4 &H49
  loc_72E1B2: PopTmpLdAdStr var_8C
  loc_72E1B5: LitI2_Byte &HA
  loc_72E1B7: PopTmpLdAd2 var_86
  loc_72E1BA: ImpAdLdRf MemVar_74C7D0
  loc_72E1BD: NewIfNullPr clsMsg
  loc_72E1C0: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E1C5: ILdRf var_1D4
  loc_72E1C8: FLdPrThis
  loc_72E1C9: VCallAd Control_ID_frmAcercaDe
  loc_72E1CC: FStAdFunc var_1D8
  loc_72E1CF: FLdPr var_1D8
  loc_72E1D2: Me.Caption = from_stack_1
  loc_72E1D7: FFreeStr var_90 = ""
  loc_72E1DE: FFree1Ad var_1D8
  loc_72E1E1: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E1F8: FLdRfVar var_1D4
  loc_72E1FB: LitVar_Missing var_1D0
  loc_72E1FE: LitVar_Missing var_1B0
  loc_72E201: LitVar_Missing var_190
  loc_72E204: LitVar_Missing var_170
  loc_72E207: LitVar_Missing var_150
  loc_72E20A: LitVar_Missing var_130
  loc_72E20D: LitVar_Missing var_110
  loc_72E210: LitVar_Missing var_F0
  loc_72E213: LitVar_Missing var_D0
  loc_72E216: LitVar_Missing var_B0
  loc_72E219: LitStr "&Salir"
  loc_72E21C: FStStrCopy var_90
  loc_72E21F: FLdRfVar var_90
  loc_72E222: LitI4 &H4A
  loc_72E227: PopTmpLdAdStr var_8C
  loc_72E22A: LitI2_Byte &HA
  loc_72E22C: PopTmpLdAd2 var_86
  loc_72E22F: ImpAdLdRf MemVar_74C7D0
  loc_72E232: NewIfNullPr clsMsg
  loc_72E235: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E23A: ILdRf var_1D4
  loc_72E23D: FLdPrThis
  loc_72E23E: VCallAd Control_ID_mnuCerrarConsola
  loc_72E241: FStAdFunc var_1D8
  loc_72E244: FLdPr var_1D8
  loc_72E247: Me.Caption = from_stack_1
  loc_72E24C: FFreeStr var_90 = ""
  loc_72E253: FFree1Ad var_1D8
  loc_72E256: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E26D: FLdRfVar var_1D4
  loc_72E270: LitVar_Missing var_1D0
  loc_72E273: LitVar_Missing var_1B0
  loc_72E276: LitVar_Missing var_190
  loc_72E279: LitVar_Missing var_170
  loc_72E27C: LitVar_Missing var_150
  loc_72E27F: LitVar_Missing var_130
  loc_72E282: LitVar_Missing var_110
  loc_72E285: LitVar_Missing var_F0
  loc_72E288: LitVar_Missing var_D0
  loc_72E28B: LitVar_Missing var_B0
  loc_72E28E: LitStr "Reporte de Gr&upo de"
  loc_72E291: FStStrCopy var_90
  loc_72E294: FLdRfVar var_90
  loc_72E297: LitI4 &H16
  loc_72E29C: PopTmpLdAdStr var_8C
  loc_72E29F: LitI2_Byte &HA
  loc_72E2A1: PopTmpLdAd2 var_86
  loc_72E2A4: ImpAdLdRf MemVar_74C7D0
  loc_72E2A7: NewIfNullPr clsMsg
  loc_72E2AA: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E2AF: ILdRf var_1D4
  loc_72E2B2: LitStr " "
  loc_72E2B5: ConcatStr
  loc_72E2B6: FStStrNoPop var_1DC
  loc_72E2B9: ImpAdLdI4 MemVar_74BEE4
  loc_72E2BC: ConcatStr
  loc_72E2BD: FStStrNoPop var_1E0
  loc_72E2C0: FLdPrThis
  loc_72E2C1: VCallAd Control_ID_mnuReporteGrupo
  loc_72E2C4: FStAdFunc var_1D8
  loc_72E2C7: FLdPr var_1D8
  loc_72E2CA: Me.Caption = from_stack_1
  loc_72E2CF: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_72E2DA: FFree1Ad var_1D8
  loc_72E2DD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E2F4: FLdRfVar var_1D4
  loc_72E2F7: LitVar_Missing var_1D0
  loc_72E2FA: LitVar_Missing var_1B0
  loc_72E2FD: LitVar_Missing var_190
  loc_72E300: LitVar_Missing var_170
  loc_72E303: LitVar_Missing var_150
  loc_72E306: LitVar_Missing var_130
  loc_72E309: LitVar_Missing var_110
  loc_72E30C: LitVar_Missing var_F0
  loc_72E30F: LitVar_Missing var_D0
  loc_72E312: LitVar_Missing var_B0
  loc_72E315: LitStr "Gr&upo de"
  loc_72E318: FStStrCopy var_90
  loc_72E31B: FLdRfVar var_90
  loc_72E31E: LitI4 &H40
  loc_72E323: PopTmpLdAdStr var_8C
  loc_72E326: LitI2_Byte &HA
  loc_72E328: PopTmpLdAd2 var_86
  loc_72E32B: ImpAdLdRf MemVar_74C7D0
  loc_72E32E: NewIfNullPr clsMsg
  loc_72E331: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E336: ILdRf var_1D4
  loc_72E339: LitStr " "
  loc_72E33C: ConcatStr
  loc_72E33D: FStStrNoPop var_1DC
  loc_72E340: ImpAdLdI4 MemVar_74BEE4
  loc_72E343: ConcatStr
  loc_72E344: FStStrNoPop var_1E0
  loc_72E347: FLdPrThis
  loc_72E348: VCallAd Control_ID_mnuGruposSurtidores
  loc_72E34B: FStAdFunc var_1D8
  loc_72E34E: FLdPr var_1D8
  loc_72E351: Me.Caption = from_stack_1
  loc_72E356: FFreeStr var_90 = "": var_1D4 = "": var_1DC = ""
  loc_72E361: FFree1Ad var_1D8
  loc_72E364: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E37B: FLdRfVar var_1D4
  loc_72E37E: LitVar_Missing var_1D0
  loc_72E381: LitVar_Missing var_1B0
  loc_72E384: LitVar_Missing var_190
  loc_72E387: LitVar_Missing var_170
  loc_72E38A: LitVar_Missing var_150
  loc_72E38D: LitVar_Missing var_130
  loc_72E390: LitVar_Missing var_110
  loc_72E393: LitVar_Missing var_F0
  loc_72E396: LitVar_Missing var_D0
  loc_72E399: LitVar_Missing var_B0
  loc_72E39C: LitStr "Productos"
  loc_72E39F: FStStrCopy var_90
  loc_72E3A2: FLdRfVar var_90
  loc_72E3A5: LitI4 &HAF
  loc_72E3AA: PopTmpLdAdStr var_8C
  loc_72E3AD: LitI2_Byte &HA
  loc_72E3AF: PopTmpLdAd2 var_86
  loc_72E3B2: ImpAdLdRf MemVar_74C7D0
  loc_72E3B5: NewIfNullPr clsMsg
  loc_72E3B8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E3BD: ILdRf var_1D4
  loc_72E3C0: FLdPrThis
  loc_72E3C1: VCallAd Control_ID_mnuProductos
  loc_72E3C4: FStAdFunc var_1D8
  loc_72E3C7: FLdPr var_1D8
  loc_72E3CA: Me.Caption = from_stack_1
  loc_72E3CF: FFreeStr var_90 = ""
  loc_72E3D6: FFree1Ad var_1D8
  loc_72E3D9: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E3F0: FLdRfVar var_1D4
  loc_72E3F3: LitVar_Missing var_1D0
  loc_72E3F6: LitVar_Missing var_1B0
  loc_72E3F9: LitVar_Missing var_190
  loc_72E3FC: LitVar_Missing var_170
  loc_72E3FF: LitVar_Missing var_150
  loc_72E402: LitVar_Missing var_130
  loc_72E405: LitVar_Missing var_110
  loc_72E408: LitVar_Missing var_F0
  loc_72E40B: LitVar_Missing var_D0
  loc_72E40E: LitVar_Missing var_B0
  loc_72E411: LitStr "&Color de Producto"
  loc_72E414: FStStrCopy var_90
  loc_72E417: FLdRfVar var_90
  loc_72E41A: LitI4 &HB0
  loc_72E41F: PopTmpLdAdStr var_8C
  loc_72E422: LitI2_Byte &HA
  loc_72E424: PopTmpLdAd2 var_86
  loc_72E427: ImpAdLdRf MemVar_74C7D0
  loc_72E42A: NewIfNullPr clsMsg
  loc_72E42D: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E432: ILdRf var_1D4
  loc_72E435: FLdPrThis
  loc_72E436: VCallAd Control_ID_mnuColor
  loc_72E439: FStAdFunc var_1D8
  loc_72E43C: FLdPr var_1D8
  loc_72E43F: Me.Caption = from_stack_1
  loc_72E444: FFreeStr var_90 = ""
  loc_72E44B: FFree1Ad var_1D8
  loc_72E44E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E465: FLdRfVar var_1D4
  loc_72E468: LitVar_Missing var_1D0
  loc_72E46B: LitVar_Missing var_1B0
  loc_72E46E: LitVar_Missing var_190
  loc_72E471: LitVar_Missing var_170
  loc_72E474: LitVar_Missing var_150
  loc_72E477: LitVar_Missing var_130
  loc_72E47A: LitVar_Missing var_110
  loc_72E47D: LitVar_Missing var_F0
  loc_72E480: LitVar_Missing var_D0
  loc_72E483: LitVar_Missing var_B0
  loc_72E486: LitStr "&Menu de Tanques"
  loc_72E489: FStStrCopy var_90
  loc_72E48C: FLdRfVar var_90
  loc_72E48F: LitI4 &H190
  loc_72E494: PopTmpLdAdStr var_8C
  loc_72E497: LitI2_Byte &HA
  loc_72E499: PopTmpLdAd2 var_86
  loc_72E49C: ImpAdLdRf MemVar_74C7D0
  loc_72E49F: NewIfNullPr clsMsg
  loc_72E4A2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E4A7: ILdRf var_1D4
  loc_72E4AA: FLdPrThis
  loc_72E4AB: VCallAd Control_ID_TANKS
  loc_72E4AE: FStAdFunc var_1D8
  loc_72E4B1: FLdPr var_1D8
  loc_72E4B4: Me.Caption = from_stack_1
  loc_72E4B9: FFreeStr var_90 = ""
  loc_72E4C0: FFree1Ad var_1D8
  loc_72E4C3: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E4DA: FLdRfVar var_1D4
  loc_72E4DD: LitVar_Missing var_1D0
  loc_72E4E0: LitVar_Missing var_1B0
  loc_72E4E3: LitVar_Missing var_190
  loc_72E4E6: LitVar_Missing var_170
  loc_72E4E9: LitVar_Missing var_150
  loc_72E4EC: LitVar_Missing var_130
  loc_72E4EF: LitVar_Missing var_110
  loc_72E4F2: LitVar_Missing var_F0
  loc_72E4F5: LitVar_Missing var_D0
  loc_72E4F8: LitVar_Missing var_B0
  loc_72E4FB: LitStr "CARGANDO  CONFIGURACION  INICIAL...."
  loc_72E4FE: FStStrCopy var_90
  loc_72E501: FLdRfVar var_90
  loc_72E504: LitI4 &H83
  loc_72E509: PopTmpLdAdStr var_8C
  loc_72E50C: LitI2_Byte &HA
  loc_72E50E: PopTmpLdAd2 var_86
  loc_72E511: ImpAdLdRf MemVar_74C7D0
  loc_72E514: NewIfNullPr clsMsg
  loc_72E517: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E51C: ILdRf var_1D4
  loc_72E51F: FLdPrThis
  loc_72E520: VCallAd Control_ID_Text1
  loc_72E523: FStAdFunc var_1D8
  loc_72E526: FLdPr var_1D8
  loc_72E529: Me.Text = from_stack_1
  loc_72E52E: FFreeStr var_90 = ""
  loc_72E535: FFree1Ad var_1D8
  loc_72E538: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E54F: FLdRfVar var_1D4
  loc_72E552: LitVar_Missing var_1D0
  loc_72E555: LitVar_Missing var_1B0
  loc_72E558: LitVar_Missing var_190
  loc_72E55B: LitVar_Missing var_170
  loc_72E55E: LitVar_Missing var_150
  loc_72E561: LitVar_Missing var_130
  loc_72E564: LitVar_Missing var_110
  loc_72E567: LitVar_Missing var_F0
  loc_72E56A: LitVar_Missing var_D0
  loc_72E56D: LitVar_Missing var_B0
  loc_72E570: LitStr "ALMACENANDO  CONFIGURACION  INICIAL...."
  loc_72E573: FStStrCopy var_90
  loc_72E576: FLdRfVar var_90
  loc_72E579: LitI4 &H84
  loc_72E57E: PopTmpLdAdStr var_8C
  loc_72E581: LitI2_Byte &HA
  loc_72E583: PopTmpLdAd2 var_86
  loc_72E586: ImpAdLdRf MemVar_74C7D0
  loc_72E589: NewIfNullPr clsMsg
  loc_72E58C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E591: ILdRf var_1D4
  loc_72E594: FLdPrThis
  loc_72E595: VCallAd Control_ID_Text2
  loc_72E598: FStAdFunc var_1D8
  loc_72E59B: FLdPr var_1D8
  loc_72E59E: Me.Text = from_stack_1
  loc_72E5A3: FFreeStr var_90 = ""
  loc_72E5AA: FFree1Ad var_1D8
  loc_72E5AD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E5C4: FLdRfVar var_1D4
  loc_72E5C7: LitVar_Missing var_1D0
  loc_72E5CA: LitVar_Missing var_1B0
  loc_72E5CD: LitVar_Missing var_190
  loc_72E5D0: LitVar_Missing var_170
  loc_72E5D3: LitVar_Missing var_150
  loc_72E5D6: LitVar_Missing var_130
  loc_72E5D9: LitVar_Missing var_110
  loc_72E5DC: LitVar_Missing var_F0
  loc_72E5DF: LitVar_Missing var_D0
  loc_72E5E2: LitVar_Missing var_B0
  loc_72E5E5: LitStr "RECUPERANDO  CONFIGURACION  INICIAL...."
  loc_72E5E8: FStStrCopy var_90
  loc_72E5EB: FLdRfVar var_90
  loc_72E5EE: LitI4 &H85
  loc_72E5F3: PopTmpLdAdStr var_8C
  loc_72E5F6: LitI2_Byte &HA
  loc_72E5F8: PopTmpLdAd2 var_86
  loc_72E5FB: ImpAdLdRf MemVar_74C7D0
  loc_72E5FE: NewIfNullPr clsMsg
  loc_72E601: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E606: ILdRf var_1D4
  loc_72E609: FLdPrThis
  loc_72E60A: VCallAd Control_ID_Text3
  loc_72E60D: FStAdFunc var_1D8
  loc_72E610: FLdPr var_1D8
  loc_72E613: Me.Text = from_stack_1
  loc_72E618: FFreeStr var_90 = ""
  loc_72E61F: FFree1Ad var_1D8
  loc_72E622: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E639: FLdRfVar var_1D4
  loc_72E63C: LitVar_Missing var_1D0
  loc_72E63F: LitVar_Missing var_1B0
  loc_72E642: LitVar_Missing var_190
  loc_72E645: LitVar_Missing var_170
  loc_72E648: LitVar_Missing var_150
  loc_72E64B: LitVar_Missing var_130
  loc_72E64E: LitVar_Missing var_110
  loc_72E651: LitVar_Missing var_F0
  loc_72E654: LitVar_Missing var_D0
  loc_72E657: LitVar_Missing var_B0
  loc_72E65A: LitStr "UN  MOMENTO,  POR  FAVOR...."
  loc_72E65D: FStStrCopy var_90
  loc_72E660: FLdRfVar var_90
  loc_72E663: LitI4 &H86
  loc_72E668: PopTmpLdAdStr var_8C
  loc_72E66B: LitI2_Byte &HA
  loc_72E66D: PopTmpLdAd2 var_86
  loc_72E670: ImpAdLdRf MemVar_74C7D0
  loc_72E673: NewIfNullPr clsMsg
  loc_72E676: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E67B: ILdRf var_1D4
  loc_72E67E: FLdPrThis
  loc_72E67F: VCallAd Control_ID_Text4
  loc_72E682: FStAdFunc var_1D8
  loc_72E685: FLdPr var_1D8
  loc_72E688: Me.Text = from_stack_1
  loc_72E68D: FFreeStr var_90 = ""
  loc_72E694: FFree1Ad var_1D8
  loc_72E697: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E6AE: FLdRfVar var_1D4
  loc_72E6B1: LitVar_Missing var_1D0
  loc_72E6B4: LitVar_Missing var_1B0
  loc_72E6B7: LitVar_Missing var_190
  loc_72E6BA: LitVar_Missing var_170
  loc_72E6BD: LitVar_Missing var_150
  loc_72E6C0: LitVar_Missing var_130
  loc_72E6C3: LitVar_Missing var_110
  loc_72E6C6: LitVar_Missing var_F0
  loc_72E6C9: LitVar_Missing var_D0
  loc_72E6CC: LitVar_Missing var_B0
  loc_72E6CF: LitStr "SE HA EXCEDIDO EL MONTO MAXIMO EN PLAYA"
  loc_72E6D2: FStStrCopy var_90
  loc_72E6D5: FLdRfVar var_90
  loc_72E6D8: LitI4 &H87
  loc_72E6DD: PopTmpLdAdStr var_8C
  loc_72E6E0: LitI2_Byte &HA
  loc_72E6E2: PopTmpLdAd2 var_86
  loc_72E6E5: ImpAdLdRf MemVar_74C7D0
  loc_72E6E8: NewIfNullPr clsMsg
  loc_72E6EB: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E6F0: ILdRf var_1D4
  loc_72E6F3: FLdPrThis
  loc_72E6F4: VCallAd Control_ID_txtAviso
  loc_72E6F7: FStAdFunc var_1D8
  loc_72E6FA: FLdPr var_1D8
  loc_72E6FD: Me.Text = from_stack_1
  loc_72E702: FFreeStr var_90 = ""
  loc_72E709: FFree1Ad var_1D8
  loc_72E70C: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E723: FLdRfVar var_1D4
  loc_72E726: LitVar_Missing var_1D0
  loc_72E729: LitVar_Missing var_1B0
  loc_72E72C: LitVar_Missing var_190
  loc_72E72F: LitVar_Missing var_170
  loc_72E732: LitVar_Missing var_150
  loc_72E735: LitVar_Missing var_130
  loc_72E738: LitVar_Missing var_110
  loc_72E73B: LitVar_Missing var_F0
  loc_72E73E: LitVar_Missing var_D0
  loc_72E741: LitVar_Missing var_B0
  loc_72E744: LitStr "Controlador de surtidores"
  loc_72E747: FStStrCopy var_90
  loc_72E74A: FLdRfVar var_90
  loc_72E74D: LitI4 &HB2
  loc_72E752: PopTmpLdAdStr var_8C
  loc_72E755: LitI2_Byte &HA
  loc_72E757: PopTmpLdAd2 var_86
  loc_72E75A: ImpAdLdRf MemVar_74C7D0
  loc_72E75D: NewIfNullPr clsMsg
  loc_72E760: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_72E765: ILdRf var_1D4
  loc_72E768: FLdRfVar var_1D8
  loc_72E76B: ImpAdLdRf MemVar_7520D4
  loc_72E76E: NewIfNullPr Global
  loc_72E771:  = Global.App
  loc_72E776: FLdPr var_1D8
  loc_72E779: App.Title = from_stack_1
  loc_72E77E: FFreeStr var_90 = ""
  loc_72E785: FFree1Ad var_1D8
  loc_72E788: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_72E79F: ExitProcHresult
End Function

Private Function Proc_162_200_617C9C() '617C9C
  'Data Table: 460894
  loc_617B6C: LitI2_Byte 0
  loc_617B6E: CR8I2
  loc_617B6F: PopFPR4
  loc_617B70: FLdPr Me
  loc_617B73: Me.Top = from_stack_1s
  loc_617B78: LitI2_Byte 0
  loc_617B7A: CR8I2
  loc_617B7B: PopFPR4
  loc_617B7C: FLdPr Me
  loc_617B7F: Me.Left = from_stack_1s
  loc_617B84: FLdRfVar var_8C
  loc_617B87: FLdRfVar var_88
  loc_617B8A: ImpAdLdRf MemVar_7520D4
  loc_617B8D: NewIfNullPr Global
  loc_617B90:  = Global.Screen
  loc_617B95: FLdPr var_88
  loc_617B98:  = Screen.TwipsPerPixelY
  loc_617B9D: FLdFPR4 var_8C
  loc_617BA0: LitI2 600
  loc_617BA3: CR8I2
  loc_617BA4: MulR8
  loc_617BA5: PopFPR4
  loc_617BA6: FLdPr Me
  loc_617BA9: Me.Height = from_stack_1s
  loc_617BAE: FFree1Ad var_88
  loc_617BB1: FLdRfVar var_8C
  loc_617BB4: FLdRfVar var_88
  loc_617BB7: ImpAdLdRf MemVar_7520D4
  loc_617BBA: NewIfNullPr Global
  loc_617BBD:  = Global.Screen
  loc_617BC2: FLdPr var_88
  loc_617BC5:  = Screen.TwipsPerPixelX
  loc_617BCA: FLdFPR4 var_8C
  loc_617BCD: LitI2 800
  loc_617BD0: CR8I2
  loc_617BD1: MulR8
  loc_617BD2: PopFPR4
  loc_617BD3: FLdPr Me
  loc_617BD6: Me.Width = from_stack_1s
  loc_617BDB: FFree1Ad var_88
  loc_617BDE: FLdRfVar var_94
  loc_617BE1: FLdPrThis
  loc_617BE2: VCallAd Control_ID_txtAviso
  loc_617BE5: FStAdFunc var_90
  loc_617BE8: FLdPr var_90
  loc_617BEB:  = Me.Width
  loc_617BF0: FLdRfVar var_8C
  loc_617BF3: FLdRfVar var_88
  loc_617BF6: ImpAdLdRf MemVar_7520D4
  loc_617BF9: NewIfNullPr Global
  loc_617BFC:  = Global.Screen
  loc_617C01: FLdPr var_88
  loc_617C04:  = Screen.Width
  loc_617C09: FLdFPR4 var_8C
  loc_617C0C: FLdFPR4 var_94
  loc_617C0F: SubR4
  loc_617C10: CI4R8
  loc_617C11: LitI4 2
  loc_617C16: IDvI4
  loc_617C17: CR8I4
  loc_617C18: PopFPR4
  loc_617C19: FLdPrThis
  loc_617C1A: VCallAd Control_ID_txtAviso
  loc_617C1D: FStAdFunc var_98
  loc_617C20: FLdPr var_98
  loc_617C23: Me.Left = from_stack_1s
  loc_617C28: FFreeAd var_88 = "": var_90 = ""
  loc_617C31: FLdRfVar var_94
  loc_617C34: FLdPrThis
  loc_617C35: VCallAd Control_ID_txtAviso
  loc_617C38: FStAdFunc var_90
  loc_617C3B: FLdPr var_90
  loc_617C3E:  = Me.Height
  loc_617C43: FLdRfVar var_8C
  loc_617C46: FLdRfVar var_88
  loc_617C49: ImpAdLdRf MemVar_7520D4
  loc_617C4C: NewIfNullPr Global
  loc_617C4F:  = Global.Screen
  loc_617C54: FLdPr var_88
  loc_617C57:  = Screen.Height
  loc_617C5C: FLdFPR4 var_8C
  loc_617C5F: FLdFPR4 var_94
  loc_617C62: SubR4
  loc_617C63: CI4R8
  loc_617C64: LitI4 2
  loc_617C69: IDvI4
  loc_617C6A: CR8I4
  loc_617C6B: PopFPR4
  loc_617C6C: FLdPrThis
  loc_617C6D: VCallAd Control_ID_txtAviso
  loc_617C70: FStAdFunc var_98
  loc_617C73: FLdPr var_98
  loc_617C76: Me.Top = from_stack_1s
  loc_617C7B: FFreeAd var_88 = "": var_90 = ""
  loc_617C84: LitI2_Byte 0
  loc_617C86: FLdPrThis
  loc_617C87: VCallAd Control_ID_txtAviso
  loc_617C8A: FStAdFunc var_88
  loc_617C8D: FLdPr var_88
  loc_617C90: Me.Visible = from_stack_1b
  loc_617C95: FFree1Ad var_88
  loc_617C98: ExitProcHresult
End Function

Private Function Proc_162_201_60309C(arg_C) '60309C
  'Data Table: 460894
  loc_602FCC: LitI4 0
  loc_602FD1: ILdRf arg_C
  loc_602FD4: CVarRef
  loc_602FD9: ImpAdCallI2 push Dir(, )
  loc_602FDE: FStStrNoPop var_98
  loc_602FE1: LitStr vbNullString
  loc_602FE4: NeStr
  loc_602FE6: FFree1Str var_98
  loc_602FE9: BranchF loc_603087
  loc_602FEC: FLdRfVar var_B0
  loc_602FEF: FLdRfVar var_98
  loc_602FF2: FLdRfVar var_9C
  loc_602FF5: ImpAdLdRf MemVar_7520D4
  loc_602FF8: NewIfNullPr Global
  loc_602FFB:  = Global.App
  loc_603000: FLdPr var_9C
  loc_603003:  = App.Path
  loc_603008: ILdRf var_98
  loc_60300B: LitStr "\imagen.bmp"
  loc_60300E: ConcatStr
  loc_60300F: CVarStr var_AC
  loc_603012: PopAdLdVar
  loc_603013: ImpAdLdRf MemVar_7520D4
  loc_603016: NewIfNullPr Global
  loc_603019: Global.LoadPictureOld from_stack_1
  loc_60301E: FLdZeroAd var_B0
  loc_603021: FStAdFuncNoPop
  loc_603024: FLdPrThis
  loc_603025: VCallAd Control_ID_Image1
  loc_603028: FStAdFunc var_B8
  loc_60302B: FLdPr var_B8
  loc_60302E: Me.Picture = from_stack_1
  loc_603033: FFree1Str var_98
  loc_603036: FFreeAd var_9C = "": var_B4 = ""
  loc_60303F: FFree1Var var_AC = ""
  loc_603042: LitI2 11940
  loc_603045: CR8I2
  loc_603046: PopFPR4
  loc_603047: FLdPrThis
  loc_603048: VCallAd Control_ID_Image1
  loc_60304B: FStAdFunc var_9C
  loc_60304E: FLdPr var_9C
  loc_603051: Me.Width = from_stack_1s
  loc_603056: FFree1Ad var_9C
  loc_603059: LitI2 8295
  loc_60305C: CR8I2
  loc_60305D: PopFPR4
  loc_60305E: FLdPrThis
  loc_60305F: VCallAd Control_ID_Image1
  loc_603062: FStAdFunc var_9C
  loc_603065: FLdPr var_9C
  loc_603068: Me.Height = from_stack_1s
  loc_60306D: FFree1Ad var_9C
  loc_603070: LitI2_Byte &HFF
  loc_603072: FLdPrThis
  loc_603073: VCallAd Control_ID_Image1
  loc_603076: FStAdFunc var_9C
  loc_603079: FLdPr var_9C
  loc_60307C: Me.Stretch = from_stack_1b
  loc_603081: FFree1Ad var_9C
  loc_603084: Branch loc_60309B
  loc_603087: LitI2_Byte 0
  loc_603089: FLdPrThis
  loc_60308A: VCallAd Control_ID_Image1
  loc_60308D: FStAdFunc var_9C
  loc_603090: FLdPr var_9C
  loc_603093: Me.Visible = from_stack_1b
  loc_603098: FFree1Ad var_9C
  loc_60309B: ExitProcHresult
End Function

Private Function Proc_162_202_62CC8C() '62CC8C
  'Data Table: 460894
  loc_62CB08: ImpAdLdI2 MemVar_74BFE0
  loc_62CB0B: BranchF loc_62CB18
  loc_62CB0E: LitStr "\\."
  loc_62CB11: ImpAdStStrCopy MemVar_74BF90
  loc_62CB15: Branch loc_62CC33
  loc_62CB18: LitVarStr var_98, vbNullString
  loc_62CB1D: PopAdLdVar
  loc_62CB1E: LitStr "Pipe"
  loc_62CB21: LitStr "Startup"
  loc_62CB24: LitStr "CEM44"
  loc_62CB27: ImpAdCallI2 GetSetting(, , , )
  loc_62CB2C: ImpAdStStr MemVar_74BF90
  loc_62CB30: ImpAdLdRf MemVar_74BF90
  loc_62CB33: CVarRef
  loc_62CB38: FLdRfVar var_A8
  loc_62CB3B: ImpAdCallFPR4  = Trim()
  loc_62CB40: FLdRfVar var_A8
  loc_62CB43: CStrVarTmp
  loc_62CB44: ImpAdStStr MemVar_74BF90
  loc_62CB48: FFree1Var var_A8 = ""
  loc_62CB4B: ImpAdLdI4 MemVar_74BF90
  loc_62CB4E: LitStr "//."
  loc_62CB51: EqStr
  loc_62CB53: BranchF loc_62CB6E
  loc_62CB56: LitStr "\\."
  loc_62CB59: LitStr "Pipe"
  loc_62CB5C: LitStr "Startup"
  loc_62CB5F: LitStr "CEM44"
  loc_62CB62: ImpAdCallFPR4 SaveSetting(, , , )
  loc_62CB67: LitStr "\\."
  loc_62CB6A: ImpAdStStrCopy MemVar_74BF90
  loc_62CB6E: ImpAdLdI4 MemVar_74BF90
  loc_62CB71: LitStr "\\."
  loc_62CB74: NeStr
  loc_62CB76: BranchF loc_62CC33
  loc_62CB79: FLdRfVar var_AC
  loc_62CB7C: FLdPr Me
  loc_62CB7F:  = Me.hWnd
  loc_62CB84: ImpAdLdRf MemVar_74BF90
  loc_62CB87: CVarRef
  loc_62CB8C: FLdRfVar var_A8
  loc_62CB8F: ImpAdCallFPR4  = Trim()
  loc_62CB94: FLdRfVar var_F4
  loc_62CB97: FLdRfVar var_F0
  loc_62CB9A: ImpAdLdRf MemVar_7520D4
  loc_62CB9D: NewIfNullPr Global
  loc_62CBA0:  = Global.App
  loc_62CBA5: FLdPr var_F0
  loc_62CBA8:  = App.Path
  loc_62CBAD: LitI4 0
  loc_62CBB2: ILdRf var_F4
  loc_62CBB5: LitStr "\"
  loc_62CBB8: ConcatStr
  loc_62CBB9: FStStrNoPop var_108
  loc_62CBBC: FLdRfVar var_10C
  loc_62CBBF: CStr2Ansi
  loc_62CBC0: ILdRf var_10C
  loc_62CBC3: LitVarStr var_BC, "/C net use "
  loc_62CBC8: FLdRfVar var_A8
  loc_62CBCB: ConcatVar var_CC
  loc_62CBCF: LitVarStr var_DC, " /user:operador operador"
  loc_62CBD4: ConcatVar var_EC
  loc_62CBD8: CStrVarVal var_100
  loc_62CBDC: FLdRfVar var_104
  loc_62CBDF: CStr2Ansi
  loc_62CBE0: ILdRf var_104
  loc_62CBE3: LitStr "cmd"
  loc_62CBE6: FLdRfVar var_FC
  loc_62CBE9: CStr2Ansi
  loc_62CBEA: ILdRf var_FC
  loc_62CBED: LitStr "open"
  loc_62CBF0: FLdRfVar var_F8
  loc_62CBF3: CStr2Ansi
  loc_62CBF4: ILdRf var_F8
  loc_62CBF7: ILdRf var_AC
  loc_62CBFA: ImpAdCallI2 ShellExecute(, , , , , )
  loc_62CBFF: FStR4 var_110
  loc_62CC02: SetLastSystemError
  loc_62CC03: ILdRf var_110
  loc_62CC06: CStrI4
  loc_62CC08: FStStr var_88
  loc_62CC0B: FFreeStr var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_62CC1C: FFree1Ad var_F0
  loc_62CC1F: FFreeVar var_A8 = "": var_CC = ""
  loc_62CC28: LitI4 &H3E8
  loc_62CC2D: ImpAdCallFPR4 Sleep()
  loc_62CC32: SetLastSystemError
  loc_62CC33: ImpAdLdI4 MemVar_74BF90
  loc_62CC36: LitStr "\pipe\Cem44Pipe"
  loc_62CC39: ConcatStr
  loc_62CC3A: ImpAdStStr MemVar_74BF90
  loc_62CC3E: ImpAdLdI4 MemVar_74BF90
  loc_62CC41: LitStr "\pipe\Cem44Pipe"
  loc_62CC44: EqStr
  loc_62CC46: BranchF loc_62CC89
  loc_62CC49: LitVar_Missing var_CC
  loc_62CC4C: LitVar_Missing var_A8
  loc_62CC4F: ImpAdLdRf MemVar_74BF24
  loc_62CC52: CVarRef
  loc_62CC57: LitI4 0
  loc_62CC5C: FLdPr Me
  loc_62CC5F: MemLdRfVar from_stack_1.global_7464
  loc_62CC62: CVarRef
  loc_62CC67: ImpAdCallI2 MsgBox(, , , , )
  loc_62CC6C: CBoolI4
  loc_62CC6E: FFreeVar var_A8 = ""
  loc_62CC75: BranchF loc_62CC89
  loc_62CC78: LitVar_TRUE var_98
  loc_62CC7B: PopAdLdVar
  loc_62CC7C: LitI2_Byte &HFF
  loc_62CC7E: ImpAdLdRf MemVar_74E2E0
  loc_62CC81: NewIfNullPr frmPipeConnection
  loc_62CC84: Call frmPipeConnection.ShowMe(from_stack_1v, from_stack_2v)
  loc_62CC89: ExitProcHresult
  loc_62CC8A: CI4Str
End Function

Private Function Proc_162_203_5EC01C() '5EC01C
  'Data Table: 460894
  loc_5EBF9C: LitI2_Byte 0
  loc_5EBF9E: CR8I2
  loc_5EBF9F: FLdPr Me
  loc_5EBFA2: MemStFPR8 global_104
  loc_5EBFA5: LitStr "FLOTAS.INI"
  loc_5EBFA8: FStStrCopy var_90
  loc_5EBFAB: FLdRfVar var_90
  loc_5EBFAE: LitStr "EXE"
  loc_5EBFB1: FStStrCopy var_8C
  loc_5EBFB4: FLdRfVar var_8C
  loc_5EBFB7: LitStr "SERVER"
  loc_5EBFBA: FStStrCopy var_88
  loc_5EBFBD: FLdRfVar var_88
  loc_5EBFC0: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5EBFC5: FStStrNoPop var_94
  loc_5EBFC8: FLdPr Me
  loc_5EBFCB: MemStStrCopy
  loc_5EBFCF: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_5EBFDA: FLdPr Me
  loc_5EBFDD: MemLdStr sFlotasEXE
  loc_5EBFE0: FnLenStr
  loc_5EBFE1: LitI4 1
  loc_5EBFE6: GtI4
  loc_5EBFE7: FLdPrThis
  loc_5EBFE8: VCallAd Control_ID_mnuSepararFlotas
  loc_5EBFEB: FStAdFunc var_98
  loc_5EBFEE: FLdPr var_98
  loc_5EBFF1: Me.Visible = from_stack_1b
  loc_5EBFF6: FFree1Ad var_98
  loc_5EBFF9: FLdPr Me
  loc_5EBFFC: MemLdStr sFlotasEXE
  loc_5EBFFF: FnLenStr
  loc_5EC000: LitI4 1
  loc_5EC005: GtI4
  loc_5EC006: FLdPrThis
  loc_5EC007: VCallAd Control_ID_mnuFlotas
  loc_5EC00A: FStAdFunc var_98
  loc_5EC00D: FLdPr var_98
  loc_5EC010: Me.Visible = from_stack_1b
  loc_5EC015: FFree1Ad var_98
  loc_5EC018: ExitProcHresult
  loc_5EC019: VarIndexSt
End Function

Private Function Proc_162_204_5EBE94() '5EBE94
  'Data Table: 460894
  loc_5EBE14: LitI2_Byte 0
  loc_5EBE16: CR8I2
  loc_5EBE17: FLdPr Me
  loc_5EBE1A: MemStFPR8 global_120
  loc_5EBE1D: LitStr "TARJETACONTADO.INI"
  loc_5EBE20: FStStrCopy var_90
  loc_5EBE23: FLdRfVar var_90
  loc_5EBE26: LitStr "EXE"
  loc_5EBE29: FStStrCopy var_8C
  loc_5EBE2C: FLdRfVar var_8C
  loc_5EBE2F: LitStr "SERVER"
  loc_5EBE32: FStStrCopy var_88
  loc_5EBE35: FLdRfVar var_88
  loc_5EBE38: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5EBE3D: FStStrNoPop var_94
  loc_5EBE40: FLdPr Me
  loc_5EBE43: MemStStrCopy
  loc_5EBE47: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_5EBE52: FLdPr Me
  loc_5EBE55: MemLdStr sTarjetaContadoEXE
  loc_5EBE58: FnLenStr
  loc_5EBE59: LitI4 1
  loc_5EBE5E: GtI4
  loc_5EBE5F: FLdPrThis
  loc_5EBE60: VCallAd Control_ID_mnuTarjetaContado
  loc_5EBE63: FStAdFunc var_98
  loc_5EBE66: FLdPr var_98
  loc_5EBE69: Me.Visible = from_stack_1b
  loc_5EBE6E: FFree1Ad var_98
  loc_5EBE71: FLdPr Me
  loc_5EBE74: MemLdStr sTarjetaContadoEXE
  loc_5EBE77: FnLenStr
  loc_5EBE78: LitI4 1
  loc_5EBE7D: GtI4
  loc_5EBE7E: FLdPrThis
  loc_5EBE7F: VCallAd Control_ID_mnuSeparadorTarjetaContado
  loc_5EBE82: FStAdFunc var_98
  loc_5EBE85: FLdPr var_98
  loc_5EBE88: Me.Visible = from_stack_1b
  loc_5EBE8D: FFree1Ad var_98
  loc_5EBE90: ExitProcHresult
  loc_5EBE91: ThisVCallHidden
End Function

Private Function Proc_162_205_5EBC48() '5EBC48
  'Data Table: 460894
  loc_5EBBC8: LitI2_Byte 0
  loc_5EBBCA: CR8I2
  loc_5EBBCB: FLdPr Me
  loc_5EBBCE: MemStFPR8 global_112
  loc_5EBBD1: LitStr "SERVICLUB.INI"
  loc_5EBBD4: FStStrCopy var_90
  loc_5EBBD7: FLdRfVar var_90
  loc_5EBBDA: LitStr "EXE"
  loc_5EBBDD: FStStrCopy var_8C
  loc_5EBBE0: FLdRfVar var_8C
  loc_5EBBE3: LitStr "SERVER"
  loc_5EBBE6: FStStrCopy var_88
  loc_5EBBE9: FLdRfVar var_88
  loc_5EBBEC: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5EBBF1: FStStrNoPop var_94
  loc_5EBBF4: FLdPr Me
  loc_5EBBF7: MemStStrCopy
  loc_5EBBFB: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_5EBC06: FLdPr Me
  loc_5EBC09: MemLdStr sServiclubEXE
  loc_5EBC0C: FnLenStr
  loc_5EBC0D: LitI4 1
  loc_5EBC12: GtI4
  loc_5EBC13: FLdPrThis
  loc_5EBC14: VCallAd Control_ID_mnuSeparadorServiclub
  loc_5EBC17: FStAdFunc var_98
  loc_5EBC1A: FLdPr var_98
  loc_5EBC1D: Me.Visible = from_stack_1b
  loc_5EBC22: FFree1Ad var_98
  loc_5EBC25: FLdPr Me
  loc_5EBC28: MemLdStr sServiclubEXE
  loc_5EBC2B: FnLenStr
  loc_5EBC2C: LitI4 1
  loc_5EBC31: GtI4
  loc_5EBC32: FLdPrThis
  loc_5EBC33: VCallAd Control_ID_mnuServiclub
  loc_5EBC36: FStAdFunc var_98
  loc_5EBC39: FLdPr var_98
  loc_5EBC3C: Me.Visible = from_stack_1b
  loc_5EBC41: FFree1Ad var_98
  loc_5EBC44: ExitProcHresult
End Function

Private Function Proc_162_206_5E2CF4() '5E2CF4
  'Data Table: 460894
  loc_5E2C9C: LitStr "FLOTAS.INI"
  loc_5E2C9F: FStStrCopy var_94
  loc_5E2CA2: FLdRfVar var_94
  loc_5E2CA5: LitStr "PAGO_CEM44"
  loc_5E2CA8: FStStrCopy var_90
  loc_5E2CAB: FLdRfVar var_90
  loc_5E2CAE: LitStr "GENERAL"
  loc_5E2CB1: FStStrCopy var_8C
  loc_5E2CB4: FLdRfVar var_8C
  loc_5E2CB7: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5E2CBC: FStStr var_88
  loc_5E2CBF: FFreeStr var_8C = "": var_90 = ""
  loc_5E2CC8: OnErrorGoto loc_5E2CEB
  loc_5E2CCB: ILdRf var_88
  loc_5E2CCE: CI2Str
  loc_5E2CD0: FLdPr Me
  loc_5E2CD3: MemStI2 nMedioPagoFlota
  loc_5E2CD6: FLdPr Me
  loc_5E2CD9: MemLdI2 nMedioPagoFlota
  loc_5E2CDC: LitI2_Byte 0
  loc_5E2CDE: EqI2
  loc_5E2CDF: BranchF loc_5E2CEA
  loc_5E2CE2: LitI2_Byte &HFF
  loc_5E2CE4: FLdPr Me
  loc_5E2CE7: MemStI2 nMedioPagoFlota
  loc_5E2CEA: ExitProcHresult
  loc_5E2CEB: LitI2_Byte &HFF
  loc_5E2CED: FLdPr Me
  loc_5E2CF0: MemStI2 nMedioPagoFlota
  loc_5E2CF3: ExitProcHresult
End Function

Private Function Proc_162_207_5E6EC8() '5E6EC8
  'Data Table: 460894
  loc_5E6E5C: LitStr "CEM44.INI"
  loc_5E6E5F: FStStrCopy var_94
  loc_5E6E62: FLdRfVar var_94
  loc_5E6E65: LitStr "PaginaInicial"
  loc_5E6E68: FStStrCopy var_90
  loc_5E6E6B: FLdRfVar var_90
  loc_5E6E6E: LitStr "Intranet"
  loc_5E6E71: FStStrCopy var_8C
  loc_5E6E74: FLdRfVar var_8C
  loc_5E6E77: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_5E6E7C: FStStr var_88
  loc_5E6E7F: FFreeStr var_8C = "": var_90 = ""
  loc_5E6E88: ILdRf var_88
  loc_5E6E8B: FnLenStr
  loc_5E6E8C: LitI4 5
  loc_5E6E91: LtI4
  loc_5E6E92: BranchF loc_5E6EC7
  loc_5E6E95: LitI2_Byte 0
  loc_5E6E97: ImpAdLdRf MemVar_74C760
  loc_5E6E9A: NewIfNullPr Formx
  loc_5E6E9D: VCallAd Control_ID_mnuIntranet
  loc_5E6EA0: FStAdFunc var_98
  loc_5E6EA3: FLdPr var_98
  loc_5E6EA6: Formx.Menu.Visible = from_stack_1b
  loc_5E6EAB: FFree1Ad var_98
  loc_5E6EAE: LitI2_Byte 0
  loc_5E6EB0: ImpAdLdRf MemVar_74C760
  loc_5E6EB3: NewIfNullPr Formx
  loc_5E6EB6: VCallAd Control_ID_mnuSeparadorIntranet
  loc_5E6EB9: FStAdFunc var_98
  loc_5E6EBC: FLdPr var_98
  loc_5E6EBF: Formx.Menu.Visible = from_stack_1b
  loc_5E6EC4: FFree1Ad var_98
  loc_5E6EC7: ExitProcHresult
End Function

Private Function Proc_162_208_605AB4() '605AB4
  'Data Table: 460894
  loc_6059D8: LitVarI2 var_A8, 1
  loc_6059DD: LitI4 &HC
  loc_6059E2: ImpAdLdI4 MemVar_74BEAC
  loc_6059E5: ImpAdCallI2 Mid$(, , )
  loc_6059EA: FStStrNoPop var_AC
  loc_6059ED: LitStr "1"
  loc_6059F0: EqStr
  loc_6059F2: FFree1Str var_AC
  loc_6059F5: FFree1Var var_A8 = ""
  loc_6059F8: BranchF loc_605AB3
  loc_6059FB: LitStr "CEM44.INI"
  loc_6059FE: FStStrCopy var_B4
  loc_605A01: FLdRfVar var_B4
  loc_605A04: LitStr "Productos"
  loc_605A07: FStStrCopy var_B0
  loc_605A0A: FLdRfVar var_B0
  loc_605A0D: LitStr "LCH"
  loc_605A10: FStStrCopy var_AC
  loc_605A13: FLdRfVar var_AC
  loc_605A16: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_605A1B: FStStr var_88
  loc_605A1E: FFreeStr var_AC = "": var_B0 = ""
  loc_605A27: ILdRf var_88
  loc_605A2A: ImpAdCallFPR4 push Val()
  loc_605A2F: CR8R8
  loc_605A30: LitI2_Byte 0
  loc_605A32: CR8I2
  loc_605A33: EqR4
  loc_605A34: BranchF loc_605A45
  loc_605A37: LitI2_Byte &H5F
  loc_605A39: LitI4 1
  loc_605A3E: ImpAdLdRf MemVar_74C9C8
  loc_605A41: Ary1StI2
  loc_605A42: Branch loc_605A57
  loc_605A45: ILdRf var_88
  loc_605A48: ImpAdCallFPR4 push Val()
  loc_605A4D: CI2R8
  loc_605A4E: LitI4 1
  loc_605A53: ImpAdLdRf MemVar_74C9C8
  loc_605A56: Ary1StI2
  loc_605A57: LitStr "CEM44.INI"
  loc_605A5A: FStStrCopy var_B4
  loc_605A5D: FLdRfVar var_B4
  loc_605A60: LitStr "Impuestos"
  loc_605A63: FStStrCopy var_B0
  loc_605A66: FLdRfVar var_B0
  loc_605A69: LitStr "LCH"
  loc_605A6C: FStStrCopy var_AC
  loc_605A6F: FLdRfVar var_AC
  loc_605A72: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_605A77: FStStr var_88
  loc_605A7A: FFreeStr var_AC = "": var_B0 = ""
  loc_605A83: ILdRf var_88
  loc_605A86: ImpAdCallFPR4 push Val()
  loc_605A8B: CR8R8
  loc_605A8C: LitI2_Byte 0
  loc_605A8E: CR8I2
  loc_605A8F: EqR4
  loc_605A90: BranchF loc_605AA1
  loc_605A93: LitI2_Byte &H63
  loc_605A95: LitI4 2
  loc_605A9A: ImpAdLdRf MemVar_74C9C8
  loc_605A9D: Ary1StI2
  loc_605A9E: Branch loc_605AB3
  loc_605AA1: ILdRf var_88
  loc_605AA4: ImpAdCallFPR4 push Val()
  loc_605AA9: CI2R8
  loc_605AAA: LitI4 2
  loc_605AAF: ImpAdLdRf MemVar_74C9C8
  loc_605AB2: Ary1StI2
  loc_605AB3: ExitProcHresult
End Function

Private Function Proc_162_209_66B314() '66B314
  'Data Table: 460894
  loc_66AFC8: ImpAdCallI2 Proc_142_3_5D81F8()
  loc_66AFCD: BranchF loc_66B2DF
  loc_66AFD0: LitVarI2 var_C8, 1
  loc_66AFD5: LitI4 1
  loc_66AFDA: ImpAdLdI4 MemVar_74BEAC
  loc_66AFDD: ImpAdCallI2 Mid$(, , )
  loc_66AFE2: FStStrNoPop var_CC
  loc_66AFE5: LitStr "1"
  loc_66AFE8: EqStr
  loc_66AFEA: FFree1Str var_CC
  loc_66AFED: FFree1Var var_C8 = ""
  loc_66AFF0: BranchF loc_66B00F
  loc_66AFF3: LitI2_Byte &HFF
  loc_66AFF5: ImpAdLdRf MemVar_74C760
  loc_66AFF8: NewIfNullPr Formx
  loc_66AFFB: VCallAd Control_ID_GESTION
  loc_66AFFE: FStAdFunc var_D0
  loc_66B001: FLdPr var_D0
  loc_66B004: Formx.Menu.Visible = from_stack_1b
  loc_66B009: FFree1Ad var_D0
  loc_66B00C: Branch loc_66B0A5
  loc_66B00F: LitI2_Byte 0
  loc_66B011: ImpAdLdRf MemVar_74C760
  loc_66B014: NewIfNullPr Formx
  loc_66B017: VCallAd Control_ID_GESTION
  loc_66B01A: FStAdFunc var_D0
  loc_66B01D: FLdPr var_D0
  loc_66B020: Formx.Menu.Visible = from_stack_1b
  loc_66B025: FFree1Ad var_D0
  loc_66B028: LitI2_Byte 0
  loc_66B02A: ImpAdLdRf MemVar_74C760
  loc_66B02D: NewIfNullPr Formx
  loc_66B030: VCallAd Control_ID_RESUMEN_DE_CUENTA
  loc_66B033: FStAdFunc var_D0
  loc_66B036: FLdPr var_D0
  loc_66B039: Formx.Menu.Visible = from_stack_1b
  loc_66B03E: FFree1Ad var_D0
  loc_66B041: LitI2_Byte 0
  loc_66B043: ImpAdLdRf MemVar_74C760
  loc_66B046: NewIfNullPr Formx
  loc_66B049: VCallAd Control_ID_Ingreso_Recibos
  loc_66B04C: FStAdFunc var_D0
  loc_66B04F: FLdPr var_D0
  loc_66B052: Formx.Menu.Visible = from_stack_1b
  loc_66B057: FFree1Ad var_D0
  loc_66B05A: LitI2_Byte 0
  loc_66B05C: ImpAdLdRf MemVar_74C760
  loc_66B05F: NewIfNullPr Formx
  loc_66B062: VCallAd Control_ID_CAMBIO_NRO_COMPRO
  loc_66B065: FStAdFunc var_D0
  loc_66B068: FLdPr var_D0
  loc_66B06B: Formx.Menu.Visible = from_stack_1b
  loc_66B070: FFree1Ad var_D0
  loc_66B073: LitI2_Byte 0
  loc_66B075: ImpAdLdRf MemVar_74C760
  loc_66B078: NewIfNullPr Formx
  loc_66B07B: VCallAd Control_ID_mnuUltimaFacturaDif
  loc_66B07E: FStAdFunc var_D0
  loc_66B081: FLdPr var_D0
  loc_66B084: Formx.Menu.Visible = from_stack_1b
  loc_66B089: FFree1Ad var_D0
  loc_66B08C: LitI2_Byte 0
  loc_66B08E: ImpAdLdRf MemVar_74C760
  loc_66B091: NewIfNullPr Formx
  loc_66B094: VCallAd Control_ID_mnuSeparadorGestion
  loc_66B097: FStAdFunc var_D0
  loc_66B09A: FLdPr var_D0
  loc_66B09D: Formx.Menu.Visible = from_stack_1b
  loc_66B0A2: FFree1Ad var_D0
  loc_66B0A5: LitI2_Byte &HFF
  loc_66B0A7: ImpAdLdRf MemVar_74C760
  loc_66B0AA: NewIfNullPr Formx
  loc_66B0AD: VCallAd Control_ID_mnuReporteTicket
  loc_66B0B0: FStAdFunc var_D0
  loc_66B0B3: FLdPr var_D0
  loc_66B0B6: Formx.Menu.Visible = from_stack_1b
  loc_66B0BB: FFree1Ad var_D0
  loc_66B0BE: LitI2_Byte &HFF
  loc_66B0C0: ImpAdLdRf MemVar_74C760
  loc_66B0C3: NewIfNullPr Formx
  loc_66B0C6: VCallAd Control_ID_mnuTicket
  loc_66B0C9: FStAdFunc var_D0
  loc_66B0CC: FLdPr var_D0
  loc_66B0CF: Formx.Menu.Visible = from_stack_1b
  loc_66B0D4: FFree1Ad var_D0
  loc_66B0D7: LitI2_Byte 0
  loc_66B0D9: FStI2 var_9E
  loc_66B0DC: DestructOFrame
  loc_66B0E2: FLdRfVar var_154
  loc_66B0E5: ImpAdCallFPR4  = Proc_156_4_63714C()
  loc_66B0EA: FLdRfVar var_154
  loc_66B0ED: ImpAdLdRf MemVar_74E01C
  loc_66B0F0: AssignRecord
  loc_66B0F4: LitStr vbNullString
  loc_66B0F7: FStStrCopy var_CC
  loc_66B0FA: FLdRfVar var_CC
  loc_66B0FD: ImpAdCallI2 Proc_142_5_5F7928()
  loc_66B102: ImpAdStStr MemVar_74E0A0
  loc_66B106: FFree1Str var_CC
  loc_66B109: DestructOFrame
  loc_66B10F: FLdRfVar var_2DC
  loc_66B112: ImpAdCallFPR4 Proc_156_5_631170()
  loc_66B117: FLdRfVar var_2DC
  loc_66B11A: ImpAdLdRf MemVar_74DE94
  loc_66B11D: AssignRecord
  loc_66B121: DestructOFrame
  loc_66B127: ImpAdLdRf MemVar_74DE94
  loc_66B12A: FLdRfVar var_464
  loc_66B12D: ImpAdCallFPR4  = Proc_156_6_620C34()
  loc_66B132: FLdRfVar var_464
  loc_66B135: ImpAdLdRf MemVar_74DE94
  loc_66B138: AssignRecord
  loc_66B13C: LitI2_Byte 1
  loc_66B13E: FStI2 var_A0
  loc_66B141: FLdRfVar var_D0
  loc_66B144: ImpAdLdRf MemVar_7520D4
  loc_66B147: NewIfNullPr Global
  loc_66B14A:  = Global.Printers
  loc_66B14F: FLdZeroAd var_D0
  loc_66B152: FStAdFuncNoPop
  loc_66B155: FLdRfVar var_A8
  loc_66B158: ForEachCollObj
  loc_66B160: FLdI2 var_A0
  loc_66B163: LitI2_Byte &H20
  loc_66B165: GtI2
  loc_66B166: BranchF loc_66B16F
  loc_66B169: ExitForCollObj
  loc_66B16F: FLdPr var_A8
  loc_66B172: LateIdLdVar var_C8 DispID_28 1
  loc_66B179: PopAd
  loc_66B17B: LitI4 &H32
  loc_66B180: FLdRfVar var_C8
  loc_66B183: CStrVarTmp
  loc_66B184: FStStrNoPop var_CC
  loc_66B187: ImpAdCallI2 Left$(, )
  loc_66B18C: FStStrNoPop var_470
  loc_66B18F: FLdI2 var_A0
  loc_66B192: CI4UI1
  loc_66B193: FLdRfVar var_9C
  loc_66B196: Ary1StStrCopy
  loc_66B197: FFreeStr var_CC = ""
  loc_66B19E: FFree1Var var_C8 = ""
  loc_66B1A1: FLdI2 var_A0
  loc_66B1A4: ImpAdLdPr unk_460A11
  loc_66B1A7: MemStI2 global_384
  loc_66B1AA: FLdI2 var_A0
  loc_66B1AD: LitI2_Byte 1
  loc_66B1AF: AddI2
  loc_66B1B0: FStI2 var_A0
  loc_66B1B3: FLdRfVar var_A8
  loc_66B1B6: NextEachCollObj
  loc_66B1BE: LitI2_Byte 1
  loc_66B1C0: FLdRfVar var_A0
  loc_66B1C3: ImpAdLdUI1
  loc_66B1C7: CI2UI1
  loc_66B1C9: ForI2 var_474
  loc_66B1CF: LitI2_Byte 1
  loc_66B1D1: FLdRfVar var_A2
  loc_66B1D4: ImpAdLdPr unk_460A11
  loc_66B1D7: MemLdI2 global_384
  loc_66B1DA: ForI2 var_478
  loc_66B1E0: FLdI2 var_A0
  loc_66B1E3: CI4UI1
  loc_66B1E4: ImpAdLdPr unk_460A11
  loc_66B1E7: MemLdRfVar from_stack_1.global_128
  loc_66B1EA: AryInRecLdRf
  loc_66B1F0: CVarRef
  loc_66B1F5: FLdRfVar var_C8
  loc_66B1F8: ImpAdCallFPR4  = Trim()
  loc_66B1FD: FLdRfVar var_C8
  loc_66B200: FLdI2 var_A2
  loc_66B203: CI4UI1
  loc_66B204: FLdRfVar var_9C
  loc_66B207: Ary1LdRf
  loc_66B208: CVarRef
  loc_66B20D: FLdRfVar var_498
  loc_66B210: ImpAdCallFPR4  = Trim()
  loc_66B215: FLdRfVar var_498
  loc_66B218: EqVarBool
  loc_66B21A: FFreeVar var_C8 = ""
  loc_66B221: BranchF loc_66B240
  loc_66B224: FLdI2 var_A2
  loc_66B227: LitI2_Byte 1
  loc_66B229: SubI2
  loc_66B22A: FLdI2 var_A0
  loc_66B22D: CI4UI1
  loc_66B22E: ImpAdLdPr unk_460A11
  loc_66B231: MemLdRfVar from_stack_1.global_0
  loc_66B234: AryInRecLdPr
  loc_66B23A: MemStI2 global_0
  loc_66B23D: Branch loc_66B248
  loc_66B240: FLdRfVar var_A2
  loc_66B243: NextI2 var_478, loc_66B1E0
  loc_66B248: FLdI2 var_A2
  loc_66B24B: ImpAdLdPr unk_460A11
  loc_66B24E: MemLdI2 global_384
  loc_66B251: GtI2
  loc_66B252: BranchF loc_66B28C
  loc_66B255: LitI2_Byte &HFF
  loc_66B257: FStI2 var_9E
  loc_66B25A: LitI2_Byte 0
  loc_66B25C: FLdI2 var_A0
  loc_66B25F: CI4UI1
  loc_66B260: ImpAdLdPr unk_460A11
  loc_66B263: MemLdRfVar from_stack_1.global_0
  loc_66B266: AryInRecLdPr
  loc_66B26C: MemStI2 global_0
  loc_66B26F: LitI4 1
  loc_66B274: FLdRfVar var_9C
  loc_66B277: Ary1LdI4
  loc_66B278: FLdI2 var_A0
  loc_66B27B: CI4UI1
  loc_66B27C: ImpAdLdPr unk_460A11
  loc_66B27F: MemLdRfVar from_stack_1.global_128
  loc_66B282: AryInRecLdPr
  loc_66B288: MemStStrCopy
  loc_66B28C: FLdRfVar var_A0
  loc_66B28F: NextI2 var_474, loc_66B1CF
  loc_66B294: LitStr "ConVolTicket"
  loc_66B297: FStStrCopy var_CC
  loc_66B29A: FLdRfVar var_CC
  loc_66B29D: ImpAdCallI2 Proc_158_2_607130()
  loc_66B2A2: NotI4
  loc_66B2A3: FFree1Str var_CC
  loc_66B2A6: BranchF loc_66B2DC
  loc_66B2A9: FLdI2 var_9E
  loc_66B2AC: BranchF loc_66B2DC
  loc_66B2AF: LitVar_Missing var_498
  loc_66B2B2: LitVar_Missing var_C8
  loc_66B2B5: FLdPr Me
  loc_66B2B8: MemLdRfVar from_stack_1.global_7480
  loc_66B2BB: CVarRef
  loc_66B2C0: LitI4 &H40
  loc_66B2C5: FLdPr Me
  loc_66B2C8: MemLdRfVar from_stack_1.global_7476
  loc_66B2CB: CVarRef
  loc_66B2D0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_66B2D5: FFreeVar var_C8 = ""
  loc_66B2DC: Branch loc_66B311
  loc_66B2DF: LitI2_Byte 0
  loc_66B2E1: ImpAdLdRf MemVar_74C760
  loc_66B2E4: NewIfNullPr Formx
  loc_66B2E7: VCallAd Control_ID_mnuReporteTicket
  loc_66B2EA: FStAdFunc var_D0
  loc_66B2ED: FLdPr var_D0
  loc_66B2F0: Formx.Menu.Visible = from_stack_1b
  loc_66B2F5: FFree1Ad var_D0
  loc_66B2F8: LitI2_Byte 0
  loc_66B2FA: ImpAdLdRf MemVar_74C760
  loc_66B2FD: NewIfNullPr Formx
  loc_66B300: VCallAd Control_ID_mnuTicket
  loc_66B303: FStAdFunc var_D0
  loc_66B306: FLdPr var_D0
  loc_66B309: Formx.Menu.Visible = from_stack_1b
  loc_66B30E: FFree1Ad var_D0
  loc_66B311: ExitProcHresult
End Function

Private Function Proc_162_210_6A297C() '6A297C
  'Data Table: 460894
  loc_6A229C: LitVarI2 var_A4, 1
  loc_6A22A1: LitI4 1
  loc_6A22A6: ImpAdLdI4 MemVar_74BEAC
  loc_6A22A9: ImpAdCallI2 Mid$(, , )
  loc_6A22AE: FStStrNoPop var_A8
  loc_6A22B1: LitStr "1"
  loc_6A22B4: EqStr
  loc_6A22B6: FFree1Str var_A8
  loc_6A22B9: FFree1Var var_A4 = ""
  loc_6A22BC: BranchF loc_6A22EF
  loc_6A22BF: LitI2_Byte &HFF
  loc_6A22C1: ImpAdLdRf MemVar_74C760
  loc_6A22C4: NewIfNullPr Formx
  loc_6A22C7: VCallAd Control_ID_GESTION
  loc_6A22CA: FStAdFunc var_AC
  loc_6A22CD: FLdPr var_AC
  loc_6A22D0: Formx.Menu.Visible = from_stack_1b
  loc_6A22D5: FFree1Ad var_AC
  loc_6A22D8: LitI2_Byte &HFF
  loc_6A22DA: FLdPrThis
  loc_6A22DB: VCallAd Control_ID_Comisiones
  loc_6A22DE: FStAdFunc var_AC
  loc_6A22E1: FLdPr var_AC
  loc_6A22E4: Me.Visible = from_stack_1b
  loc_6A22E9: FFree1Ad var_AC
  loc_6A22EC: Branch loc_6A231C
  loc_6A22EF: LitI2_Byte 0
  loc_6A22F1: ImpAdLdRf MemVar_74C760
  loc_6A22F4: NewIfNullPr Formx
  loc_6A22F7: VCallAd Control_ID_GESTION
  loc_6A22FA: FStAdFunc var_AC
  loc_6A22FD: FLdPr var_AC
  loc_6A2300: Formx.Menu.Visible = from_stack_1b
  loc_6A2305: FFree1Ad var_AC
  loc_6A2308: LitI2_Byte 0
  loc_6A230A: FLdPrThis
  loc_6A230B: VCallAd Control_ID_Comisiones
  loc_6A230E: FStAdFunc var_AC
  loc_6A2311: FLdPr var_AC
  loc_6A2314: Me.Visible = from_stack_1b
  loc_6A2319: FFree1Ad var_AC
  loc_6A231C: LitVarI2 var_A4, 1
  loc_6A2321: LitI4 2
  loc_6A2326: ImpAdLdI4 MemVar_74BEAC
  loc_6A2329: ImpAdCallI2 Mid$(, , )
  loc_6A232E: FStStrNoPop var_A8
  loc_6A2331: LitStr "1"
  loc_6A2334: EqStr
  loc_6A2336: FFree1Str var_A8
  loc_6A2339: FFree1Var var_A4 = ""
  loc_6A233C: BranchF loc_6A235B
  loc_6A233F: LitI2_Byte &HFF
  loc_6A2341: ImpAdLdRf MemVar_74C760
  loc_6A2344: NewIfNullPr Formx
  loc_6A2347: VCallAd Control_ID_MenuAnexoIII
  loc_6A234A: FStAdFunc var_AC
  loc_6A234D: FLdPr var_AC
  loc_6A2350: Formx.Menu.Visible = from_stack_1b
  loc_6A2355: FFree1Ad var_AC
  loc_6A2358: Branch loc_6A2374
  loc_6A235B: LitI2_Byte 0
  loc_6A235D: ImpAdLdRf MemVar_74C760
  loc_6A2360: NewIfNullPr Formx
  loc_6A2363: VCallAd Control_ID_MenuAnexoIII
  loc_6A2366: FStAdFunc var_AC
  loc_6A2369: FLdPr var_AC
  loc_6A236C: Formx.Menu.Visible = from_stack_1b
  loc_6A2371: FFree1Ad var_AC
  loc_6A2374: LitVarI2 var_A4, 1
  loc_6A2379: LitI4 3
  loc_6A237E: ImpAdLdI4 MemVar_74BEAC
  loc_6A2381: ImpAdCallI2 Mid$(, , )
  loc_6A2386: FStStrNoPop var_A8
  loc_6A2389: LitStr "1"
  loc_6A238C: EqStr
  loc_6A238E: FFree1Str var_A8
  loc_6A2391: FFree1Var var_A4 = ""
  loc_6A2394: BranchF loc_6A23B3
  loc_6A2397: LitI2_Byte &HFF
  loc_6A2399: ImpAdLdRf MemVar_74C760
  loc_6A239C: NewIfNullPr Formx
  loc_6A239F: VCallAd Control_ID_Cuenta_Liquido_Producto
  loc_6A23A2: FStAdFunc var_AC
  loc_6A23A5: FLdPr var_AC
  loc_6A23A8: Formx.Menu.Visible = from_stack_1b
  loc_6A23AD: FFree1Ad var_AC
  loc_6A23B0: Branch loc_6A23CC
  loc_6A23B3: LitI2_Byte 0
  loc_6A23B5: ImpAdLdRf MemVar_74C760
  loc_6A23B8: NewIfNullPr Formx
  loc_6A23BB: VCallAd Control_ID_Cuenta_Liquido_Producto
  loc_6A23BE: FStAdFunc var_AC
  loc_6A23C1: FLdPr var_AC
  loc_6A23C4: Formx.Menu.Visible = from_stack_1b
  loc_6A23C9: FFree1Ad var_AC
  loc_6A23CC: LitI2_Byte 0
  loc_6A23CE: ImpAdLdRf MemVar_74C760
  loc_6A23D1: NewIfNullPr Formx
  loc_6A23D4: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_6A23D7: FStAdFunc var_AC
  loc_6A23DA: FLdPr var_AC
  loc_6A23DD: Formx.Menu.Visible = from_stack_1b
  loc_6A23E2: FFree1Ad var_AC
  loc_6A23E5: LitVarI2 var_A4, 1
  loc_6A23EA: LitI4 &HB
  loc_6A23EF: ImpAdLdI4 MemVar_74BEAC
  loc_6A23F2: ImpAdCallI2 Mid$(, , )
  loc_6A23F7: FStStrNoPop var_A8
  loc_6A23FA: LitStr "1"
  loc_6A23FD: EqStr
  loc_6A23FF: ImpAdLdRf MemVar_74C760
  loc_6A2402: NewIfNullPr Formx
  loc_6A2405: VCallAd Control_ID_mnuControlPlayeros
  loc_6A2408: FStAdFunc var_AC
  loc_6A240B: FLdPr var_AC
  loc_6A240E: Formx.Menu.Visible = from_stack_1b
  loc_6A2413: FFree1Str var_A8
  loc_6A2416: FFree1Ad var_AC
  loc_6A2419: FFree1Var var_A4 = ""
  loc_6A241C: LitVarI2 var_A4, 1
  loc_6A2421: LitI4 &HB
  loc_6A2426: ImpAdLdI4 MemVar_74BEAC
  loc_6A2429: ImpAdCallI2 Mid$(, , )
  loc_6A242E: FStStrNoPop var_A8
  loc_6A2431: LitStr "1"
  loc_6A2434: EqStr
  loc_6A2436: ImpAdLdRf MemVar_74C760
  loc_6A2439: NewIfNullPr Formx
  loc_6A243C: VCallAd Control_ID_mnuCDFP
  loc_6A243F: FStAdFunc var_AC
  loc_6A2442: FLdPr var_AC
  loc_6A2445: Formx.Menu.Visible = from_stack_1b
  loc_6A244A: FFree1Str var_A8
  loc_6A244D: FFree1Ad var_AC
  loc_6A2450: FFree1Var var_A4 = ""
  loc_6A2453: LitVarI2 var_A4, 1
  loc_6A2458: LitI4 &HB
  loc_6A245D: ImpAdLdI4 MemVar_74BEAC
  loc_6A2460: ImpAdCallI2 Mid$(, , )
  loc_6A2465: FStStrNoPop var_A8
  loc_6A2468: LitStr "1"
  loc_6A246B: EqStr
  loc_6A246D: ImpAdLdRf MemVar_74C760
  loc_6A2470: NewIfNullPr Formx
  loc_6A2473: VCallAd Control_ID_mnuSepaCTF
  loc_6A2476: FStAdFunc var_AC
  loc_6A2479: FLdPr var_AC
  loc_6A247C: Formx.Menu.Visible = from_stack_1b
  loc_6A2481: FFree1Str var_A8
  loc_6A2484: FFree1Ad var_AC
  loc_6A2487: FFree1Var var_A4 = ""
  loc_6A248A: LitVarI2 var_A4, 1
  loc_6A248F: LitI4 &HB
  loc_6A2494: ImpAdLdI4 MemVar_74BEAC
  loc_6A2497: ImpAdCallI2 Mid$(, , )
  loc_6A249C: FStStrNoPop var_A8
  loc_6A249F: LitStr "1"
  loc_6A24A2: EqStr
  loc_6A24A4: ImpAdLdRf MemVar_74C760
  loc_6A24A7: NewIfNullPr Formx
  loc_6A24AA: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_6A24AD: FStAdFunc var_AC
  loc_6A24B0: FLdPr var_AC
  loc_6A24B3: Formx.Menu.Visible = from_stack_1b
  loc_6A24B8: FFree1Str var_A8
  loc_6A24BB: FFree1Ad var_AC
  loc_6A24BE: FFree1Var var_A4 = ""
  loc_6A24C1: LitVarI2 var_A4, 1
  loc_6A24C6: LitI4 4
  loc_6A24CB: ImpAdLdI4 MemVar_74BEAC
  loc_6A24CE: ImpAdCallI2 Mid$(, , )
  loc_6A24D3: FStStrNoPop var_A8
  loc_6A24D6: LitStr "1"
  loc_6A24D9: EqStr
  loc_6A24DB: FFree1Str var_A8
  loc_6A24DE: FFree1Var var_A4 = ""
  loc_6A24E1: BranchF loc_6A2613
  loc_6A24E4: LitI2_Byte 0
  loc_6A24E6: ImpAdLdRf MemVar_74C760
  loc_6A24E9: NewIfNullPr Formx
  loc_6A24EC: VCallAd Control_ID_Comisiones
  loc_6A24EF: FStAdFunc var_AC
  loc_6A24F2: FLdPr var_AC
  loc_6A24F5: Formx.Menu.Visible = from_stack_1b
  loc_6A24FA: FFree1Ad var_AC
  loc_6A24FD: LitI2_Byte &HFF
  loc_6A24FF: ImpAdLdRf MemVar_74C760
  loc_6A2502: NewIfNullPr Formx
  loc_6A2505: VCallAd Control_ID_mnuOperacionesEspecialesInutil
  loc_6A2508: FStAdFunc var_AC
  loc_6A250B: FLdPr var_AC
  loc_6A250E: Formx.Menu.Visible = from_stack_1b
  loc_6A2513: FFree1Ad var_AC
  loc_6A2516: LitI2_Byte &HFF
  loc_6A2518: ImpAdLdRf MemVar_74C760
  loc_6A251B: NewIfNullPr Formx
  loc_6A251E: VCallAd Control_ID_PreciosComp
  loc_6A2521: FStAdFunc var_AC
  loc_6A2524: FLdPr var_AC
  loc_6A2527: Formx.Menu.Visible = from_stack_1b
  loc_6A252C: FFree1Ad var_AC
  loc_6A252F: LitI2_Byte &HFF
  loc_6A2531: ImpAdLdRf MemVar_74C760
  loc_6A2534: NewIfNullPr Formx
  loc_6A2537: VCallAd Control_ID_mnuForzarCierreRedXXI
  loc_6A253A: FStAdFunc var_AC
  loc_6A253D: FLdPr var_AC
  loc_6A2540: Formx.Menu.Visible = from_stack_1b
  loc_6A2545: FFree1Ad var_AC
  loc_6A2548: LitI2_Byte &HFF
  loc_6A254A: ImpAdLdRf MemVar_74C760
  loc_6A254D: NewIfNullPr Formx
  loc_6A2550: VCallAd Control_ID_AssertNewCodes
  loc_6A2553: FStAdFunc var_AC
  loc_6A2556: FLdPr var_AC
  loc_6A2559: Formx.Menu.Visible = from_stack_1b
  loc_6A255E: FFree1Ad var_AC
  loc_6A2561: LitI2_Byte &HFF
  loc_6A2563: ImpAdLdRf MemVar_74C760
  loc_6A2566: NewIfNullPr Formx
  loc_6A2569: VCallAd Control_ID_menuSeparadorCierres
  loc_6A256C: FStAdFunc var_AC
  loc_6A256F: FLdPr var_AC
  loc_6A2572: Formx.Menu.Visible = from_stack_1b
  loc_6A2577: FFree1Ad var_AC
  loc_6A257A: LitI2_Byte &HFF
  loc_6A257C: ImpAdLdRf MemVar_74C760
  loc_6A257F: NewIfNullPr Formx
  loc_6A2582: VCallAd Control_ID_menuSeparadorPrecios2
  loc_6A2585: FStAdFunc var_AC
  loc_6A2588: FLdPr var_AC
  loc_6A258B: Formx.Menu.Visible = from_stack_1b
  loc_6A2590: FFree1Ad var_AC
  loc_6A2593: LitI2_Byte &HFF
  loc_6A2595: ImpAdLdRf MemVar_74C760
  loc_6A2598: NewIfNullPr Formx
  loc_6A259B: VCallAd Control_ID_mnuSepaRed21
  loc_6A259E: FStAdFunc var_AC
  loc_6A25A1: FLdPr var_AC
  loc_6A25A4: Formx.Menu.Visible = from_stack_1b
  loc_6A25A9: FFree1Ad var_AC
  loc_6A25AC: LitI2_Byte &HFF
  loc_6A25AE: ImpAdLdRf MemVar_74C760
  loc_6A25B1: NewIfNullPr Formx
  loc_6A25B4: VCallAd Control_ID_mnuRedXXI
  loc_6A25B7: FStAdFunc var_AC
  loc_6A25BA: FLdPr var_AC
  loc_6A25BD: Formx.Menu.Visible = from_stack_1b
  loc_6A25C2: FFree1Ad var_AC
  loc_6A25C5: LitI2_Byte &HFF
  loc_6A25C7: ImpAdLdRf MemVar_74C760
  loc_6A25CA: NewIfNullPr Formx
  loc_6A25CD: VCallAd Control_ID_MnuTraspaso
  loc_6A25D0: FStAdFunc var_AC
  loc_6A25D3: FLdPr var_AC
  loc_6A25D6: Formx.Menu.Visible = from_stack_1b
  loc_6A25DB: FFree1Ad var_AC
  loc_6A25DE: LitI2_Byte &HFF
  loc_6A25E0: ImpAdLdRf MemVar_74C760
  loc_6A25E3: NewIfNullPr Formx
  loc_6A25E6: VCallAd Control_ID_mnuOperacionesEspecialesn
  loc_6A25E9: FStAdFunc var_AC
  loc_6A25EC: FLdPr var_AC
  loc_6A25EF: Formx.Menu.Visible = from_stack_1b
  loc_6A25F4: FFree1Ad var_AC
  loc_6A25F7: LitI2_Byte &HFF
  loc_6A25F9: ImpAdLdRf MemVar_74C760
  loc_6A25FC: NewIfNullPr Formx
  loc_6A25FF: VCallAd Control_ID_mnuVentasn
  loc_6A2602: FStAdFunc var_AC
  loc_6A2605: FLdPr var_AC
  loc_6A2608: Formx.Menu.Visible = from_stack_1b
  loc_6A260D: FFree1Ad var_AC
  loc_6A2610: Branch loc_6A27C6
  loc_6A2613: LitI2_Byte &HFF
  loc_6A2615: ImpAdLdRf MemVar_74C760
  loc_6A2618: NewIfNullPr Formx
  loc_6A261B: VCallAd Control_ID_PriceLevel
  loc_6A261E: FStAdFunc var_AC
  loc_6A2621: FLdPr var_AC
  loc_6A2624: Formx.Menu.Visible = from_stack_1b
  loc_6A2629: FFree1Ad var_AC
  loc_6A262C: LitI2_Byte 0
  loc_6A262E: ImpAdLdRf MemVar_74C760
  loc_6A2631: NewIfNullPr Formx
  loc_6A2634: VCallAd Control_ID_mnuOperacionesEspecialesInutil
  loc_6A2637: FStAdFunc var_AC
  loc_6A263A: FLdPr var_AC
  loc_6A263D: Formx.Menu.Visible = from_stack_1b
  loc_6A2642: FFree1Ad var_AC
  loc_6A2645: LitI2_Byte 0
  loc_6A2647: ImpAdLdRf MemVar_74C760
  loc_6A264A: NewIfNullPr Formx
  loc_6A264D: VCallAd Control_ID_PreciosComp
  loc_6A2650: FStAdFunc var_AC
  loc_6A2653: FLdPr var_AC
  loc_6A2656: Formx.Menu.Visible = from_stack_1b
  loc_6A265B: FFree1Ad var_AC
  loc_6A265E: LitI2_Byte 0
  loc_6A2660: ImpAdLdRf MemVar_74C760
  loc_6A2663: NewIfNullPr Formx
  loc_6A2666: VCallAd Control_ID_mnuForzarCierreRedXXI
  loc_6A2669: FStAdFunc var_AC
  loc_6A266C: FLdPr var_AC
  loc_6A266F: Formx.Menu.Visible = from_stack_1b
  loc_6A2674: FFree1Ad var_AC
  loc_6A2677: LitI2_Byte 0
  loc_6A2679: ImpAdLdRf MemVar_74C760
  loc_6A267C: NewIfNullPr Formx
  loc_6A267F: VCallAd Control_ID_AssertNewCodes
  loc_6A2682: FStAdFunc var_AC
  loc_6A2685: FLdPr var_AC
  loc_6A2688: Formx.Menu.Visible = from_stack_1b
  loc_6A268D: FFree1Ad var_AC
  loc_6A2690: LitI2_Byte 0
  loc_6A2692: ImpAdLdRf MemVar_74C760
  loc_6A2695: NewIfNullPr Formx
  loc_6A2698: VCallAd Control_ID_menuSeparadorCierres
  loc_6A269B: FStAdFunc var_AC
  loc_6A269E: FLdPr var_AC
  loc_6A26A1: Formx.Menu.Visible = from_stack_1b
  loc_6A26A6: FFree1Ad var_AC
  loc_6A26A9: LitI2_Byte 0
  loc_6A26AB: ImpAdLdRf MemVar_74C760
  loc_6A26AE: NewIfNullPr Formx
  loc_6A26B1: VCallAd Control_ID_menuSeparadorPrecios2
  loc_6A26B4: FStAdFunc var_AC
  loc_6A26B7: FLdPr var_AC
  loc_6A26BA: Formx.Menu.Visible = from_stack_1b
  loc_6A26BF: FFree1Ad var_AC
  loc_6A26C2: LitI2_Byte 0
  loc_6A26C4: ImpAdLdRf MemVar_74C760
  loc_6A26C7: NewIfNullPr Formx
  loc_6A26CA: VCallAd Control_ID_mnuSepaRed21
  loc_6A26CD: FStAdFunc var_AC
  loc_6A26D0: FLdPr var_AC
  loc_6A26D3: Formx.Menu.Visible = from_stack_1b
  loc_6A26D8: FFree1Ad var_AC
  loc_6A26DB: LitI2_Byte 0
  loc_6A26DD: ImpAdLdRf MemVar_74C760
  loc_6A26E0: NewIfNullPr Formx
  loc_6A26E3: VCallAd Control_ID_mnuRedXXI
  loc_6A26E6: FStAdFunc var_AC
  loc_6A26E9: FLdPr var_AC
  loc_6A26EC: Formx.Menu.Visible = from_stack_1b
  loc_6A26F1: FFree1Ad var_AC
  loc_6A26F4: LitI2_Byte 0
  loc_6A26F6: ImpAdLdRf MemVar_74C760
  loc_6A26F9: NewIfNullPr Formx
  loc_6A26FC: VCallAd Control_ID_MnuTraspaso
  loc_6A26FF: FStAdFunc var_AC
  loc_6A2702: FLdPr var_AC
  loc_6A2705: Formx.Menu.Visible = from_stack_1b
  loc_6A270A: FFree1Ad var_AC
  loc_6A270D: LitI2_Byte 0
  loc_6A270F: ImpAdLdRf MemVar_74C760
  loc_6A2712: NewIfNullPr Formx
  loc_6A2715: VCallAd Control_ID_mnuOperacionesEspecialesn
  loc_6A2718: FStAdFunc var_AC
  loc_6A271B: FLdPr var_AC
  loc_6A271E: Formx.Menu.Visible = from_stack_1b
  loc_6A2723: FFree1Ad var_AC
  loc_6A2726: LitI2_Byte 0
  loc_6A2728: ImpAdLdRf MemVar_74C760
  loc_6A272B: NewIfNullPr Formx
  loc_6A272E: VCallAd Control_ID_mnuVentasn
  loc_6A2731: FStAdFunc var_AC
  loc_6A2734: FLdPr var_AC
  loc_6A2737: Formx.Menu.Visible = from_stack_1b
  loc_6A273C: FFree1Ad var_AC
  loc_6A273F: FLdRfVar var_1D8
  loc_6A2742: LitVar_Missing var_1D4
  loc_6A2745: LitVar_Missing var_1B4
  loc_6A2748: LitVar_Missing var_194
  loc_6A274B: LitVar_Missing var_174
  loc_6A274E: LitVar_Missing var_154
  loc_6A2751: LitVar_Missing var_134
  loc_6A2754: LitVar_Missing var_114
  loc_6A2757: LitVar_Missing var_F4
  loc_6A275A: LitVar_Missing var_D4
  loc_6A275D: LitVar_Missing var_A4
  loc_6A2760: LitStr "Documento Legal"
  loc_6A2763: FStStrCopy var_A8
  loc_6A2766: FLdRfVar var_A8
  loc_6A2769: LitI4 &H88
  loc_6A276E: PopTmpLdAdStr var_B4
  loc_6A2771: LitI2_Byte &HA
  loc_6A2773: PopTmpLdAd2 var_AE
  loc_6A2776: ImpAdLdRf MemVar_74C7D0
  loc_6A2779: NewIfNullPr clsMsg
  loc_6A277C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6A2781: ILdRf var_1D8
  loc_6A2784: FLdPr Me
  loc_6A2787: MemStStrCopy
  loc_6A278B: FFreeStr var_A8 = ""
  loc_6A2792: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_6A27A9: FLdPr Me
  loc_6A27AC: MemLdStr global_7532
  loc_6A27AF: FLdPrThis
  loc_6A27B0: VCallAd Control_ID_Cuenta_Liquido_Producto
  loc_6A27B3: FStAdFunc var_AC
  loc_6A27B6: FLdPr var_AC
  loc_6A27B9: Me.Caption = from_stack_1
  loc_6A27BE: FFree1Ad var_AC
  loc_6A27C1: from_stack_1v = Proc_162_232_5F5E10()
  loc_6A27C6: FLdRfVar var_AE
  loc_6A27C9: ImpAdLdRf MemVar_74A220
  loc_6A27CC: NewIfNullPr clsProducts
  loc_6A27CF: clsProducts.Top = from_stack_1s
  loc_6A27D4: FLdI2 var_AE
  loc_6A27D7: FLdPrThis
  loc_6A27D8: VCallAd Control_ID_MnuMezcla
  loc_6A27DB: FStAdFunc var_AC
  loc_6A27DE: FLdPr var_AC
  loc_6A27E1: Me.Visible = from_stack_1b
  loc_6A27E6: FFree1Ad var_AC
  loc_6A27E9: LitVarI2 var_A4, 1
  loc_6A27EE: LitI4 &H10
  loc_6A27F3: ImpAdLdRf MemVar_74BEAC
  loc_6A27F6: CVarRef
  loc_6A27FB: FLdRfVar var_D4
  loc_6A27FE: ImpAdCallFPR4  = Mid(, , )
  loc_6A2803: FLdRfVar var_D4
  loc_6A2806: LitVarStr var_E4, "1"
  loc_6A280B: HardType
  loc_6A280C: EqVarBool
  loc_6A280E: FFreeVar var_A4 = ""
  loc_6A2815: BranchF loc_6A2831
  loc_6A2818: LitI2_Byte &HFF
  loc_6A281A: ImpAdLdRf MemVar_74C760
  loc_6A281D: NewIfNullPr Formx
  loc_6A2820: VCallAd Control_ID_PreciosComp
  loc_6A2823: FStAdFunc var_AC
  loc_6A2826: FLdPr var_AC
  loc_6A2829: Formx.Menu.Visible = from_stack_1b
  loc_6A282E: FFree1Ad var_AC
  loc_6A2831: LitVarI2 var_A4, 1
  loc_6A2836: LitI4 &HC
  loc_6A283B: ImpAdLdRf MemVar_74BEAC
  loc_6A283E: CVarRef
  loc_6A2843: FLdRfVar var_D4
  loc_6A2846: ImpAdCallFPR4  = Mid(, , )
  loc_6A284B: FLdRfVar var_D4
  loc_6A284E: LitVarStr var_E4, "1"
  loc_6A2853: HardType
  loc_6A2854: EqVarBool
  loc_6A2856: FFreeVar var_A4 = ""
  loc_6A285D: BranchF loc_6A287A
  loc_6A2860: OnErrorGoto loc_6A28B5
  loc_6A2863: LitI2_Byte 0
  loc_6A2865: FLdPrThis
  loc_6A2866: VCallAd Control_ID_mnuAdministraciónDeServicios
  loc_6A2869: FStAdFunc var_AC
  loc_6A286C: FLdPr var_AC
  loc_6A286F: Me.Visible = from_stack_1b
  loc_6A2874: FFree1Ad var_AC
  loc_6A2877: Branch loc_6A288E
  loc_6A287A: LitI2_Byte 0
  loc_6A287C: FLdPrThis
  loc_6A287D: VCallAd Control_ID_mnuProductos
  loc_6A2880: FStAdFunc var_AC
  loc_6A2883: FLdPr var_AC
  loc_6A2886: Me.Visible = from_stack_1b
  loc_6A288B: FFree1Ad var_AC
  loc_6A288E: ImpAdLdRf MemVar_74C6DC
  loc_6A2891: NewIfNullPr CommandConsolelicence
  loc_6A2894: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6A2899: ImpAdCallI2 Proc_167_3_5E99D0()
  loc_6A289E: BranchF loc_6A28B5
  loc_6A28A1: LitI2_Byte &HFF
  loc_6A28A3: FLdPrThis
  loc_6A28A4: VCallAd Control_ID_mnuMinimizar
  loc_6A28A7: FStAdFunc var_AC
  loc_6A28AA: FLdPr var_AC
  loc_6A28AD: Me.Visible = from_stack_1b
  loc_6A28B2: FFree1Ad var_AC
  loc_6A28B5: ImpAdCallFPR4 Proc_101_14_6180C4()
  loc_6A28BA: LitVarStr var_94, "WINDIR"
  loc_6A28BF: FStVarCopyObj var_A4
  loc_6A28C2: FLdRfVar var_A4
  loc_6A28C5: FLdRfVar var_D4
  loc_6A28C8: ImpAdCallFPR4  = Environ()
  loc_6A28CD: FLdRfVar var_D4
  loc_6A28D0: LitVarStr var_C4, "\cem44.ini"
  loc_6A28D5: ConcatVar var_F4
  loc_6A28D9: CStrVarTmp
  loc_6A28DA: PopTmpLdAdStr
  loc_6A28DE: LitStr "TankProdColor"
  loc_6A28E1: FStStrCopy var_1D8
  loc_6A28E4: FLdRfVar var_1D8
  loc_6A28E7: LitStr "GENERAL"
  loc_6A28EA: FStStrCopy var_A8
  loc_6A28ED: FLdRfVar var_A8
  loc_6A28F0: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6A28F5: FStStrNoPop var_1E0
  loc_6A28F8: LitStr "1"
  loc_6A28FB: EqStr
  loc_6A28FD: NotI4
  loc_6A28FE: LitVarStr var_E4, "WINDIR"
  loc_6A2903: FStVarCopyObj var_114
  loc_6A2906: FLdRfVar var_114
  loc_6A2909: FLdRfVar var_134
  loc_6A290C: ImpAdCallFPR4  = Environ()
  loc_6A2911: FLdRfVar var_134
  loc_6A2914: LitVarStr var_104, "\cem44.ini"
  loc_6A2919: ConcatVar var_154
  loc_6A291D: CStrVarTmp
  loc_6A291E: PopTmpLdAdStr
  loc_6A2922: LitStr "ProdTankColor"
  loc_6A2925: FStStrCopy var_1E8
  loc_6A2928: FLdRfVar var_1E8
  loc_6A292B: LitStr "GENERAL"
  loc_6A292E: FStStrCopy var_1E4
  loc_6A2931: FLdRfVar var_1E4
  loc_6A2934: ImpAdCallI2 Proc_87_14_5F88D8(, , )
  loc_6A2939: FStStrNoPop var_1F0
  loc_6A293C: LitStr "1"
  loc_6A293F: EqStr
  loc_6A2941: OrI4
  loc_6A2942: FFreeStr var_A8 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = ""
  loc_6A2955: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = ""
  loc_6A2964: BranchF loc_6A297B
  loc_6A2967: LitI2_Byte 0
  loc_6A2969: FLdPrThis
  loc_6A296A: VCallAd Control_ID_mnuColor
  loc_6A296D: FStAdFunc var_AC
  loc_6A2970: FLdPr var_AC
  loc_6A2973: Me.Visible = from_stack_1b
  loc_6A2978: FFree1Ad var_AC
  loc_6A297B: ExitProcHresult
End Function

Private Function Proc_162_211_5E5DF0() '5E5DF0
  'Data Table: 460894
  loc_5E5D7C: ImpAdCallI2 Proc_167_16_691AB4()
  loc_5E5D81: NotI4
  loc_5E5D82: BranchF loc_5E5DE6
  loc_5E5D85: LitVar_Missing var_E8
  loc_5E5D88: LitVar_Missing var_C8
  loc_5E5D8B: ImpAdLdRf MemVar_74BF24
  loc_5E5D8E: CVarRef
  loc_5E5D93: LitI4 2
  loc_5E5D98: FLdPr Me
  loc_5E5D9B: MemLdRfVar from_stack_1.global_7468
  loc_5E5D9E: CVarRef
  loc_5E5DA3: ImpAdCallI2 MsgBox(, , , , )
  loc_5E5DA8: CI2I4
  loc_5E5DA9: FStI2 var_86
  loc_5E5DAC: FFreeVar var_C8 = ""
  loc_5E5DB3: FLdI2 var_86
  loc_5E5DB6: CI4UI1
  loc_5E5DB7: LitI4 3
  loc_5E5DBC: EqI4
  loc_5E5DBD: BranchF loc_5E5DC5
  loc_5E5DC0: End
  loc_5E5DC2: Branch loc_5E5DE3
  loc_5E5DC5: FLdI2 var_86
  loc_5E5DC8: CI4UI1
  loc_5E5DC9: LitI4 5
  loc_5E5DCE: EqI4
  loc_5E5DCF: BranchF loc_5E5DE3
  loc_5E5DD2: LitVar_Missing var_98
  loc_5E5DD5: PopAdLdVar
  loc_5E5DD6: LitI2_Byte &HFF
  loc_5E5DD8: ImpAdLdRf MemVar_74E2E0
  loc_5E5DDB: NewIfNullPr frmPipeConnection
  loc_5E5DDE: Call frmPipeConnection.ShowMe(from_stack_1v, from_stack_2v)
  loc_5E5DE3: Branch loc_5E5DE9
  loc_5E5DE6: Branch loc_5E5DEE
  loc_5E5DE9: LitI2_Byte &HFF
  loc_5E5DEB: BranchT loc_5E5D7C
  loc_5E5DEE: ExitProcHresult
End Function

Private Function Proc_162_212_690E38() '690E38
  'Data Table: 460894
  loc_690858: LitI2_Byte 0
  loc_69085A: FLdPrThis
  loc_69085B: VCallAd Control_ID_Reloj
  loc_69085E: FStAdFunc var_9C
  loc_690861: FLdPr var_9C
  loc_690864: Me.Enabled = from_stack_1b
  loc_690869: FFree1Ad var_9C
  loc_69086E: OnErrorGoto loc_690DD6
  loc_690873: LitI4 0
  loc_690878: FLdRfVar var_A0
  loc_69087B: FLdRfVar var_9C
  loc_69087E: ImpAdLdRf MemVar_7520D4
  loc_690881: NewIfNullPr Global
  loc_690884:  = Global.App
  loc_690889: FLdPr var_9C
  loc_69088C:  = App.Path
  loc_690891: ILdRf var_A0
  loc_690894: LitStr "\test.bin"
  loc_690897: ConcatStr
  loc_690898: CVarStr var_B0
  loc_69089B: ImpAdCallI2 push Dir(, )
  loc_6908A0: FStStrNoPop var_B4
  loc_6908A3: LitStr vbNullString
  loc_6908A6: NeStr
  loc_6908A8: FFreeStr var_A0 = ""
  loc_6908AF: FFree1Ad var_9C
  loc_6908B2: FFree1Var var_B0 = ""
  loc_6908B5: BranchF loc_6908F2
  loc_6908BA: FLdRfVar var_A0
  loc_6908BD: FLdRfVar var_9C
  loc_6908C0: ImpAdLdRf MemVar_7520D4
  loc_6908C3: NewIfNullPr Global
  loc_6908C6:  = Global.App
  loc_6908CB: FLdPr var_9C
  loc_6908CE:  = App.Path
  loc_6908D3: ILdRf var_A0
  loc_6908D6: LitStr "\test.bin"
  loc_6908D9: ConcatStr
  loc_6908DA: CVarStr var_B0
  loc_6908DD: ImpAdCallFPR4 Kill 
  loc_6908E2: FFree1Str var_A0
  loc_6908E5: FFree1Ad var_9C
  loc_6908E8: FFree1Var var_B0 = ""
  loc_6908ED: LitI2_Byte &HFF
  loc_6908EF: ImpAdStI2 MemVar_74BFE0
  loc_6908F6: from_stack_1v = Proc_162_198_70C718()
  loc_6908FD: from_stack_1v = Proc_162_200_617C9C()
  loc_690904: FLdRfVar var_A0
  loc_690907: FLdRfVar var_9C
  loc_69090A: ImpAdLdRf MemVar_7520D4
  loc_69090D: NewIfNullPr Global
  loc_690910:  = Global.App
  loc_690915: FLdPr var_9C
  loc_690918:  = App.Path
  loc_69091D: ILdRf var_A0
  loc_690920: LitStr "\imagen.bmp"
  loc_690923: ConcatStr
  loc_690924: PopTmpLdAdStr
  loc_690928: from_stack_2v = Proc_162_201_60309C(from_stack_1v)
  loc_69092D: FFreeStr var_A0 = ""
  loc_690934: FFree1Ad var_9C
  loc_690939: from_stack_1v = Proc_162_202_62CC8C()
  loc_690940: LitI2_Byte 0
  loc_690942: ImpAdStI2 MemVar_74C382
  loc_690947: from_stack_1v = Proc_162_211_5E5DF0()
  loc_69094E: ImpAdLdRf MemVar_74C6DC
  loc_690951: NewIfNullPr CommandConsolelicence
  loc_690954: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_69095B: FLdRfVar var_B6
  loc_69095E: ImpAdLdRf MemVar_74C6D8
  loc_690961: NewIfNullPr CCEMLicence
  loc_690969: FLdI2 var_B6
  loc_69096C: LitI2_Byte 0
  loc_69096E: EqI2
  loc_69096F: BranchF loc_6909AC
  loc_690974: ImpAdCallI2 Proc_167_17_607020()
  loc_690979: ImpAdStI2 MemVar_74E380
  loc_69097E: ImpAdLdI2 MemVar_74E380
  loc_690981: BranchF loc_6909A7
  loc_690986: LitI2_Byte &HFF
  loc_690988: ImpAdLdRf MemVar_74C760
  loc_69098B: NewIfNullPr Formx
  loc_69098E: VCallAd Control_ID_tmrHardLock
  loc_690991: FStAdFunc var_9C
  loc_690994: FLdPr var_9C
  loc_690997: Formx.Timer.Enabled = from_stack_1b
  loc_69099C: FFree1Ad var_9C
  loc_6909A1: ImpAdCallFPR4 HLLogin()
  loc_6909A6: SetLastSystemError
  loc_6909A9: Branch loc_6909C9
  loc_6909B0: LitI2_Byte 0
  loc_6909B2: ImpAdLdRf MemVar_74C760
  loc_6909B5: NewIfNullPr Formx
  loc_6909B8: VCallAd Control_ID_tmrHardLock
  loc_6909BB: FStAdFunc var_9C
  loc_6909BE: FLdPr var_9C
  loc_6909C1: Formx.Timer.Enabled = from_stack_1b
  loc_6909C6: FFree1Ad var_9C
  loc_6909CD: FLdRfVar var_B6
  loc_6909D0: FLdRfVar var_98
  loc_6909D3: FLdRfVar var_9C
  loc_6909D6: ImpAdLdRf MemVar_74C760
  loc_6909D9: NewIfNullPr Formx
  loc_6909DC: from_stack_1v = Formx.global_4589716Get()
  loc_6909E1: FLdPr var_9C
  loc_6909E4: Call 0.Method_arg_32C ()
  loc_6909E9: FFree1Ad var_9C
  loc_6909EE: ILdRf var_98
  loc_6909F1: ImpAdStStrCopy MemVar_74BF50
  loc_6909F7: LitStr vbNullString
  loc_6909FA: FStStrCopy var_98
  loc_6909FF: FLdRfVar var_B6
  loc_690A02: FLdRfVar var_98
  loc_690A05: FLdRfVar var_9C
  loc_690A08: ImpAdLdRf MemVar_74C760
  loc_690A0B: NewIfNullPr Formx
  loc_690A0E: from_stack_1v = Formx.global_4589716Get()
  loc_690A13: FLdPr var_9C
  loc_690A16: Call 0.Method_arg_330 ()
  loc_690A1B: FFree1Ad var_9C
  loc_690A20: ILdRf var_98
  loc_690A23: ImpAdStStrCopy MemVar_74BF54
  loc_690A29: FLdRfVar var_B6
  loc_690A2C: FLdRfVar var_98
  loc_690A2F: FLdRfVar var_9C
  loc_690A32: ImpAdLdRf MemVar_74C760
  loc_690A35: NewIfNullPr Formx
  loc_690A38: from_stack_1v = Formx.global_4589716Get()
  loc_690A3D: FLdPr var_9C
  loc_690A40:  = Formx.StartUpPosition
  loc_690A45: FFree1Ad var_9C
  loc_690A4A: LitI4 1
  loc_690A4F: ILdRf var_98
  loc_690A52: CVarStr var_C8
  loc_690A55: LitI4 &HD
  loc_690A5A: FLdRfVar var_B0
  loc_690A5D: ImpAdCallFPR4  = Chr()
  loc_690A62: FLdRfVar var_B0
  loc_690A65: LitI4 0
  loc_690A6A: FnInStr4Var
  loc_690A6E: LitVarI2 var_E8, 2
  loc_690A73: SubVar var_F8
  loc_690A77: FStVar var_118
  loc_690A7B: FLdRfVar var_118
  loc_690A7E: LitI4 1
  loc_690A83: FLdRfVar var_98
  loc_690A86: CVarRef
  loc_690A8B: FLdRfVar var_128
  loc_690A8E: ImpAdCallFPR4  = Mid(, , )
  loc_690A93: FLdRfVar var_128
  loc_690A96: CStrVarTmp
  loc_690A97: FStStr var_98
  loc_690A9A: FFreeVar var_B0 = "": var_D8 = "": var_118 = ""
  loc_690AA7: ILdRf var_98
  loc_690AAA: FnLenStr
  loc_690AAB: LitI4 1
  loc_690AB0: LeI4
  loc_690AB1: BranchF loc_690AC4
  loc_690AB6: LitStr "CEM 44"
  loc_690AB9: FLdPr Me
  loc_690ABC: Me.Caption = from_stack_1
  loc_690AC1: Branch loc_690AD3
  loc_690AC8: ILdRf var_98
  loc_690ACB: FLdPr Me
  loc_690ACE: Me.Caption = from_stack_1
  loc_690AD7: ImpAdCallI2 Proc_167_18_5E16E4()
  loc_690ADC: ImpAdStStr MemVar_74BEAC
  loc_690AE2: LitI2_Byte 1
  loc_690AE4: CUI1I2
  loc_690AE6: ImpAdStUI1 MemVar_74BEA5
  loc_690AEC: ImpAdCallFPR4 Proc_167_6_749858()
  loc_690AF3: FLdRfVar var_B6
  loc_690AF6: ImpAdLdRf MemVar_74A21C
  loc_690AF9: NewIfNullPr clsSecurity
  loc_690B03: FLdRfVar var_B6
  loc_690B06: ImpAdLdRf MemVar_74A218
  loc_690B09: NewIfNullPr clsUsers
  loc_690B13: Call LOADCREDITCARDS()
  loc_690B1A: from_stack_1v = Proc_162_199_72E7A0()
  loc_690B21: from_stack_1v = Proc_162_235_64F850()
  loc_690B28: ImpAdCallFPR4 Proc_167_19_5DD504()
  loc_690B2F: ImpAdCallFPR4 Proc_65_0_5E5404()
  loc_690B36: from_stack_1v = Proc_162_233_606DDC()
  loc_690B3D: FLdRfVar var_B6
  loc_690B40: ImpAdLdRf MemVar_74C3A8
  loc_690B43: FLdRfVar var_9C
  loc_690B46: ImpAdLdRf MemVar_74C760
  loc_690B49: NewIfNullPr Formx
  loc_690B4C: from_stack_1v = Formx.global_4589716Get()
  loc_690B51: FLdPr var_9C
  loc_690B54: Formx.OLEDropMode = from_stack_1
  loc_690B59: FLdI2 var_B6
  loc_690B5C: NotI4
  loc_690B5D: FFree1Ad var_9C
  loc_690B60: BranchF loc_690BA2
  loc_690B65: LitVar_Missing var_D8
  loc_690B68: LitVar_Missing var_B0
  loc_690B6B: ImpAdLdRf MemVar_74BF24
  loc_690B6E: CVarRef
  loc_690B73: LitI4 5
  loc_690B78: FLdPr Me
  loc_690B7B: MemLdRfVar from_stack_1.global_7472
  loc_690B7E: CVarRef
  loc_690B83: ImpAdCallI2 MsgBox(, , , , )
  loc_690B88: LitI4 2
  loc_690B8D: EqI4
  loc_690B8E: FFreeVar var_B0 = ""
  loc_690B95: BranchF loc_690B9B
  loc_690B9A: ExitProcHresult
  loc_690B9F: Branch loc_690B3B
  loc_690BA4: FLdRfVar var_B0
  loc_690BA7: FLdRfVar var_8A
  loc_690BAA: FLdRfVar var_9C
  loc_690BAD: ImpAdLdRf MemVar_74C760
  loc_690BB0: NewIfNullPr Formx
  loc_690BB3: from_stack_1v = Formx.global_4589716Get()
  loc_690BB8: FLdPr var_9C
  loc_690BBB: Formx.Visible = from_stack_1b
  loc_690BC0: FLdRfVar var_B0
  loc_690BC3: NotVar var_D8
  loc_690BC7: CBoolVarNull
  loc_690BC9: FFree1Ad var_9C
  loc_690BCC: FFree1Var var_B0 = ""
  loc_690BCF: BranchF loc_690C0A
  loc_690BD4: FLdRfVar var_B0
  loc_690BD7: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_690BDC: FLdRfVar var_B0
  loc_690BDF: CBoolVarNull
  loc_690BE1: FFree1Var var_B0 = ""
  loc_690BE4: BranchF loc_690C03
  loc_690BE9: LitVar_FALSE
  loc_690BED: PopAdLdVar
  loc_690BEE: FLdPrThis
  loc_690BEF: VCallAd Control_ID_PanelCierres
  loc_690BF2: FStAdFunc var_9C
  loc_690BF5: FLdPr var_9C
  loc_690BF8: LateIdSt
  loc_690BFD: FFree1Ad var_9C
  loc_690C02: ExitProcHresult
  loc_690C07: Branch loc_690BA2
  loc_690C0C: FLdI2 var_8A
  loc_690C0F: ImpAdLdRf MemVar_74C760
  loc_690C12: NewIfNullPr Formx
  loc_690C15: VCallAd Control_ID_AssertNewCodes
  loc_690C18: FStAdFunc var_9C
  loc_690C1B: FLdPr var_9C
  loc_690C1E: Formx.Menu.Enabled = from_stack_1b
  loc_690C23: FFree1Ad var_9C
  loc_690C28: LitI2_Byte 0
  loc_690C2A: ImpAdStI2 MemVar_74BEA8
  loc_690C2F: ImpAdLdI2 MemVar_74BFE0
  loc_690C32: BranchF loc_690C3C
  loc_690C37: from_stack_1v = Proc_162_195_64FB64()
  loc_690C40: from_stack_1v = Proc_162_203_5EC01C()
  loc_690C47: from_stack_1v = Proc_162_204_5EBE94()
  loc_690C4E: from_stack_1v = Proc_162_205_5EBC48()
  loc_690C55: from_stack_1v = Proc_162_206_5E2CF4()
  loc_690C5C: from_stack_1v = Proc_162_207_5E6EC8()
  loc_690C63: from_stack_1v = Proc_162_208_605AB4()
  loc_690C6A: OnErrorGoto loc_690DD6
  loc_690C6F: FLdRfVar var_13A
  loc_690C72: FLdRfVar var_94
  loc_690C75: LitI2_Byte &HFF
  loc_690C77: PopTmpLdAd2 var_B6
  loc_690C7A: FLdRfVar var_9C
  loc_690C7D: ImpAdLdRf MemVar_74C760
  loc_690C80: NewIfNullPr Formx
  loc_690C83: from_stack_1v = Formx.global_4589716Get()
  loc_690C88: FLdPr var_9C
  loc_690C8B:  = Formx.Name
  loc_690C90: FLdI2 var_13A
  loc_690C93: NotI4
  loc_690C94: FFree1Ad var_9C
  loc_690C97: BranchF loc_690CF0
  loc_690C9C: LitVar_Missing var_D8
  loc_690C9F: LitVar_Missing var_B0
  loc_690CA2: ImpAdLdRf MemVar_74BF24
  loc_690CA5: CVarRef
  loc_690CAA: LitI4 5
  loc_690CAF: FLdPr Me
  loc_690CB2: MemLdRfVar from_stack_1.global_7472
  loc_690CB5: CVarRef
  loc_690CBA: ImpAdCallI2 MsgBox(, , , , )
  loc_690CBF: LitI4 2
  loc_690CC4: EqI4
  loc_690CC5: FFreeVar var_B0 = ""
  loc_690CCC: BranchF loc_690CE9
  loc_690CD1: ILdRf Me
  loc_690CD4: FStAdNoPop
  loc_690CD8: ImpAdLdRf MemVar_7520D4
  loc_690CDB: NewIfNullPr Global
  loc_690CDE: Global.Unload from_stack_1
  loc_690CE3: FFree1Ad var_9C
  loc_690CE8: ExitProcHresult
  loc_690CED: Branch loc_690C6D
  loc_690CF2: FLdRfVar var_94
  loc_690CF5: CVarRef
  loc_690CFA: FLdRfVar var_B0
  loc_690CFD: ImpAdCallFPR4  = Trim()
  loc_690D02: FLdRfVar var_B0
  loc_690D05: CStrVarTmp
  loc_690D06: FStStr var_94
  loc_690D09: FFree1Var var_B0 = ""
  loc_690D0E: ILdRf var_94
  loc_690D11: FnLenStr
  loc_690D12: LitI4 &H965
  loc_690D17: EqI4
  loc_690D18: ImpAdStI2 MemVar_74BF4C
  loc_690D1D: LitI2_Byte &HFF
  loc_690D1F: PopTmpLdAd2 var_B6
  loc_690D22: ImpAdCallFPR4 Proc_53_4_718EF4()
  loc_690D29: from_stack_1v = Proc_162_210_6A297C()
  loc_690D30: from_stack_1v = Proc_162_209_66B314()
  loc_690D37: from_stack_1v = Proc_162_234_5F1AE8()
  loc_690D3E: LitI2_Byte &HFF
  loc_690D40: FLdPrThis
  loc_690D41: VCallAd Control_ID_Reloj
  loc_690D44: FStAdFunc var_9C
  loc_690D47: FLdPr var_9C
  loc_690D4A: Me.Enabled = from_stack_1b
  loc_690D4F: FFree1Ad var_9C
  loc_690D54: ImpAdCallFPR4 Proc_167_20_65BCF0()
  loc_690D5B: FLdRfVar var_B0
  loc_690D5E: from_stack_1v = MantenBD()
  loc_690D63: FFree1Var var_B0 = ""
  loc_690D68: LitVarI2 var_B0, 3
  loc_690D6D: LitI4 1
  loc_690D72: ImpAdLdRf MemVar_74BF90
  loc_690D75: CVarRef
  loc_690D7A: FLdRfVar var_D8
  loc_690D7D: ImpAdCallFPR4  = Mid(, , )
  loc_690D82: FLdRfVar var_D8
  loc_690D85: LitVarStr var_108, "\\."
  loc_690D8A: HardType
  loc_690D8B: EqVar var_F8
  loc_690D8F: NotVar var_118
  loc_690D93: CBoolVarNull
  loc_690D95: FFreeVar var_B0 = ""
  loc_690D9C: BranchF loc_690DA6
  loc_690DA1: Call LoadRemoteConsoleConfiguration()
  loc_690DA8: ExitProcHresult
  loc_690DAB: LitVar_Missing var_F8
  loc_690DAE: LitVar_Missing var_D8
  loc_690DB1: LitVar_Missing var_B0
  loc_690DB4: LitI4 0
  loc_690DB9: FLdPr Me
  loc_690DBC: MemLdRfVar from_stack_1.global_7484
  loc_690DBF: CVarRef
  loc_690DC4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_690DC9: FFreeVar var_B0 = "": var_D8 = ""
  loc_690DD4: End
  loc_690DD8: FLdRfVar var_A0
  loc_690DDB: ImpAdCallI2 Err 'rtcErrObj
  loc_690DE0: FStAdFunc var_9C
  loc_690DE3: FLdPr var_9C
  loc_690DE6:  = Err.Description
  loc_690DEB: LitVar_Missing var_F8
  loc_690DEE: LitVar_Missing var_D8
  loc_690DF1: ImpAdLdRf MemVar_74BF24
  loc_690DF4: CVarRef
  loc_690DF9: LitI4 2
  loc_690DFE: FLdPr Me
  loc_690E01: MemLdStr global_7488
  loc_690E04: ILdRf var_A0
  loc_690E07: ConcatStr
  loc_690E08: CVarStr var_B0
  loc_690E0B: ImpAdCallI2 MsgBox(, , , , )
  loc_690E10: LitI4 4
  loc_690E15: EqI4
  loc_690E16: FFree1Str var_A0
  loc_690E19: FFree1Ad var_9C
  loc_690E1C: FFreeVar var_B0 = "": var_D8 = ""
  loc_690E25: BranchF loc_690E2E
  loc_690E2A: Resume
  loc_690E32: End
  loc_690E36: ExitProcHresult
End Function

Private Function Proc_162_213_603728() '603728
  'Data Table: 460894
  loc_60365C: LitI2_Byte 0
  loc_60365E: FLdPr Me
  loc_603661: VCallAd Control_ID_Reloj
  loc_603664: FStAdFunc var_94
  loc_603667: FLdPr var_94
  loc_60366A: Me.Enabled = from_stack_1b
  loc_60366F: FFree1Ad var_94
  loc_603672: FLdRfVar var_96
  loc_603675: from_stack_1v = Proc_162_214_616E60()
  loc_60367A: FLdI2 var_96
  loc_60367D: NotI4
  loc_60367E: BranchF loc_603711
  loc_603681: FLdRfVar var_96
  loc_603684: FLdRfVar var_8C
  loc_603687: NewIfNullRf
  loc_60368B: FLdRfVar var_88
  loc_60368E: NewIfNullPr CMsgPrice
  loc_603696: FLdI2 var_96
  loc_603699: BranchF loc_603711
  loc_60369C: FLdRfVar var_A8
  loc_60369F: LitI2_Byte &HFF
  loc_6036A1: PopTmpLdAd2 var_96
  loc_6036A4: FLdRfVar var_90
  loc_6036A7: NewIfNullPr PreciosConectividad
  loc_6036AA: from_stack_2v = PreciosConectividad.setAdvise(from_stack_1v)
  loc_6036AF: FFree1Var var_A8 = ""
  loc_6036B2: FLdRfVar var_A8
  loc_6036B5: FLdRfVar var_8C
  loc_6036B8: NewIfNullRf
  loc_6036BC: FLdRfVar var_90
  loc_6036BF: NewIfNullPr PreciosConectividad
  loc_6036C2: from_stack_2v = PreciosConectividad.setPrice(from_stack_1v)
  loc_6036C7: FFree1Var var_A8 = ""
  loc_6036CA: LitVarI2 var_A8, 3
  loc_6036CF: LitI4 1
  loc_6036D4: ImpAdLdRf MemVar_74BF90
  loc_6036D7: CVarRef
  loc_6036DC: FLdRfVar var_D8
  loc_6036DF: ImpAdCallFPR4  = Mid(, , )
  loc_6036E4: FLdRfVar var_D8
  loc_6036E7: LitVarStr var_E8, "\\."
  loc_6036EC: HardType
  loc_6036ED: EqVarBool
  loc_6036EF: FFreeVar var_A8 = ""
  loc_6036F6: BranchF loc_603711
  loc_6036F9: LitVar_Missing var_C8
  loc_6036FC: PopAdLdVar
  loc_6036FD: LitVarI4
  loc_603705: PopAdLdVar
  loc_603706: FLdRfVar var_90
  loc_603709: NewIfNullPr PreciosConectividad
  loc_60370C: PreciosConectividad.Show from_stack_1, from_stack_2
  loc_603711: LitI2_Byte &HFF
  loc_603713: FLdPr Me
  loc_603716: VCallAd Control_ID_Reloj
  loc_603719: FStAdFunc var_94
  loc_60371C: FLdPr var_94
  loc_60371F: Me.Enabled = from_stack_1b
  loc_603724: FFree1Ad var_94
  loc_603727: ExitProcHresult
End Function

Private Function Proc_162_214_616E60() '616E60
  'Data Table: 460894
  loc_616D48: LitI2_Byte 0
  loc_616D4A: FStI2 var_8E
  loc_616D4D: FLdRfVar var_9E
  loc_616D50: FLdRfVar var_8C
  loc_616D53: FLdRfVar var_9C
  loc_616D56: ImpAdLdRf MemVar_74C760
  loc_616D59: NewIfNullPr Formx
  loc_616D5C: from_stack_1v = Formx.global_4589716Get()
  loc_616D61: FLdPr var_9C
  loc_616D64:  = Formx.MousePointer
  loc_616D69: FLdI2 var_9E
  loc_616D6C: NotI4
  loc_616D6D: FFree1Ad var_9C
  loc_616D70: BranchF loc_616DA3
  loc_616D73: FLdRfVar var_B0
  loc_616D76: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_616D7B: FLdRfVar var_B0
  loc_616D7E: CBoolVarNull
  loc_616D80: FFree1Var var_B0 = ""
  loc_616D83: BranchF loc_616DA0
  loc_616D86: LitI2_Byte 0
  loc_616D88: FLdPrThis
  loc_616D89: VCallAd Control_ID_Reloj
  loc_616D8C: FStAdFunc var_9C
  loc_616D8F: FLdPr var_9C
  loc_616D92: Me.Enabled = from_stack_1b
  loc_616D97: FFree1Ad var_9C
  loc_616D9A: ExitProcCbHresult
  loc_616DA0: Branch loc_616D4D
  loc_616DA3: LitI4 1
  loc_616DA8: ILdRf var_8C
  loc_616DAB: LitStr "P"
  loc_616DAE: LitI4 0
  loc_616DB3: FnInStr4
  loc_616DB5: LitI4 0
  loc_616DBA: NeI4
  loc_616DBB: BranchF loc_616E53
  loc_616DBE: FLdRfVar var_9E
  loc_616DC1: FLdRfVar var_98
  loc_616DC4: NewIfNullRf
  loc_616DC8: FLdRfVar var_94
  loc_616DCB: NewIfNullPr CMsgPrice
  loc_616DD3: FLdI2 var_9E
  loc_616DD6: BranchF loc_616E4E
  loc_616DD9: FLdRfVar var_B0
  loc_616DDC: LitI2_Byte &HFF
  loc_616DDE: PopTmpLdAd2 var_9E
  loc_616DE1: FLdRfVar var_B4
  loc_616DE4: NewIfNullPr PreciosConectividad
  loc_616DE7: from_stack_2v = PreciosConectividad.setAdvise(from_stack_1v)
  loc_616DEC: FFree1Var var_B0 = ""
  loc_616DEF: FLdRfVar var_B0
  loc_616DF2: FLdRfVar var_98
  loc_616DF5: NewIfNullRf
  loc_616DF9: FLdRfVar var_B4
  loc_616DFC: NewIfNullPr PreciosConectividad
  loc_616DFF: from_stack_2v = PreciosConectividad.setPrice(from_stack_1v)
  loc_616E04: FFree1Var var_B0 = ""
  loc_616E07: LitVarI2 var_B0, 3
  loc_616E0C: LitI4 1
  loc_616E11: ImpAdLdRf MemVar_74BF90
  loc_616E14: CVarRef
  loc_616E19: FLdRfVar var_E4
  loc_616E1C: ImpAdCallFPR4  = Mid(, , )
  loc_616E21: FLdRfVar var_E4
  loc_616E24: LitVarStr var_F4, "\\."
  loc_616E29: HardType
  loc_616E2A: EqVarBool
  loc_616E2C: FFreeVar var_B0 = ""
  loc_616E33: BranchF loc_616E4E
  loc_616E36: LitVar_Missing var_D4
  loc_616E39: PopAdLdVar
  loc_616E3A: LitVarI4
  loc_616E42: PopAdLdVar
  loc_616E43: FLdRfVar var_B4
  loc_616E46: NewIfNullPr PreciosConectividad
  loc_616E49: PreciosConectividad.Show from_stack_1, from_stack_2
  loc_616E4E: LitI2_Byte &HFF
  loc_616E50: FStI2 var_8E
  loc_616E53: FLdI2 var_8E
  loc_616E56: FStI2 var_86
  loc_616E59: ExitProcCbHresult
End Function

Private Function Proc_162_215_5C817C() '5C817C
  'Data Table: 460894
  loc_5C8178: ExitProcHresult
End Function

Private Function Proc_162_216_5D6274() '5D6274
  'Data Table: 460894
  loc_5D624C: LitI2_Byte &H56
  loc_5D624E: PopTmpLdAd2 var_86
  loc_5D6251: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D6256: NotI4
  loc_5D6257: BranchF loc_5D625B
  loc_5D625A: ExitProcHresult
  loc_5D625B: LitVar_Missing var_A8
  loc_5D625E: PopAdLdVar
  loc_5D625F: LitVarI4
  loc_5D6267: PopAdLdVar
  loc_5D6268: ImpAdLdRf MemVar_74DE44
  loc_5D626B: NewIfNullPr frmConsignados
  loc_5D626E: frmConsignados.Show from_stack_1, from_stack_2
  loc_5D6273: ExitProcHresult
End Function

Private Function Proc_162_217_61F318(arg_C, arg_10) '61F318
  'Data Table: 460894
  loc_61F1E0: LitStr vbNullString
  loc_61F1E3: FStStrCopy var_8C
  loc_61F1E6: LitVar_Missing var_F0
  loc_61F1E9: LitVar_Missing var_D0
  loc_61F1EC: LitStr "Cierre de Stock "
  loc_61F1EF: ILdI4 arg_10
  loc_61F1F2: ConcatStr
  loc_61F1F3: CVarStr var_B0
  loc_61F1F6: LitI4 &H24
  loc_61F1FB: LitStr "¿Esta seguro que desea hacer un cierre de Stock "
  loc_61F1FE: ILdI4 arg_10
  loc_61F201: ConcatStr
  loc_61F202: FStStrNoPop var_90
  loc_61F205: LitStr "?"
  loc_61F208: ConcatStr
  loc_61F209: CVarStr var_A0
  loc_61F20C: ImpAdCallI2 MsgBox(, , , , )
  loc_61F211: LitI4 6
  loc_61F216: EqI4
  loc_61F217: FFree1Str var_90
  loc_61F21A: FFreeVar var_A0 = "": var_B0 = "": var_D0 = ""
  loc_61F225: BranchF loc_61F315
  loc_61F228: LitVar_Missing var_E0
  loc_61F22B: PopAdLdVar
  loc_61F22C: LitVarI2 var_C0, 1
  loc_61F231: PopAdLdVar
  loc_61F232: ImpAdLdRf MemVar_74DDA8
  loc_61F235: NewIfNullPr frmLegajo
  loc_61F238: frmLegajo.Show from_stack_1, from_stack_2
  loc_61F23D: FLdRfVar var_90
  loc_61F240: ImpAdLdRf MemVar_74DDA8
  loc_61F243: NewIfNullPr frmLegajo
  loc_61F246: from_stack_1v = frmLegajo.GetLegajo()
  loc_61F24B: FLdZeroAd var_90
  loc_61F24E: FStStr var_88
  loc_61F251: ILdRf var_88
  loc_61F254: LitStr "000000"
  loc_61F257: EqStr
  loc_61F259: BranchF loc_61F25D
  loc_61F25C: ExitProcHresult
  loc_61F25D: FLdRfVar var_A0
  loc_61F260: FLdRfVar var_8C
  loc_61F263: ILdRf arg_C
  loc_61F266: FLdRfVar var_88
  loc_61F269: FLdRfVar var_F4
  loc_61F26C: ImpAdLdRf MemVar_74C760
  loc_61F26F: NewIfNullPr Formx
  loc_61F272: from_stack_1v = Formx.global_4589716Get()
  loc_61F277: FLdPr var_F4
  loc_61F27A: Formx.ClipControls = from_stack_1b
  loc_61F27F: FLdRfVar var_A0
  loc_61F282: NotVar var_B0
  loc_61F286: CBoolVarNull
  loc_61F288: FFree1Ad var_F4
  loc_61F28B: FFree1Var var_A0 = ""
  loc_61F28E: BranchF loc_61F2A8
  loc_61F291: FLdRfVar var_A0
  loc_61F294: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_61F299: FLdRfVar var_A0
  loc_61F29C: CBoolVarNull
  loc_61F29E: FFree1Var var_A0 = ""
  loc_61F2A1: BranchF loc_61F2A5
  loc_61F2A4: ExitProcHresult
  loc_61F2A5: Branch loc_61F25D
  loc_61F2A8: FLdRfVar var_8C
  loc_61F2AB: CVarRef
  loc_61F2B0: FLdRfVar var_A0
  loc_61F2B3: ImpAdCallFPR4  = Trim()
  loc_61F2B8: FLdRfVar var_A0
  loc_61F2BB: LitVarStr var_E0, "0"
  loc_61F2C0: HardType
  loc_61F2C1: EqVarBool
  loc_61F2C3: FFree1Var var_A0 = ""
  loc_61F2C6: BranchF loc_61F315
  loc_61F2C9: LitI4 &HD
  loc_61F2CE: FLdRfVar var_A0
  loc_61F2D1: ImpAdCallFPR4  = Chr()
  loc_61F2D6: LitVar_Missing var_144
  loc_61F2D9: LitVar_Missing var_124
  loc_61F2DC: LitVarStr var_104, "Atención"
  loc_61F2E1: FStVarCopyObj var_F0
  loc_61F2E4: FLdRfVar var_F0
  loc_61F2E7: LitI4 &H40
  loc_61F2EC: LitVarStr var_C0, "No se pudo realizar el cierre ya que pasaron mas minutos de los estipulados"
  loc_61F2F1: FLdRfVar var_A0
  loc_61F2F4: AddVar var_B0
  loc_61F2F8: LitVarStr var_E0, "desde la última carga de mediciones físicas de los tanques."
  loc_61F2FD: AddVar var_D0
  loc_61F301: ImpAdCallFPR4 MsgBox(, , , , )
  loc_61F306: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_124 = ""
  loc_61F315: ExitProcHresult
End Function

Private Function Proc_162_218_68B984(arg_34) '68B984
  'Data Table: 460894
  loc_68B458: ImpAdLdRf MemVar_74C760
  loc_68B45B: NewIfNullPr Formx
  loc_68B45E: VCallAd Control_ID_CrystalReport1
  loc_68B461: FStAdFunc var_90
  loc_68B464: FLdRfVar var_A4
  loc_68B467: FLdRfVar var_A0
  loc_68B46A: ImpAdLdRf MemVar_7520D4
  loc_68B46D: NewIfNullPr Global
  loc_68B470:  = Global.App
  loc_68B475: FLdPr var_A0
  loc_68B478:  = App.Path
  loc_68B47D: FLdRfVar var_DC
  loc_68B480: LitVar_Missing var_D8
  loc_68B483: PopAdLdVar
  loc_68B484: LitVar_Missing var_C8
  loc_68B487: PopAdLdVar
  loc_68B488: LitVar_TRUE var_B8
  loc_68B48B: PopAdLdVar
  loc_68B48C: ILdRf var_A4
  loc_68B48F: LitStr "\reporte.mdb"
  loc_68B492: ConcatStr
  loc_68B493: FStStrNoPop var_A8
  loc_68B496: ImpAdLdRf MemVar_752164
  loc_68B499: NewIfNullPr Me
  loc_68B49C: Me.DBEngine.OpenDatabase from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_68B4A1: FLdZeroAd var_DC
  loc_68B4A4: FStAdFunc var_8C
  loc_68B4A7: FFreeStr var_A4 = ""
  loc_68B4AE: FFree1Ad var_A0
  loc_68B4B1: LitVar_Missing var_B8
  loc_68B4B4: PopAdLdVar
  loc_68B4B5: LitStr "DELETE * FROM productos"
  loc_68B4B8: FLdPr var_8C
  loc_68B4BB: Me.Execute from_stack_1, from_stack_2
  loc_68B4C0: FLdRfVar var_DE
  loc_68B4C3: FLdRfVar var_98
  loc_68B4C6: FLdRfVar var_A0
  loc_68B4C9: ImpAdLdRf MemVar_74C760
  loc_68B4CC: NewIfNullPr Formx
  loc_68B4CF: from_stack_1v = Formx.global_4589716Get()
  loc_68B4D4: FLdPr var_A0
  loc_68B4D7: Call 0.Method_arg_344 ()
  loc_68B4DC: FLdI2 var_DE
  loc_68B4DF: NotI4
  loc_68B4E0: FFree1Ad var_A0
  loc_68B4E3: BranchF loc_68B4FD
  loc_68B4E6: FLdRfVar var_F0
  loc_68B4E9: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_68B4EE: FLdRfVar var_F0
  loc_68B4F1: CBoolVarNull
  loc_68B4F3: FFree1Var var_F0 = ""
  loc_68B4F6: BranchF loc_68B4FA
  loc_68B4F9: ExitProcHresult
  loc_68B4FA: Branch loc_68B4C0
  loc_68B4FD: LitI2_Byte 1
  loc_68B4FF: CUI1I2
  loc_68B501: FLdRfVar var_88
  loc_68B504: ILdRf var_98
  loc_68B507: FnLenStr
  loc_68B508: CUI1I4
  loc_68B50A: ForUI1 var_F4
  loc_68B510: FLdUI1
  loc_68B514: CI2UI1
  loc_68B516: LitI2_Byte 1
  loc_68B518: AddI2
  loc_68B519: CUI1I2
  loc_68B51B: FStUI1 var_86
  loc_68B51F: FLdUI1
  loc_68B523: CI2UI1
  loc_68B525: FLdRfVar var_DE
  loc_68B528: ImpAdLdRf MemVar_74A220
  loc_68B52B: NewIfNullPr clsProducts
  loc_68B52E: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_68B533: FLdI2 var_DE
  loc_68B536: GtI2
  loc_68B537: BranchF loc_68B53D
  loc_68B53A: Branch loc_68B6C8
  loc_68B53D: LitVarI2 var_1E0, 1
  loc_68B542: FLdUI1
  loc_68B546: CI4UI1
  loc_68B547: FLdRfVar var_98
  loc_68B54A: CVarRef
  loc_68B54F: FLdRfVar var_1F0
  loc_68B552: ImpAdCallFPR4  = Mid(, , )
  loc_68B557: LitStr "INSERT INTO productos VALUES("
  loc_68B55A: FLdUI1
  loc_68B55E: CStrI2
  loc_68B560: FStStrNoPop var_A4
  loc_68B563: ConcatStr
  loc_68B564: FStStrNoPop var_A8
  loc_68B567: LitStr ", '"
  loc_68B56A: ConcatStr
  loc_68B56B: FStStrNoPop var_FC
  loc_68B56E: FLdRfVar var_F8
  loc_68B571: FLdUI1
  loc_68B575: CI2UI1
  loc_68B577: ImpAdLdRf MemVar_74A220
  loc_68B57A: NewIfNullPr clsProducts
  loc_68B582: ILdRf var_F8
  loc_68B585: ConcatStr
  loc_68B586: FStStrNoPop var_100
  loc_68B589: LitStr "', '"
  loc_68B58C: ConcatStr
  loc_68B58D: CVarStr var_120
  loc_68B590: LitVarI2 var_F0, 8
  loc_68B595: FLdUI1
  loc_68B599: CI2UI1
  loc_68B59B: LitI2_Byte 1
  loc_68B59D: AddI2
  loc_68B59E: CI4UI1
  loc_68B59F: FLdRfVar var_98
  loc_68B5A2: CVarRef
  loc_68B5A7: FLdRfVar var_110
  loc_68B5AA: ImpAdCallFPR4  = Mid(, , )
  loc_68B5AF: FLdRfVar var_110
  loc_68B5B2: ConcatVar var_130
  loc_68B5B6: LitVarStr var_D8, "', '"
  loc_68B5BB: ConcatVar var_140
  loc_68B5BF: LitVarI2 var_170, 8
  loc_68B5C4: FLdUI1
  loc_68B5C8: CI2UI1
  loc_68B5CA: LitI2_Byte 9
  loc_68B5CC: AddI2
  loc_68B5CD: CI4UI1
  loc_68B5CE: FLdRfVar var_98
  loc_68B5D1: CVarRef
  loc_68B5D6: FLdRfVar var_180
  loc_68B5D9: ImpAdCallFPR4  = Mid(, , )
  loc_68B5DE: FLdRfVar var_180
  loc_68B5E1: ConcatVar var_190
  loc_68B5E5: LitVarStr var_1A0, "', '"
  loc_68B5EA: ConcatVar var_1B0
  loc_68B5EE: LitI4 0
  loc_68B5F3: LitI4 3
  loc_68B5F8: FLdRfVar var_214
  loc_68B5FB: Redim
  loc_68B605: LitVarStr var_224, "No Consignado"
  loc_68B60A: LitI4 0
  loc_68B60F: ILdRf var_214
  loc_68B612: Ary1StVarCopy
  loc_68B614: LitVarStr var_234, "Pendiente de alta"
  loc_68B619: LitI4 1
  loc_68B61E: ILdRf var_214
  loc_68B621: Ary1StVarCopy
  loc_68B623: LitVarStr var_244, "Consignado"
  loc_68B628: LitI4 2
  loc_68B62D: ILdRf var_214
  loc_68B630: Ary1StVarCopy
  loc_68B632: LitVarStr var_254, "Pendiente de baja"
  loc_68B637: LitI4 3
  loc_68B63C: ILdRf var_214
  loc_68B63F: Ary1StVarCopy
  loc_68B641: FLdRfVar var_214
  loc_68B644: FLdRfVar var_1F0
  loc_68B647: LitVarI2 var_200, 1
  loc_68B64C: AddVar var_210
  loc_68B650: CR8Var
  loc_68B652: PopFPR4
  loc_68B653: FLdRfVar var_264
  loc_68B656: ImpAdCallFPR4  = Choose(, )
  loc_68B65B: FLdRfVar var_214
  loc_68B65E: Erase
  loc_68B65F: FLdRfVar var_264
  loc_68B662: ConcatVar var_274
  loc_68B666: LitVarStr var_284, "')"
  loc_68B66B: ConcatVar var_294
  loc_68B66F: CStrVarTmp
  loc_68B670: FStStr var_9C
  loc_68B673: FFreeStr var_A4 = "": var_A8 = "": var_FC = "": var_F8 = ""
  loc_68B680: FFreeVar var_F0 = "": var_120 = "": var_110 = "": var_130 = "": var_170 = "": var_140 = "": var_180 = "": var_190 = "": var_1E0 = "": var_1F0 = "": var_210 = "": var_1B0 = "": var_264 = "": var_274 = ""
  loc_68B6A1: LitVar_Missing var_B8
  loc_68B6A4: PopAdLdVar
  loc_68B6A5: ILdRf var_9C
  loc_68B6A8: FLdPr var_8C
  loc_68B6AB: Me.Execute from_stack_1, from_stack_2
  loc_68B6B0: FLdUI1
  loc_68B6B4: CI2UI1
  loc_68B6B6: LitI2_Byte &H10
  loc_68B6B8: AddI2
  loc_68B6B9: CUI1I2
  loc_68B6BB: FStUI1 var_88
  loc_68B6BF: FLdRfVar var_88
  loc_68B6C2: NextUI1
  loc_68B6C8: FLdRfVar var_A8
  loc_68B6CB: LitVar_Missing var_1E0
  loc_68B6CE: LitVar_Missing var_1B0
  loc_68B6D1: LitVar_Missing var_190
  loc_68B6D4: LitVar_Missing var_180
  loc_68B6D7: LitVar_Missing var_170
  loc_68B6DA: LitVar_Missing var_140
  loc_68B6DD: LitVar_Missing var_130
  loc_68B6E0: LitVar_Missing var_120
  loc_68B6E3: LitVar_Missing var_110
  loc_68B6E6: LitVar_Missing var_F0
  loc_68B6E9: LitStr "Razón Social"
  loc_68B6EC: FStStrCopy var_A4
  loc_68B6EF: FLdRfVar var_A4
  loc_68B6F2: LitI4 &H92
  loc_68B6F7: PopTmpLdAdStr var_298
  loc_68B6FA: LitI2_Byte &HA
  loc_68B6FC: PopTmpLdAd2 var_DE
  loc_68B6FF: ImpAdLdRf MemVar_74C7D0
  loc_68B702: NewIfNullPr clsMsg
  loc_68B705: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68B70A: ILdRf var_A8
  loc_68B70D: FLdPr Me
  loc_68B710: MemStStrCopy
  loc_68B714: FFreeStr var_A4 = ""
  loc_68B71B: FFreeVar var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_170 = "": var_180 = "": var_190 = "": var_1B0 = ""
  loc_68B732: FLdRfVar var_A8
  loc_68B735: LitVar_Missing var_1E0
  loc_68B738: LitVar_Missing var_1B0
  loc_68B73B: LitVar_Missing var_190
  loc_68B73E: LitVar_Missing var_180
  loc_68B741: LitVar_Missing var_170
  loc_68B744: LitVar_Missing var_140
  loc_68B747: LitVar_Missing var_130
  loc_68B74A: LitVar_Missing var_120
  loc_68B74D: LitVar_Missing var_110
  loc_68B750: LitVar_Missing var_F0
  loc_68B753: LitStr "Dirección"
  loc_68B756: FStStrCopy var_A4
  loc_68B759: FLdRfVar var_A4
  loc_68B75C: LitI4 &H93
  loc_68B761: PopTmpLdAdStr var_298
  loc_68B764: LitI2_Byte &HA
  loc_68B766: PopTmpLdAd2 var_DE
  loc_68B769: ImpAdLdRf MemVar_74C7D0
  loc_68B76C: NewIfNullPr clsMsg
  loc_68B76F: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_68B774: ILdRf var_A8
  loc_68B777: FLdPr Me
  loc_68B77A: MemStStrCopy
  loc_68B77E: FFreeStr var_A4 = ""
  loc_68B785: FFreeVar var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_140 = "": var_170 = "": var_180 = "": var_190 = "": var_1B0 = ""
  loc_68B79C: LitI2_Byte 0
  loc_68B79E: CUI1I2
  loc_68B7A0: FLdRfVar var_88
  loc_68B7A3: LitI2_Byte &H14
  loc_68B7A5: CUI1I2
  loc_68B7A7: ForUI1 var_29C
  loc_68B7AD: FLdUI1
  loc_68B7B1: CI2UI1
  loc_68B7B3: CVarI2 var_B8
  loc_68B7B6: PopAdLdVar
  loc_68B7B7: LitVarStr var_C8, vbNullString
  loc_68B7BC: PopAdLdVar
  loc_68B7BD: FLdPr var_90
  loc_68B7C0: LateIdCallSt
  loc_68B7C8: FLdRfVar var_88
  loc_68B7CB: NextUI1
  loc_68B7D1: FLdRfVar var_DE
  loc_68B7D4: FLdRfVar var_94
  loc_68B7D7: FLdRfVar var_A0
  loc_68B7DA: ImpAdLdRf MemVar_74C760
  loc_68B7DD: NewIfNullPr Formx
  loc_68B7E0: from_stack_1v = Formx.global_4589716Get()
  loc_68B7E5: FLdPr var_A0
  loc_68B7E8:  = Formx.Picture
  loc_68B7ED: FLdI2 var_DE
  loc_68B7F0: FFree1Ad var_A0
  loc_68B7F3: BranchF loc_68B90F
  loc_68B7F6: LitVarI2 var_F0, 6
  loc_68B7FB: LitI4 1
  loc_68B800: FLdRfVar var_94
  loc_68B803: CVarRef
  loc_68B808: FLdRfVar var_110
  loc_68B80B: ImpAdCallFPR4  = Mid(, , )
  loc_68B810: FLdRfVar var_110
  loc_68B813: FLdRfVar var_120
  loc_68B816: ImpAdCallFPR4  = Trim()
  loc_68B81B: FLdRfVar var_120
  loc_68B81E: LitVarStr var_D8, "    "
  loc_68B823: AddVar var_130
  loc_68B827: FLdPr Me
  loc_68B82A: MemLdStr global_7576
  loc_68B82D: CVarStr var_150
  loc_68B830: ConcatVar var_140
  loc_68B834: LitVarStr var_1C0, ": "
  loc_68B839: LitVarI2 var_170, 30
  loc_68B83E: LitI4 7
  loc_68B843: FLdRfVar var_94
  loc_68B846: CVarRef
  loc_68B84B: FLdRfVar var_180
  loc_68B84E: ImpAdCallFPR4  = Mid(, , )
  loc_68B853: FLdRfVar var_180
  loc_68B856: FLdRfVar var_190
  loc_68B859: ImpAdCallFPR4  = Trim()
  loc_68B85E: FLdRfVar var_190
  loc_68B861: AddVar var_1B0
  loc_68B865: LitVarStr var_1D0, "     "
  loc_68B86A: AddVar var_1E0
  loc_68B86E: ConcatVar var_1F0
  loc_68B872: FLdPr Me
  loc_68B875: MemLdStr global_7580
  loc_68B878: CVarStr var_200
  loc_68B87B: ConcatVar var_210
  loc_68B87F: LitVarStr var_244, ": "
  loc_68B884: ILdRf var_94
  loc_68B887: FnLenStr
  loc_68B888: LitI4 &H25
  loc_68B88D: SubI4
  loc_68B88E: CVarI4
  loc_68B892: LitI4 &H25
  loc_68B897: FLdRfVar var_94
  loc_68B89A: CVarRef
  loc_68B89F: FLdRfVar var_274
  loc_68B8A2: ImpAdCallFPR4  = Mid(, , )
  loc_68B8A7: FLdRfVar var_274
  loc_68B8AA: FLdRfVar var_294
  loc_68B8AD: ImpAdCallFPR4  = Trim()
  loc_68B8B2: FLdRfVar var_294
  loc_68B8B5: AddVar var_2AC
  loc_68B8B9: ConcatVar var_2BC
  loc_68B8BD: CStrVarTmp
  loc_68B8BE: FStStr var_94
  loc_68B8C1: FFreeVar var_F0 = "": var_110 = "": var_120 = "": var_130 = "": var_170 = "": var_180 = "": var_190 = "": var_1B0 = "": var_140 = "": var_1E0 = "": var_1F0 = "": var_264 = "": var_274 = "": var_294 = "": var_210 = "": var_2AC = ""
  loc_68B8E6: LitVarI2 var_B8, 0
  loc_68B8EB: PopAdLdVar
  loc_68B8EC: LitStr "DATOSEESS;"
  loc_68B8EF: ILdRf var_94
  loc_68B8F2: ConcatStr
  loc_68B8F3: FStStrNoPop var_A4
  loc_68B8F6: LitStr ";true"
  loc_68B8F9: ConcatStr
  loc_68B8FA: CVarStr var_F0
  loc_68B8FD: PopAdLdVar
  loc_68B8FE: FLdPr var_90
  loc_68B901: LateIdCallSt
  loc_68B909: FFree1Str var_A4
  loc_68B90C: FFree1Var var_F0 = ""
  loc_68B90F: FLdRfVar var_A4
  loc_68B912: FLdRfVar var_A0
  loc_68B915: ImpAdLdRf MemVar_7520D4
  loc_68B918: NewIfNullPr Global
  loc_68B91B:  = Global.App
  loc_68B920: FLdPr var_A0
  loc_68B923:  = App.Path
  loc_68B928: ILdRf var_A4
  loc_68B92B: LitStr "\productos.rpt"
  loc_68B92E: ConcatStr
  loc_68B92F: CVarStr var_F0
  loc_68B932: PopAdLdVar
  loc_68B933: FLdPr var_90
  loc_68B936: LateIdSt
  loc_68B93B: FFree1Str var_A4
  loc_68B93E: FFree1Ad var_A0
  loc_68B941: FFree1Var var_F0 = ""
  loc_68B944: LitVar_FALSE
  loc_68B948: PopAdLdVar
  loc_68B949: FLdPr var_90
  loc_68B94C: LateIdSt
  loc_68B951: LitVarI4
  loc_68B959: PopAdLdVar
  loc_68B95A: FLdPr var_90
  loc_68B95D: LateIdSt
  loc_68B962: ImpAdCallFPR4 Proc_6_3_615F1C()
  loc_68B967: LitI2_Byte &HFF
  loc_68B969: PopTmpLdAd2 var_DE
  loc_68B96C: ImpAdCallFPR4 Proc_87_1_630780()
  loc_68B971: LitNothing
  loc_68B973: CastAd
  loc_68B976: FStAdFunc var_90
  loc_68B979: FLdPr var_8C
  loc_68B97C: Me.Close
  loc_68B981: ExitProcHresult
End Function

Private Function Proc_162_219_5C88CC() '5C88CC
  'Data Table: 460894
  loc_5C88C8: ExitProcHresult
End Function

Private Function Proc_162_220_5D0864() '5D0864
  'Data Table: 460894
  loc_5D084C: LitVar_Missing var_A4
  loc_5D084F: PopAdLdVar
  loc_5D0850: LitVarI2 var_94, 1
  loc_5D0855: PopAdLdVar
  loc_5D0856: ImpAdLdRf MemVar_74DC08
  loc_5D0859: NewIfNullPr PanelTanques
  loc_5D085C: PanelTanques.Show from_stack_1, from_stack_2
  loc_5D0861: ExitProcHresult
End Function

Private Function Proc_162_221_5C8934() '5C8934
  'Data Table: 460894
  loc_5C8930: ExitProcHresult
  loc_5C8931: CI4Str
  loc_5C8932: BranchF loc_5CA532
End Function

Private Function Proc_162_222_5C9650() '5C9650
  'Data Table: 460894
  loc_5C9648: from_stack_1v = Proc_162_230_5EEC9C()
  loc_5C964D: ExitProcHresult
End Function

Private Function Proc_162_223_5D2A20() '5D2A20
  'Data Table: 460894
  loc_5D2A04: LitVar_Missing var_A4
  loc_5D2A07: PopAdLdVar
  loc_5D2A08: LitVarI4
  loc_5D2A10: PopAdLdVar
  loc_5D2A11: ImpAdLdRf MemVar_74DCA8
  loc_5D2A14: NewIfNullPr TiposCierres
  loc_5D2A17: TiposCierres.Show from_stack_1, from_stack_2
  loc_5D2A1C: ExitProcHresult
End Function

Private Function Proc_162_224_5D4FE4() '5D4FE4
  'Data Table: 460894
  loc_5D4FBC: LitI2_Byte &H35
  loc_5D4FBE: PopTmpLdAd2 var_86
  loc_5D4FC1: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D4FC6: NotI4
  loc_5D4FC7: BranchF loc_5D4FCB
  loc_5D4FCA: ExitProcHresult
  loc_5D4FCB: LitVar_Missing var_A8
  loc_5D4FCE: PopAdLdVar
  loc_5D4FCF: LitVarI4
  loc_5D4FD7: PopAdLdVar
  loc_5D4FD8: ImpAdLdRf MemVar_74E100
  loc_5D4FDB: NewIfNullPr frmVentasDiferenciales
  loc_5D4FDE: frmVentasDiferenciales.Show from_stack_1, from_stack_2
  loc_5D4FE3: ExitProcHresult
End Function

Private Function Proc_162_225_5D4E2C() '5D4E2C
  'Data Table: 460894
  loc_5D4E04: LitI2_Byte &H26
  loc_5D4E06: PopTmpLdAd2 var_86
  loc_5D4E09: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5D4E0E: NotI4
  loc_5D4E0F: BranchF loc_5D4E13
  loc_5D4E12: ExitProcHresult
  loc_5D4E13: LitVar_Missing var_A8
  loc_5D4E16: PopAdLdVar
  loc_5D4E17: LitVarI4
  loc_5D4E1F: PopAdLdVar
  loc_5D4E20: ImpAdLdRf MemVar_74E18C
  loc_5D4E23: NewIfNullPr OperacionesEspeciales
  loc_5D4E26: OperacionesEspeciales.Show from_stack_1, from_stack_2
  loc_5D4E2B: ExitProcHresult
End Function

Private Function Proc_162_226_5D0984() '5D0984
  'Data Table: 460894
  loc_5D096C: LitVar_Missing var_A4
  loc_5D096F: PopAdLdVar
  loc_5D0970: LitVarI2 var_94, 1
  loc_5D0975: PopAdLdVar
  loc_5D0976: ImpAdLdRf MemVar_74E0C4
  loc_5D0979: NewIfNullPr NotiCamPrecio
  loc_5D097C: NotiCamPrecio.Show from_stack_1, from_stack_2
  loc_5D0981: ExitProcHresult
End Function

Private Function Proc_162_227_5E231C() '5E231C
  'Data Table: 460894
  loc_5E22BC: ImpAdCallFPR4 Proc_167_13_6138BC()
  loc_5E22C1: from_stack_1v = Proc_162_229_63F80C()
  loc_5E22C6: LitI2_Byte &HFF
  loc_5E22C8: FLdPrThis
  loc_5E22C9: VCallAd Control_ID_Text1
  loc_5E22CC: FStAdFunc var_88
  loc_5E22CF: FLdPr var_88
  loc_5E22D2: Me.Visible = from_stack_1b
  loc_5E22D7: FFree1Ad var_88
  loc_5E22DA: LitI4 &H3E8
  loc_5E22DF: ImpAdCallFPR4 Sleep()
  loc_5E22E4: SetLastSystemError
  loc_5E22E5: LitI2_Byte 0
  loc_5E22E7: PopTmpLdAd2 var_8A
  loc_5E22EA: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5E22EF: BranchF loc_5E2307
  loc_5E22F2: LitVar_Missing var_AC
  loc_5E22F5: PopAdLdVar
  loc_5E22F6: LitVarI2 var_9C, 1
  loc_5E22FB: PopAdLdVar
  loc_5E22FC: ImpAdLdRf MemVar_74DB68
  loc_5E22FF: NewIfNullPr Form_Tprec
  loc_5E2302: Form_Tprec.Show from_stack_1, from_stack_2
  loc_5E2307: LitI2_Byte 0
  loc_5E2309: FLdPrThis
  loc_5E230A: VCallAd Control_ID_Text1
  loc_5E230D: FStAdFunc var_88
  loc_5E2310: FLdPr var_88
  loc_5E2313: Me.Visible = from_stack_1b
  loc_5E2318: FFree1Ad var_88
  loc_5E231B: ExitProcHresult
End Function

Private Function Proc_162_228_5D2EE0() '5D2EE0
  'Data Table: 460894
  loc_5D2EC4: LitVar_Missing var_A4
  loc_5D2EC7: PopAdLdVar
  loc_5D2EC8: LitVarI4
  loc_5D2ED0: PopAdLdVar
  loc_5D2ED1: ImpAdLdRf MemVar_74CA00
  loc_5D2ED4: NewIfNullPr frmReporteCisterna
  loc_5D2ED7: frmReporteCisterna.Show from_stack_1, from_stack_2
  loc_5D2EDC: ExitProcHresult
  loc_5D2EDD: ImpAdLdRf MemVar_491F90
End Function

Private Function Proc_162_229_63F80C() '63F80C
  'Data Table: 460894
  loc_63F5C4: FLdRfVar var_94
  loc_63F5C7: FLdPrThis
  loc_63F5C8: VCallAd Control_ID_Text1
  loc_63F5CB: FStAdFunc var_90
  loc_63F5CE: FLdPr var_90
  loc_63F5D1:  = Me.Height
  loc_63F5D6: FLdRfVar var_8C
  loc_63F5D9: FLdRfVar var_88
  loc_63F5DC: ImpAdLdRf MemVar_7520D4
  loc_63F5DF: NewIfNullPr Global
  loc_63F5E2:  = Global.Screen
  loc_63F5E7: FLdPr var_88
  loc_63F5EA:  = Screen.Height
  loc_63F5EF: FLdFPR4 var_8C
  loc_63F5F2: FLdFPR4 var_94
  loc_63F5F5: SubR4
  loc_63F5F6: LitI2_Byte 2
  loc_63F5F8: CR8I2
  loc_63F5F9: DivR8
  loc_63F5FA: PopFPR4
  loc_63F5FB: FLdPrThis
  loc_63F5FC: VCallAd Control_ID_Text1
  loc_63F5FF: FStAdFunc var_98
  loc_63F602: FLdPr var_98
  loc_63F605: Me.Top = from_stack_1s
  loc_63F60A: FFreeAd var_88 = "": var_90 = ""
  loc_63F613: FLdRfVar var_8C
  loc_63F616: FLdPrThis
  loc_63F617: VCallAd Control_ID_Text1
  loc_63F61A: FStAdFunc var_88
  loc_63F61D: FLdPr var_88
  loc_63F620:  = Me.Top
  loc_63F625: ILdRf var_8C
  loc_63F628: FLdPrThis
  loc_63F629: VCallAd Control_ID_Text2
  loc_63F62C: FStAdFunc var_90
  loc_63F62F: FLdPr var_90
  loc_63F632: Me.Top = from_stack_1s
  loc_63F637: FFreeAd var_88 = ""
  loc_63F63E: FLdRfVar var_8C
  loc_63F641: FLdPrThis
  loc_63F642: VCallAd Control_ID_Text1
  loc_63F645: FStAdFunc var_88
  loc_63F648: FLdPr var_88
  loc_63F64B:  = Me.Top
  loc_63F650: ILdRf var_8C
  loc_63F653: FLdPrThis
  loc_63F654: VCallAd Control_ID_Text3
  loc_63F657: FStAdFunc var_90
  loc_63F65A: FLdPr var_90
  loc_63F65D: Me.Top = from_stack_1s
  loc_63F662: FFreeAd var_88 = ""
  loc_63F669: FLdRfVar var_8C
  loc_63F66C: FLdPrThis
  loc_63F66D: VCallAd Control_ID_Text1
  loc_63F670: FStAdFunc var_88
  loc_63F673: FLdPr var_88
  loc_63F676:  = Me.Top
  loc_63F67B: ILdRf var_8C
  loc_63F67E: FLdPrThis
  loc_63F67F: VCallAd Control_ID_Text4
  loc_63F682: FStAdFunc var_90
  loc_63F685: FLdPr var_90
  loc_63F688: Me.Top = from_stack_1s
  loc_63F68D: FFreeAd var_88 = ""
  loc_63F694: FLdRfVar var_94
  loc_63F697: FLdPrThis
  loc_63F698: VCallAd Control_ID_Text1
  loc_63F69B: FStAdFunc var_90
  loc_63F69E: FLdPr var_90
  loc_63F6A1:  = Me.Width
  loc_63F6A6: FLdRfVar var_8C
  loc_63F6A9: FLdRfVar var_88
  loc_63F6AC: ImpAdLdRf MemVar_7520D4
  loc_63F6AF: NewIfNullPr Global
  loc_63F6B2:  = Global.Screen
  loc_63F6B7: FLdPr var_88
  loc_63F6BA:  = Screen.Width
  loc_63F6BF: FLdFPR4 var_8C
  loc_63F6C2: FLdFPR4 var_94
  loc_63F6C5: SubR4
  loc_63F6C6: LitI2_Byte 2
  loc_63F6C8: CR8I2
  loc_63F6C9: DivR8
  loc_63F6CA: PopFPR4
  loc_63F6CB: FLdPrThis
  loc_63F6CC: VCallAd Control_ID_Text1
  loc_63F6CF: FStAdFunc var_98
  loc_63F6D2: FLdPr var_98
  loc_63F6D5: Me.Left = from_stack_1s
  loc_63F6DA: FFreeAd var_88 = "": var_90 = ""
  loc_63F6E3: FLdRfVar var_94
  loc_63F6E6: FLdPrThis
  loc_63F6E7: VCallAd Control_ID_Text2
  loc_63F6EA: FStAdFunc var_90
  loc_63F6ED: FLdPr var_90
  loc_63F6F0:  = Me.Width
  loc_63F6F5: FLdRfVar var_8C
  loc_63F6F8: FLdRfVar var_88
  loc_63F6FB: ImpAdLdRf MemVar_7520D4
  loc_63F6FE: NewIfNullPr Global
  loc_63F701:  = Global.Screen
  loc_63F706: FLdPr var_88
  loc_63F709:  = Screen.Width
  loc_63F70E: FLdFPR4 var_8C
  loc_63F711: FLdFPR4 var_94
  loc_63F714: SubR4
  loc_63F715: LitI2_Byte 2
  loc_63F717: CR8I2
  loc_63F718: DivR8
  loc_63F719: PopFPR4
  loc_63F71A: FLdPrThis
  loc_63F71B: VCallAd Control_ID_Text2
  loc_63F71E: FStAdFunc var_98
  loc_63F721: FLdPr var_98
  loc_63F724: Me.Left = from_stack_1s
  loc_63F729: FFreeAd var_88 = "": var_90 = ""
  loc_63F732: FLdRfVar var_94
  loc_63F735: FLdPrThis
  loc_63F736: VCallAd Control_ID_Text3
  loc_63F739: FStAdFunc var_90
  loc_63F73C: FLdPr var_90
  loc_63F73F:  = Me.Width
  loc_63F744: FLdRfVar var_8C
  loc_63F747: FLdRfVar var_88
  loc_63F74A: ImpAdLdRf MemVar_7520D4
  loc_63F74D: NewIfNullPr Global
  loc_63F750:  = Global.Screen
  loc_63F755: FLdPr var_88
  loc_63F758:  = Screen.Width
  loc_63F75D: FLdFPR4 var_8C
  loc_63F760: FLdFPR4 var_94
  loc_63F763: SubR4
  loc_63F764: LitI2_Byte 2
  loc_63F766: CR8I2
  loc_63F767: DivR8
  loc_63F768: PopFPR4
  loc_63F769: FLdPrThis
  loc_63F76A: VCallAd Control_ID_Text3
  loc_63F76D: FStAdFunc var_98
  loc_63F770: FLdPr var_98
  loc_63F773: Me.Left = from_stack_1s
  loc_63F778: FFreeAd var_88 = "": var_90 = ""
  loc_63F781: FLdRfVar var_94
  loc_63F784: FLdPrThis
  loc_63F785: VCallAd Control_ID_Text4
  loc_63F788: FStAdFunc var_90
  loc_63F78B: FLdPr var_90
  loc_63F78E:  = Me.Width
  loc_63F793: FLdRfVar var_8C
  loc_63F796: FLdRfVar var_88
  loc_63F799: ImpAdLdRf MemVar_7520D4
  loc_63F79C: NewIfNullPr Global
  loc_63F79F:  = Global.Screen
  loc_63F7A4: FLdPr var_88
  loc_63F7A7:  = Screen.Width
  loc_63F7AC: FLdFPR4 var_8C
  loc_63F7AF: FLdFPR4 var_94
  loc_63F7B2: SubR4
  loc_63F7B3: LitI2_Byte 2
  loc_63F7B5: CR8I2
  loc_63F7B6: DivR8
  loc_63F7B7: PopFPR4
  loc_63F7B8: FLdPrThis
  loc_63F7B9: VCallAd Control_ID_Text4
  loc_63F7BC: FStAdFunc var_98
  loc_63F7BF: FLdPr var_98
  loc_63F7C2: Me.Left = from_stack_1s
  loc_63F7C7: FFreeAd var_88 = "": var_90 = ""
  loc_63F7D0: FLdRfVar var_8C
  loc_63F7D3: FLdRfVar var_88
  loc_63F7D6: ImpAdLdRf MemVar_7520D4
  loc_63F7D9: NewIfNullPr Global
  loc_63F7DC:  = Global.Screen
  loc_63F7E1: FLdPr var_88
  loc_63F7E4:  = Screen.Width
  loc_63F7E9: FLdFPR4 var_8C
  loc_63F7EC: LitI2_Byte 2
  loc_63F7EE: CR8I2
  loc_63F7EF: DivR8
  loc_63F7F0: CI2R8
  loc_63F7F1: ImpAdStI2 MemVar_74C290
  loc_63F7F4: FFree1Ad var_88
  loc_63F7F7: LitVar_Missing var_B8
  loc_63F7FA: ImpAdCallI2 FreeFile()
  loc_63F7FF: CUI1I2
  loc_63F801: ImpAdStUI1 MemVar_74C1B4
  loc_63F805: FFree1Var var_B8 = ""
  loc_63F808: ExitProcHresult
End Function

Private Function Proc_162_230_5EEC9C() '5EEC9C
  'Data Table: 460894
  loc_5EEC00: LitI2_Byte &HD
  loc_5EEC02: PopTmpLdAd2 var_86
  loc_5EEC05: ImpAdCallI2 Proc_94_7_603DD0()
  loc_5EEC0A: NotI4
  loc_5EEC0B: BranchF loc_5EEC0F
  loc_5EEC0E: ExitProcHresult
  loc_5EEC0F: from_stack_1v = Proc_162_229_63F80C()
  loc_5EEC14: LitI2_Byte &HFF
  loc_5EEC16: FLdPrThis
  loc_5EEC17: VCallAd Control_ID_Text1
  loc_5EEC1A: FStAdFunc var_8C
  loc_5EEC1D: FLdPr var_8C
  loc_5EEC20: Me.Visible = from_stack_1b
  loc_5EEC25: FFree1Ad var_8C
  loc_5EEC28: LitI2_Byte 0
  loc_5EEC2A: PopTmpLdAd2 var_86
  loc_5EEC2D: ImpAdCallI2 Proc_53_4_718EF4()
  loc_5EEC32: BranchF loc_5EEC4A
  loc_5EEC35: LitVar_Missing var_AC
  loc_5EEC38: PopAdLdVar
  loc_5EEC39: LitVarI2 var_9C, 1
  loc_5EEC3E: PopAdLdVar
  loc_5EEC3F: ImpAdLdRf MemVar_74DC08
  loc_5EEC42: NewIfNullPr PanelTanques
  loc_5EEC45: PanelTanques.Show from_stack_1, from_stack_2
  loc_5EEC4A: LitI2_Byte 0
  loc_5EEC4C: FLdPrThis
  loc_5EEC4D: VCallAd Control_ID_Text1
  loc_5EEC50: FStAdFunc var_8C
  loc_5EEC53: FLdPr var_8C
  loc_5EEC56: Me.Visible = from_stack_1b
  loc_5EEC5B: FFree1Ad var_8C
  loc_5EEC5E: LitI2_Byte &HFF
  loc_5EEC60: FLdPrThis
  loc_5EEC61: VCallAd Control_ID_Text2
  loc_5EEC64: FStAdFunc var_8C
  loc_5EEC67: FLdPr var_8C
  loc_5EEC6A: Me.Visible = from_stack_1b
  loc_5EEC6F: FFree1Ad var_8C
  loc_5EEC72: LitI2_Byte 0
  loc_5EEC74: FLdPrThis
  loc_5EEC75: VCallAd Control_ID_Text4
  loc_5EEC78: FStAdFunc var_8C
  loc_5EEC7B: FLdPr var_8C
  loc_5EEC7E: Me.Visible = from_stack_1b
  loc_5EEC83: FFree1Ad var_8C
  loc_5EEC86: LitI2_Byte 0
  loc_5EEC88: FLdPrThis
  loc_5EEC89: VCallAd Control_ID_Text2
  loc_5EEC8C: FStAdFunc var_8C
  loc_5EEC8F: FLdPr var_8C
  loc_5EEC92: Me.Visible = from_stack_1b
  loc_5EEC97: FFree1Ad var_8C
  loc_5EEC9A: ExitProcHresult
End Function

Private Function Proc_162_231_5ED8A0(arg_C) '5ED8A0
  'Data Table: 460894
  loc_5ED82C: ILdI2 arg_C
  loc_5ED82F: CVarI2 var_118
  loc_5ED832: HardType
  loc_5ED833: FLdRfVar var_98
  loc_5ED836: ImpAdCallFPR4  = Date
  loc_5ED83B: FLdRfVar var_98
  loc_5ED83E: FLdRfVar var_A8
  loc_5ED841: ImpAdCallFPR4  = Proc_19_3_5D6F38()
  loc_5ED846: FLdRfVar var_A8
  loc_5ED849: FLdRfVar var_B8
  loc_5ED84C: ImpAdCallFPR4  = Date
  loc_5ED851: FLdRfVar var_B8
  loc_5ED854: FLdRfVar var_C8
  loc_5ED857: ImpAdCallFPR4  = Proc_53_0_5D6F98()
  loc_5ED85C: FLdRfVar var_C8
  loc_5ED85F: AddVar var_D8
  loc_5ED863: FLdRfVar var_E8
  loc_5ED866: ImpAdCallFPR4  = Time
  loc_5ED86B: FLdRfVar var_E8
  loc_5ED86E: FLdRfVar var_F8
  loc_5ED871: ImpAdCallFPR4  = Hour()
  loc_5ED876: FLdRfVar var_F8
  loc_5ED879: AddVar var_108
  loc_5ED87D: EqVar var_128
  loc_5ED881: CBoolVar
  loc_5ED883: FStI2 var_86
  loc_5ED886: FFreeVar var_98 = "": var_B8 = "": var_A8 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = ""
  loc_5ED899: ExitProcCbHresult
End Function

Private Function Proc_162_232_5F5E10() '5F5E10
  'Data Table: 460894
  loc_5F5D60: FLdRfVar var_A0
  loc_5F5D63: FLdRfVar var_88
  loc_5F5D66: FLdRfVar var_90
  loc_5F5D69: ImpAdLdRf MemVar_74C760
  loc_5F5D6C: NewIfNullPr Formx
  loc_5F5D6F: from_stack_1v = Formx.global_4589716Get()
  loc_5F5D74: FLdPr var_90
  loc_5F5D77: Formx.Icon = from_stack_1
  loc_5F5D7C: FLdRfVar var_A0
  loc_5F5D7F: NotVar var_B0
  loc_5F5D83: CBoolVarNull
  loc_5F5D85: FFree1Ad var_90
  loc_5F5D88: FFree1Var var_A0 = ""
  loc_5F5D8B: BranchF loc_5F5DBA
  loc_5F5D8E: FLdRfVar var_A0
  loc_5F5D91: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F5D96: FLdRfVar var_A0
  loc_5F5D99: CBoolVarNull
  loc_5F5D9B: FFree1Var var_A0 = ""
  loc_5F5D9E: BranchF loc_5F5DB7
  loc_5F5DA1: ILdRf Me
  loc_5F5DA4: FStAdNoPop
  loc_5F5DA8: ImpAdLdRf MemVar_7520D4
  loc_5F5DAB: NewIfNullPr Global
  loc_5F5DAE: Global.Unload from_stack_1
  loc_5F5DB3: FFree1Ad var_90
  loc_5F5DB6: ExitProcHresult
  loc_5F5DB7: Branch loc_5F5D60
  loc_5F5DBA: FLdRfVar var_88
  loc_5F5DBD: CVarRef
  loc_5F5DC2: FLdRfVar var_A0
  loc_5F5DC5: ImpAdCallFPR4  = Trim()
  loc_5F5DCA: FLdRfVar var_A0
  loc_5F5DCD: CStrVarTmp
  loc_5F5DCE: FStStr var_88
  loc_5F5DD1: FFree1Var var_A0 = ""
  loc_5F5DD4: LitI2_Byte 1
  loc_5F5DD6: FLdRfVar var_8A
  loc_5F5DD9: LitI2_Byte &H20
  loc_5F5DDB: ForI2 var_C4
  loc_5F5DE1: LitVarI2 var_A0, 1
  loc_5F5DE6: FLdI2 var_8A
  loc_5F5DE9: CI4UI1
  loc_5F5DEA: ILdRf var_88
  loc_5F5DED: ImpAdCallI2 Mid$(, , )
  loc_5F5DF2: FStStrNoPop var_C8
  loc_5F5DF5: CI2Str
  loc_5F5DF7: FLdI2 var_8A
  loc_5F5DFA: CI4UI1
  loc_5F5DFB: ImpAdLdRf MemVar_74BFC8
  loc_5F5DFE: Ary1StI2
  loc_5F5DFF: FFree1Str var_C8
  loc_5F5E02: FFree1Var var_A0 = ""
  loc_5F5E05: FLdRfVar var_8A
  loc_5F5E08: NextI2 var_C4, loc_5F5DE1
  loc_5F5E0D: ExitProcHresult
End Function

Private Function Proc_162_233_606DDC() '606DDC
  'Data Table: 460894
  loc_606CF8: LitVarI2 var_A4, 1
  loc_606CFD: LitI4 6
  loc_606D02: ImpAdLdI4 MemVar_74BEAC
  loc_606D05: ImpAdCallI2 Mid$(, , )
  loc_606D0A: FStStrNoPop var_A8
  loc_606D0D: CI4Str
  loc_606D0E: LitI4 1
  loc_606D13: AndI4
  loc_606D14: LitI4 1
  loc_606D19: EqI4
  loc_606D1A: FLdPrThis
  loc_606D1B: VCallAd Control_ID_mnuCierreTurno
  loc_606D1E: FStAdFunc var_AC
  loc_606D21: FLdPr var_AC
  loc_606D24: Me.Checked = from_stack_1b
  loc_606D29: FFree1Str var_A8
  loc_606D2C: FFree1Ad var_AC
  loc_606D2F: FFree1Var var_A4 = ""
  loc_606D32: LitVarI2 var_A4, 1
  loc_606D37: LitI4 6
  loc_606D3C: ImpAdLdI4 MemVar_74BEAC
  loc_606D3F: ImpAdCallI2 Mid$(, , )
  loc_606D44: FStStrNoPop var_A8
  loc_606D47: CI4Str
  loc_606D48: LitI4 2
  loc_606D4D: AndI4
  loc_606D4E: LitI4 2
  loc_606D53: EqI4
  loc_606D54: FLdPrThis
  loc_606D55: VCallAd Control_ID_mnuCierreDia
  loc_606D58: FStAdFunc var_AC
  loc_606D5B: FLdPr var_AC
  loc_606D5E: Me.Checked = from_stack_1b
  loc_606D63: FFree1Str var_A8
  loc_606D66: FFree1Ad var_AC
  loc_606D69: FFree1Var var_A4 = ""
  loc_606D6C: LitVarI2 var_A4, 1
  loc_606D71: LitI4 6
  loc_606D76: ImpAdLdI4 MemVar_74BEAC
  loc_606D79: ImpAdCallI2 Mid$(, , )
  loc_606D7E: FStStrNoPop var_A8
  loc_606D81: CI4Str
  loc_606D82: LitI4 4
  loc_606D87: AndI4
  loc_606D88: LitI4 4
  loc_606D8D: EqI4
  loc_606D8E: FLdPrThis
  loc_606D8F: VCallAd Control_ID_mnuCierreMes
  loc_606D92: FStAdFunc var_AC
  loc_606D95: FLdPr var_AC
  loc_606D98: Me.Checked = from_stack_1b
  loc_606D9D: FFree1Str var_A8
  loc_606DA0: FFree1Ad var_AC
  loc_606DA3: FFree1Var var_A4 = ""
  loc_606DA6: LitVarI2 var_A4, 1
  loc_606DAB: LitI4 &HC
  loc_606DB0: ImpAdLdI4 MemVar_74BEAC
  loc_606DB3: ImpAdCallI2 Mid$(, , )
  loc_606DB8: FStStrNoPop var_A8
  loc_606DBB: LitStr "1"
  loc_606DBE: EqStr
  loc_606DC0: FLdPrThis
  loc_606DC1: VCallAd Control_ID_mnuPrintTotalsCTF
  loc_606DC4: FStAdFunc var_AC
  loc_606DC7: FLdPr var_AC
  loc_606DCA: Me.Checked = from_stack_1b
  loc_606DCF: FFree1Str var_A8
  loc_606DD2: FFree1Ad var_AC
  loc_606DD5: FFree1Var var_A4 = ""
  loc_606DD8: ExitProcHresult
End Function

Private Function Proc_162_234_5F1AE8() '5F1AE8
  'Data Table: 460894
  loc_5F1A54: FLdRfVar var_A0
  loc_5F1A57: FLdRfVar var_88
  loc_5F1A5A: FLdRfVar var_90
  loc_5F1A5D: ImpAdLdRf MemVar_74C760
  loc_5F1A60: NewIfNullPr Formx
  loc_5F1A63: from_stack_1v = Formx.global_4589716Get()
  loc_5F1A68: FLdPr var_90
  loc_5F1A6B: Formx.Icon = from_stack_1
  loc_5F1A70: FLdRfVar var_A0
  loc_5F1A73: NotVar var_B0
  loc_5F1A77: CBoolVarNull
  loc_5F1A79: FFree1Ad var_90
  loc_5F1A7C: FFree1Var var_A0 = ""
  loc_5F1A7F: BranchF loc_5F1AAE
  loc_5F1A82: FLdRfVar var_A0
  loc_5F1A85: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_5F1A8A: FLdRfVar var_A0
  loc_5F1A8D: CBoolVarNull
  loc_5F1A8F: FFree1Var var_A0 = ""
  loc_5F1A92: BranchF loc_5F1AAB
  loc_5F1A95: ILdRf Me
  loc_5F1A98: FStAdNoPop
  loc_5F1A9C: ImpAdLdRf MemVar_7520D4
  loc_5F1A9F: NewIfNullPr Global
  loc_5F1AA2: Global.Unload from_stack_1
  loc_5F1AA7: FFree1Ad var_90
  loc_5F1AAA: ExitProcHresult
  loc_5F1AAB: Branch loc_5F1A54
  loc_5F1AAE: LitI2_Byte 1
  loc_5F1AB0: FLdRfVar var_8A
  loc_5F1AB3: LitI2_Byte &H20
  loc_5F1AB5: ForI2 var_B4
  loc_5F1ABB: LitVarI2 var_A0, 1
  loc_5F1AC0: FLdI2 var_8A
  loc_5F1AC3: CI4UI1
  loc_5F1AC4: ILdRf var_88
  loc_5F1AC7: ImpAdCallI2 Mid$(, , )
  loc_5F1ACC: FStStrNoPop var_C8
  loc_5F1ACF: CI2Str
  loc_5F1AD1: FLdI2 var_8A
  loc_5F1AD4: CI4UI1
  loc_5F1AD5: ImpAdLdRf MemVar_74BFC8
  loc_5F1AD8: Ary1StI2
  loc_5F1AD9: FFree1Str var_C8
  loc_5F1ADC: FFree1Var var_A0 = ""
  loc_5F1ADF: FLdRfVar var_8A
  loc_5F1AE2: NextI2 var_B4, loc_5F1ABB
  loc_5F1AE7: ExitProcHresult
End Function

Private Function Proc_162_235_64F850() '64F850
  'Data Table: 460894
  loc_64F5AC: LitI4 &H3E8
  loc_64F5B1: ImpAdCallI2 Space$()
  loc_64F5B6: FStStr var_88
  loc_64F5B9: LitStr "CEM44.INI"
  loc_64F5BC: FLdRfVar var_A4
  loc_64F5BF: CStr2Ansi
  loc_64F5C0: ILdRf var_A4
  loc_64F5C3: LitI4 &H3E8
  loc_64F5C8: ILdRf var_88
  loc_64F5CB: FLdRfVar var_A0
  loc_64F5CE: CStr2Ansi
  loc_64F5CF: ILdRf var_A0
  loc_64F5D2: LitStr vbNullString
  loc_64F5D5: FLdRfVar var_9C
  loc_64F5D8: CStr2Ansi
  loc_64F5D9: ILdRf var_9C
  loc_64F5DC: LitI4 0
  loc_64F5E1: LitStr "Tarjetas"
  loc_64F5E4: FLdRfVar var_98
  loc_64F5E7: CStr2Ansi
  loc_64F5E8: ILdRf var_98
  loc_64F5EB: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_64F5F0: SetLastSystemError
  loc_64F5F1: ILdRf var_A0
  loc_64F5F4: FLdRfVar var_88
  loc_64F5F7: CStr2Uni
  loc_64F5F9: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_64F604: ILdRf var_88
  loc_64F607: ImpAdCallI2 Trim$()
  loc_64F60C: FStStr var_88
  loc_64F60F: ILdRf var_88
  loc_64F612: ImpAdCallI2 Asc()
  loc_64F617: LitI2_Byte 0
  loc_64F619: EqI2
  loc_64F61A: BranchF loc_64F645
  loc_64F61D: LitI2_Byte 0
  loc_64F61F: FLdRfVar var_AC
  loc_64F622: LitI2_Byte 0
  loc_64F624: FLdPrThis
  loc_64F625: VCallAd Control_ID_menu
  loc_64F628: FStAdFunc var_A8
  loc_64F62B: FLdPr var_A8
  loc_64F62E: Set from_stack_2 = Me(from_stack_1)
  loc_64F633: FLdPr var_AC
  loc_64F636: Me.Visible = from_stack_1b
  loc_64F63B: FFreeAd var_A8 = ""
  loc_64F642: Branch loc_64F84D
  loc_64F645: LitI2_Byte &HFF
  loc_64F647: FLdRfVar var_AC
  loc_64F64A: LitI2_Byte 0
  loc_64F64C: FLdPrThis
  loc_64F64D: VCallAd Control_ID_menu
  loc_64F650: FStAdFunc var_A8
  loc_64F653: FLdPr var_A8
  loc_64F656: Set from_stack_2 = Me(from_stack_1)
  loc_64F65B: FLdPr var_AC
  loc_64F65E: Me.Visible = from_stack_1b
  loc_64F663: FFreeAd var_A8 = ""
  loc_64F66A: LitI4 1
  loc_64F66F: LitI4 1
  loc_64F674: FLdPr Me
  loc_64F677: MemLdRfVar from_stack_1.global_96
  loc_64F67A: Redim
  loc_64F684: LitStr vbNullString
  loc_64F687: LitI4 1
  loc_64F68C: FLdPr Me
  loc_64F68F: MemLdStr global_96
  loc_64F692: Ary1StStrCopy
  loc_64F693: LitI2_Byte 1
  loc_64F695: FStI2 var_92
  loc_64F698: LitI4 0
  loc_64F69D: ImpAdCallI2 Chr$()
  loc_64F6A2: FStStrNoPop var_98
  loc_64F6A5: FLdI2 var_92
  loc_64F6A8: FLdRfVar var_88
  loc_64F6AB: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_64F6B0: FStStr var_8C
  loc_64F6B3: FFree1Str var_98
  loc_64F6B6: ILdRf var_8C
  loc_64F6B9: LitStr vbNullString
  loc_64F6BC: NeStr
  loc_64F6BE: FLdI2 var_92
  loc_64F6C1: LitI2_Byte &HA
  loc_64F6C3: LeI2
  loc_64F6C4: AndI4
  loc_64F6C5: BranchF loc_64F80F
  loc_64F6C8: LitI4 1
  loc_64F6CD: FLdPr Me
  loc_64F6D0: MemLdStr global_96
  loc_64F6D3: Ary1LdI4
  loc_64F6D4: LitStr vbNullString
  loc_64F6D7: NeStr
  loc_64F6D9: BranchF loc_64F6F5
  loc_64F6DC: LitI4 1
  loc_64F6E1: FLdI2 var_92
  loc_64F6E4: CI4UI1
  loc_64F6E5: FLdPr Me
  loc_64F6E8: MemLdRfVar from_stack_1.global_96
  loc_64F6EB: RedimPreserve
  loc_64F6F5: LitI4 &H3E8
  loc_64F6FA: FLdRfVar var_BC
  loc_64F6FD: ImpAdCallFPR4  = Space()
  loc_64F702: FLdRfVar var_BC
  loc_64F705: CStrVarTmp
  loc_64F706: FStStr var_90
  loc_64F709: FFree1Var var_BC = ""
  loc_64F70C: LitStr "CEM44.INI"
  loc_64F70F: FLdRfVar var_C0
  loc_64F712: CStr2Ansi
  loc_64F713: ILdRf var_C0
  loc_64F716: LitI4 &H270F
  loc_64F71B: ILdRf var_90
  loc_64F71E: FLdRfVar var_A4
  loc_64F721: CStr2Ansi
  loc_64F722: ILdRf var_A4
  loc_64F725: LitStr vbNullString
  loc_64F728: FLdRfVar var_A0
  loc_64F72B: CStr2Ansi
  loc_64F72C: ILdRf var_A0
  loc_64F72F: ILdRf var_8C
  loc_64F732: FLdRfVar var_9C
  loc_64F735: CStr2Ansi
  loc_64F736: ILdRf var_9C
  loc_64F739: LitStr "Tarjetas"
  loc_64F73C: FLdRfVar var_98
  loc_64F73F: CStr2Ansi
  loc_64F740: ILdRf var_98
  loc_64F743: ImpAdCallFPR4 GetPrivateProfileString(, , , , , )
  loc_64F748: SetLastSystemError
  loc_64F749: ILdRf var_9C
  loc_64F74C: FLdRfVar var_8C
  loc_64F74F: CStr2Uni
  loc_64F751: ILdRf var_A4
  loc_64F754: FLdRfVar var_90
  loc_64F757: CStr2Uni
  loc_64F759: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_64F766: LitI4 0
  loc_64F76B: ImpAdCallI2 Chr$()
  loc_64F770: FStStrNoPop var_98
  loc_64F773: LitI2_Byte 1
  loc_64F775: FLdRfVar var_90
  loc_64F778: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_64F77D: FStStrNoPop var_9C
  loc_64F780: FLdI2 var_92
  loc_64F783: CI4UI1
  loc_64F784: FLdPr Me
  loc_64F787: MemLdStr global_96
  loc_64F78A: Ary1StStrCopy
  loc_64F78B: FFreeStr var_98 = ""
  loc_64F792: LitI2_Byte &HFF
  loc_64F794: FLdRfVar var_AC
  loc_64F797: FLdI2 var_92
  loc_64F79A: LitI2_Byte 1
  loc_64F79C: SubI2
  loc_64F79D: FLdPrThis
  loc_64F79E: VCallAd Control_ID_SubMenu0
  loc_64F7A1: FStAdFunc var_A8
  loc_64F7A4: FLdPr var_A8
  loc_64F7A7: Set from_stack_2 = Me(from_stack_1)
  loc_64F7AC: FLdPr var_AC
  loc_64F7AF: Me.Visible = from_stack_1b
  loc_64F7B4: FFreeAd var_A8 = ""
  loc_64F7BB: ILdRf var_8C
  loc_64F7BE: FLdRfVar var_AC
  loc_64F7C1: FLdI2 var_92
  loc_64F7C4: LitI2_Byte 1
  loc_64F7C6: SubI2
  loc_64F7C7: FLdPrThis
  loc_64F7C8: VCallAd Control_ID_SubMenu0
  loc_64F7CB: FStAdFunc var_A8
  loc_64F7CE: FLdPr var_A8
  loc_64F7D1: Set from_stack_2 = Me(from_stack_1)
  loc_64F7D6: FLdPr var_AC
  loc_64F7D9: Me.Caption = from_stack_1
  loc_64F7DE: FFreeAd var_A8 = ""
  loc_64F7E5: FLdI2 var_92
  loc_64F7E8: LitI2_Byte 1
  loc_64F7EA: AddI2
  loc_64F7EB: FStI2 var_92
  loc_64F7EE: LitI4 0
  loc_64F7F3: ImpAdCallI2 Chr$()
  loc_64F7F8: FStStrNoPop var_98
  loc_64F7FB: FLdI2 var_92
  loc_64F7FE: FLdRfVar var_88
  loc_64F801: ImpAdCallI2 Proc_81_0_5FA2C0(, , )
  loc_64F806: FStStr var_8C
  loc_64F809: FFree1Str var_98
  loc_64F80C: Branch loc_64F6B6
  loc_64F80F: FLdI2 var_92
  loc_64F812: LitI2_Byte &HA
  loc_64F814: LeI2
  loc_64F815: BranchF loc_64F84D
  loc_64F818: LitI2_Byte 0
  loc_64F81A: FLdRfVar var_AC
  loc_64F81D: FLdI2 var_92
  loc_64F820: LitI2_Byte 1
  loc_64F822: SubI2
  loc_64F823: FLdPrThis
  loc_64F824: VCallAd Control_ID_SubMenu0
  loc_64F827: FStAdFunc var_A8
  loc_64F82A: FLdPr var_A8
  loc_64F82D: Set from_stack_2 = Me(from_stack_1)
  loc_64F832: FLdPr var_AC
  loc_64F835: Me.Visible = from_stack_1b
  loc_64F83A: FFreeAd var_A8 = ""
  loc_64F841: FLdI2 var_92
  loc_64F844: LitI2_Byte 1
  loc_64F846: AddI2
  loc_64F847: FStI2 var_92
  loc_64F84A: Branch loc_64F80F
  loc_64F84D: ExitProcHresult
End Function

Private Function Proc_162_236_66EA20(arg_C, arg_10) '66EA20
  'Data Table: 460894
  loc_66E634: LitI4 &HC
  loc_66E639: FStR4 var_AC
  loc_66E63C: LitI4 &H2904
  loc_66E641: FStR4 var_98
  loc_66E644: LitI4 &H3A98
  loc_66E649: FStR4 var_9C
  loc_66E64C: LitI4 &H3E8
  loc_66E651: FStR4 var_A0
  loc_66E654: LitI4 &H1964
  loc_66E659: FStR4 var_A4
  loc_66E65C: LitI4 &H1964
  loc_66E661: FStR4 var_A4
  loc_66E664: LitI4 &HFA
  loc_66E669: FStR4 var_A8
  loc_66E66C: LitI4 &H2346
  loc_66E671: FStR4 var_B0
  loc_66E674: LitI4 &HA
  loc_66E679: FStR4 var_B4
  loc_66E67C: LitI4 &H384
  loc_66E681: FStR4 var_B8
  loc_66E684: ILdRf var_AC
  loc_66E687: CR8I4
  loc_66E688: CVarR4
  loc_66E68C: PopAdLdVar
  loc_66E68D: FLdRfVar var_BC
  loc_66E690: ImpAdLdRf MemVar_7520D4
  loc_66E693: NewIfNullPr Global
  loc_66E696:  = Global.Printer
  loc_66E69B: FLdPr var_BC
  loc_66E69E: LateIdSt
  loc_66E6A3: FFree1Ad var_BC
  loc_66E6A6: ILdRf var_A0
  loc_66E6A9: CR8I4
  loc_66E6AA: CVarR4
  loc_66E6AE: PopAdLdVar
  loc_66E6AF: FLdRfVar var_BC
  loc_66E6B2: ImpAdLdRf MemVar_7520D4
  loc_66E6B5: NewIfNullPr Global
  loc_66E6B8:  = Global.Printer
  loc_66E6BD: FLdPr var_BC
  loc_66E6C0: LateIdSt
  loc_66E6C5: FFree1Ad var_BC
  loc_66E6C8: ILdRf var_A8
  loc_66E6CB: CR8I4
  loc_66E6CC: CVarR4
  loc_66E6D0: PopAdLdVar
  loc_66E6D1: FLdRfVar var_BC
  loc_66E6D4: ImpAdLdRf MemVar_7520D4
  loc_66E6D7: NewIfNullPr Global
  loc_66E6DA:  = Global.Printer
  loc_66E6DF: FLdPr var_BC
  loc_66E6E2: LateIdSt
  loc_66E6E7: FFree1Ad var_BC
  loc_66E6EA: FLdRfVar var_BC
  loc_66E6ED: ImpAdLdRf MemVar_7520D4
  loc_66E6F0: NewIfNullPr Global
  loc_66E6F3:  = Global.Printer
  loc_66E6F8: LitStr "Menu"
  loc_66E6FB: ILdRf var_BC
  loc_66E6FE: PrintObject
  loc_66E704: FFree1Ad var_BC
  loc_66E707: ILdRf var_A4
  loc_66E70A: CR8I4
  loc_66E70B: CVarR4
  loc_66E70F: PopAdLdVar
  loc_66E710: FLdRfVar var_BC
  loc_66E713: ImpAdLdRf MemVar_7520D4
  loc_66E716: NewIfNullPr Global
  loc_66E719:  = Global.Printer
  loc_66E71E: FLdPr var_BC
  loc_66E721: LateIdSt
  loc_66E726: FFree1Ad var_BC
  loc_66E729: ILdRf var_A8
  loc_66E72C: CR8I4
  loc_66E72D: CVarR4
  loc_66E731: PopAdLdVar
  loc_66E732: FLdRfVar var_BC
  loc_66E735: ImpAdLdRf MemVar_7520D4
  loc_66E738: NewIfNullPr Global
  loc_66E73B:  = Global.Printer
  loc_66E740: FLdPr var_BC
  loc_66E743: LateIdSt
  loc_66E748: FFree1Ad var_BC
  loc_66E74B: FLdRfVar var_BC
  loc_66E74E: ImpAdLdRf MemVar_7520D4
  loc_66E751: NewIfNullPr Global
  loc_66E754:  = Global.Printer
  loc_66E759: LitStr "Nivel de seguridad"
  loc_66E75C: ILdRf var_BC
  loc_66E75F: PrintObject
  loc_66E765: FFree1Ad var_BC
  loc_66E768: LitVarI2 var_CC, 4
  loc_66E76D: PopAdLdVar
  loc_66E76E: ILdRf var_A0
  loc_66E771: CR8I4
  loc_66E772: CVarR4
  loc_66E776: PopAdLdVar
  loc_66E777: FLdRfVar var_BC
  loc_66E77A: ImpAdLdRf MemVar_7520D4
  loc_66E77D: NewIfNullPr Global
  loc_66E780:  = Global.Printer
  loc_66E785: FLdPr var_BC
  loc_66E788: LateIdLdVar var_DC DispID_11 1
  loc_66E78F: CR8Var
  loc_66E791: CVarR4
  loc_66E795: PopAdLdVar
  loc_66E796: ILdRf var_B0
  loc_66E799: CR8I4
  loc_66E79A: CVarR4
  loc_66E79E: PopAdLdVar
  loc_66E79F: FLdRfVar var_E0
  loc_66E7A2: ImpAdLdRf MemVar_7520D4
  loc_66E7A5: NewIfNullPr Global
  loc_66E7A8:  = Global.Printer
  loc_66E7AD: FLdPr var_E0
  loc_66E7B0: LateIdLdVar var_F0 DispID_11 1
  loc_66E7B7: CR8Var
  loc_66E7B9: CVarR4
  loc_66E7BD: PopAdLdVar
  loc_66E7BE: LitVarI4
  loc_66E7C6: PopAdLdVar
  loc_66E7C7: FLdRfVar var_F4
  loc_66E7CA: ImpAdLdRf MemVar_7520D4
  loc_66E7CD: NewIfNullPr Global
  loc_66E7D0:  = Global.Printer
  loc_66E7D5: FLdPr var_F4
  loc_66E7D8: LateIdCall
  loc_66E7E0: FFreeAd var_BC = "": var_E0 = ""
  loc_66E7E9: FFreeVar var_DC = ""
  loc_66E7F0: ILdRf var_B4
  loc_66E7F3: CR8I4
  loc_66E7F4: CVarR4
  loc_66E7F8: PopAdLdVar
  loc_66E7F9: FLdRfVar var_BC
  loc_66E7FC: ImpAdLdRf MemVar_7520D4
  loc_66E7FF: NewIfNullPr Global
  loc_66E802:  = Global.Printer
  loc_66E807: FLdPr var_BC
  loc_66E80A: LateIdSt
  loc_66E80F: FFree1Ad var_BC
  loc_66E812: ILdRf var_B8
  loc_66E815: CR8I4
  loc_66E816: CVarR4
  loc_66E81A: PopAdLdVar
  loc_66E81B: FLdRfVar var_BC
  loc_66E81E: ImpAdLdRf MemVar_7520D4
  loc_66E821: NewIfNullPr Global
  loc_66E824:  = Global.Printer
  loc_66E829: FLdPr var_BC
  loc_66E82C: LateIdSt
  loc_66E831: FFree1Ad var_BC
  loc_66E834: ILdI4 arg_C
  loc_66E837: CI2I4
  loc_66E838: FLdRfVar var_8E
  loc_66E83B: ILdI4 arg_10
  loc_66E83E: CI2I4
  loc_66E83F: ForI2 var_148
  loc_66E845: FLdRfVar var_BC
  loc_66E848: ImpAdLdRf MemVar_7520D4
  loc_66E84B: NewIfNullPr Global
  loc_66E84E:  = Global.Printer
  loc_66E853: FLdPr var_BC
  loc_66E856: LateIdLdVar var_DC DispID_11 1
  loc_66E85D: CR8Var
  loc_66E85F: CI4R8
  loc_66E860: FStR4 var_94
  loc_66E863: FFree1Ad var_BC
  loc_66E866: FFree1Var var_DC = ""
  loc_66E869: ILdRf var_A0
  loc_66E86C: CR8I4
  loc_66E86D: CVarR4
  loc_66E871: PopAdLdVar
  loc_66E872: FLdRfVar var_BC
  loc_66E875: ImpAdLdRf MemVar_7520D4
  loc_66E878: NewIfNullPr Global
  loc_66E87B:  = Global.Printer
  loc_66E880: FLdPr var_BC
  loc_66E883: LateIdSt
  loc_66E888: FFree1Ad var_BC
  loc_66E88B: FLdRfVar var_14C
  loc_66E88E: FLdRfVar var_8E
  loc_66E891: ImpAdLdRf MemVar_74A21C
  loc_66E894: NewIfNullPr clsSecurity
  loc_66E897: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_66E89C: FLdZeroAd var_14C
  loc_66E89F: FStStr var_88
  loc_66E8A2: FLdRfVar var_BC
  loc_66E8A5: ImpAdLdRf MemVar_7520D4
  loc_66E8A8: NewIfNullPr Global
  loc_66E8AB:  = Global.Printer
  loc_66E8B0: ILdRf var_88
  loc_66E8B3: ILdRf var_BC
  loc_66E8B6: PrintObject
  loc_66E8BC: FFree1Ad var_BC
  loc_66E8BF: ILdRf var_94
  loc_66E8C2: CR8I4
  loc_66E8C3: CVarR4
  loc_66E8C7: PopAdLdVar
  loc_66E8C8: FLdRfVar var_BC
  loc_66E8CB: ImpAdLdRf MemVar_7520D4
  loc_66E8CE: NewIfNullPr Global
  loc_66E8D1:  = Global.Printer
  loc_66E8D6: FLdPr var_BC
  loc_66E8D9: LateIdSt
  loc_66E8DE: FFree1Ad var_BC
  loc_66E8E1: ILdRf var_A4
  loc_66E8E4: CR8I4
  loc_66E8E5: CVarR4
  loc_66E8E9: PopAdLdVar
  loc_66E8EA: FLdRfVar var_BC
  loc_66E8ED: ImpAdLdRf MemVar_7520D4
  loc_66E8F0: NewIfNullPr Global
  loc_66E8F3:  = Global.Printer
  loc_66E8F8: FLdPr var_BC
  loc_66E8FB: LateIdSt
  loc_66E900: FFree1Ad var_BC
  loc_66E903: FLdRfVar var_14C
  loc_66E906: FLdRfVar var_14E
  loc_66E909: FLdRfVar var_8E
  loc_66E90C: ImpAdLdRf MemVar_74A21C
  loc_66E90F: NewIfNullPr clsSecurity
  loc_66E917: FLdUI1
  loc_66E91B: CI2UI1
  loc_66E91D: LitI2_Byte 1
  loc_66E91F: AddI2
  loc_66E920: PopTmpLdAd2 var_150
  loc_66E923: ImpAdLdRf MemVar_74A218
  loc_66E926: NewIfNullPr clsUsers
  loc_66E929: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_66E92E: FLdZeroAd var_14C
  loc_66E931: FStStr var_88
  loc_66E934: FLdRfVar var_BC
  loc_66E937: ImpAdLdRf MemVar_7520D4
  loc_66E93A: NewIfNullPr Global
  loc_66E93D:  = Global.Printer
  loc_66E942: ILdRf var_88
  loc_66E945: ILdRf var_BC
  loc_66E948: PrintObject
  loc_66E94E: FFree1Ad var_BC
  loc_66E951: FLdRfVar var_8E
  loc_66E954: NextI2 var_148, loc_66E845
  loc_66E959: ILdRf var_9C
  loc_66E95C: CR8I4
  loc_66E95D: CVarR4
  loc_66E961: PopAdLdVar
  loc_66E962: FLdRfVar var_BC
  loc_66E965: ImpAdLdRf MemVar_7520D4
  loc_66E968: NewIfNullPr Global
  loc_66E96B:  = Global.Printer
  loc_66E970: FLdPr var_BC
  loc_66E973: LateIdSt
  loc_66E978: FFree1Ad var_BC
  loc_66E97B: ILdRf var_98
  loc_66E97E: CR8I4
  loc_66E97F: CVarR4
  loc_66E983: PopAdLdVar
  loc_66E984: FLdRfVar var_BC
  loc_66E987: ImpAdLdRf MemVar_7520D4
  loc_66E98A: NewIfNullPr Global
  loc_66E98D:  = Global.Printer
  loc_66E992: FLdPr var_BC
  loc_66E995: LateIdSt
  loc_66E99A: FFree1Ad var_BC
  loc_66E99D: LitVarStr var_104, "Pagina : "
  loc_66E9A2: FLdRfVar var_BC
  loc_66E9A5: ImpAdLdRf MemVar_7520D4
  loc_66E9A8: NewIfNullPr Global
  loc_66E9AB:  = Global.Printer
  loc_66E9B0: FLdPr var_BC
  loc_66E9B3: LateIdLdVar var_DC DispID_23 1
  loc_66E9BA: CI2Var
  loc_66E9BB: CVarI2 var_F0
  loc_66E9BE: FLdRfVar var_160
  loc_66E9C1: ImpAdCallFPR4  = Str()
  loc_66E9C6: FLdRfVar var_160
  loc_66E9C9: ConcatVar var_170
  loc_66E9CD: CStrVarTmp
  loc_66E9CE: FStStr var_8C
  loc_66E9D1: FFree1Ad var_BC
  loc_66E9D4: FFreeVar var_DC = "": var_F0 = "": var_160 = ""
  loc_66E9DF: FLdRfVar var_BC
  loc_66E9E2: ImpAdLdRf MemVar_7520D4
  loc_66E9E5: NewIfNullPr Global
  loc_66E9E8:  = Global.Printer
  loc_66E9ED: ILdRf var_8C
  loc_66E9F0: ILdRf var_BC
  loc_66E9F3: PrintObject
  loc_66E9F9: FFree1Ad var_BC
  loc_66E9FC: ILdRf var_94
  loc_66E9FF: CR8I4
  loc_66EA00: CVarR4
  loc_66EA04: PopAdLdVar
  loc_66EA05: FLdRfVar var_BC
  loc_66EA08: ImpAdLdRf MemVar_7520D4
  loc_66EA0B: NewIfNullPr Global
  loc_66EA0E:  = Global.Printer
  loc_66EA13: FLdPr var_BC
  loc_66EA16: LateIdSt
  loc_66EA1B: FFree1Ad var_BC
  loc_66EA1E: ExitProcHresult
End Function

Private Function Proc_162_237_6D3630(arg_18) '6D3630
  'Data Table: 460894
  loc_6D2C2C: FLdRfVar var_BA
  loc_6D2C2F: FLdRfVar var_94
  loc_6D2C32: FLdRfVar var_B8
  loc_6D2C35: ImpAdLdRf MemVar_74C760
  loc_6D2C38: NewIfNullPr Formx
  loc_6D2C3B: from_stack_1v = Formx.global_4589716Get()
  loc_6D2C40: FLdPr var_B8
  loc_6D2C43:  = Formx.Picture
  loc_6D2C48: FLdI2 var_BA
  loc_6D2C4B: NotI4
  loc_6D2C4C: FFree1Ad var_B8
  loc_6D2C4F: BranchF loc_6D2C7E
  loc_6D2C52: FLdRfVar var_CC
  loc_6D2C55: ImpAdCallFPR4  = Proc_6_0_5DBEC8()
  loc_6D2C5A: FLdRfVar var_CC
  loc_6D2C5D: CBoolVarNull
  loc_6D2C5F: FFree1Var var_CC = ""
  loc_6D2C62: BranchF loc_6D2C7B
  loc_6D2C65: ILdRf Me
  loc_6D2C68: FStAdNoPop
  loc_6D2C6C: ImpAdLdRf MemVar_7520D4
  loc_6D2C6F: NewIfNullPr Global
  loc_6D2C72: Global.Unload from_stack_1
  loc_6D2C77: FFree1Ad var_B8
  loc_6D2C7A: ExitProcHresult
  loc_6D2C7B: Branch loc_6D2C2C
  loc_6D2C7E: LitStr "Courier New"
  loc_6D2C81: ILdPr
  loc_6D2C84: Reset
  loc_6D2C89: LitI2_Byte 8
  loc_6D2C8B: CR8I2
  loc_6D2C8C: PopFPR4
  loc_6D2C8D: ILdPr
  loc_6D2C95: FLdRfVar var_208
  loc_6D2C98: LitVar_Missing var_204
  loc_6D2C9B: LitVar_Missing var_1E4
  loc_6D2C9E: LitVar_Missing var_1C4
  loc_6D2CA1: LitVar_Missing var_1A4
  loc_6D2CA4: LitVar_Missing var_184
  loc_6D2CA7: LitVar_Missing var_164
  loc_6D2CAA: LitVar_Missing var_144
  loc_6D2CAD: LitVar_Missing var_124
  loc_6D2CB0: LitVar_Missing var_104
  loc_6D2CB3: LitVar_Missing var_CC
  loc_6D2CB6: LitStr "Fecha de emisión:"
  loc_6D2CB9: FStStrCopy var_D4
  loc_6D2CBC: FLdRfVar var_D4
  loc_6D2CBF: LitI4 &HA4
  loc_6D2CC4: PopTmpLdAdStr var_D0
  loc_6D2CC7: LitI2_Byte &HA
  loc_6D2CC9: PopTmpLdAd2 var_BA
  loc_6D2CCC: ImpAdLdRf MemVar_74C7D0
  loc_6D2CCF: NewIfNullPr clsMsg
  loc_6D2CD2: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2CD7: ILdRf var_208
  loc_6D2CDA: FLdPr Me
  loc_6D2CDD: MemStStrCopy
  loc_6D2CE1: FFreeStr var_D4 = ""
  loc_6D2CE8: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2CFF: FLdRfVar var_208
  loc_6D2D02: LitVar_Missing var_204
  loc_6D2D05: LitVar_Missing var_1E4
  loc_6D2D08: LitVar_Missing var_1C4
  loc_6D2D0B: LitVar_Missing var_1A4
  loc_6D2D0E: LitVar_Missing var_184
  loc_6D2D11: LitVar_Missing var_164
  loc_6D2D14: LitVar_Missing var_144
  loc_6D2D17: LitVar_Missing var_124
  loc_6D2D1A: LitVar_Missing var_104
  loc_6D2D1D: LitVar_Missing var_CC
  loc_6D2D20: LitStr "Hora de emisión:"
  loc_6D2D23: FStStrCopy var_D4
  loc_6D2D26: FLdRfVar var_D4
  loc_6D2D29: LitI4 &HA5
  loc_6D2D2E: PopTmpLdAdStr var_D0
  loc_6D2D31: LitI2_Byte &HA
  loc_6D2D33: PopTmpLdAd2 var_BA
  loc_6D2D36: ImpAdLdRf MemVar_74C7D0
  loc_6D2D39: NewIfNullPr clsMsg
  loc_6D2D3C: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2D41: ILdRf var_208
  loc_6D2D44: FLdPr Me
  loc_6D2D47: MemStStrCopy
  loc_6D2D4B: FFreeStr var_D4 = ""
  loc_6D2D52: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2D69: FLdRfVar var_208
  loc_6D2D6C: LitVar_Missing var_204
  loc_6D2D6F: LitVar_Missing var_1E4
  loc_6D2D72: LitVar_Missing var_1C4
  loc_6D2D75: LitVar_Missing var_1A4
  loc_6D2D78: LitVar_Missing var_184
  loc_6D2D7B: LitVar_Missing var_164
  loc_6D2D7E: LitVar_Missing var_144
  loc_6D2D81: LitVar_Missing var_124
  loc_6D2D84: LitVar_Missing var_104
  loc_6D2D87: LitVar_Missing var_CC
  loc_6D2D8A: LitStr "Número de agencia :"
  loc_6D2D8D: FStStrCopy var_D4
  loc_6D2D90: FLdRfVar var_D4
  loc_6D2D93: LitI4 &HA6
  loc_6D2D98: PopTmpLdAdStr var_D0
  loc_6D2D9B: LitI2_Byte &HA
  loc_6D2D9D: PopTmpLdAd2 var_BA
  loc_6D2DA0: ImpAdLdRf MemVar_74C7D0
  loc_6D2DA3: NewIfNullPr clsMsg
  loc_6D2DA6: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2DAB: ILdRf var_208
  loc_6D2DAE: FLdPr Me
  loc_6D2DB1: MemStStrCopy
  loc_6D2DB5: FFreeStr var_D4 = ""
  loc_6D2DBC: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2DD3: FLdRfVar var_208
  loc_6D2DD6: LitVar_Missing var_204
  loc_6D2DD9: LitVar_Missing var_1E4
  loc_6D2DDC: LitVar_Missing var_1C4
  loc_6D2DDF: LitVar_Missing var_1A4
  loc_6D2DE2: LitVar_Missing var_184
  loc_6D2DE5: LitVar_Missing var_164
  loc_6D2DE8: LitVar_Missing var_144
  loc_6D2DEB: LitVar_Missing var_124
  loc_6D2DEE: LitVar_Missing var_104
  loc_6D2DF1: LitVar_Missing var_CC
  loc_6D2DF4: LitStr "Razón social :"
  loc_6D2DF7: FStStrCopy var_D4
  loc_6D2DFA: FLdRfVar var_D4
  loc_6D2DFD: LitI4 &HA7
  loc_6D2E02: PopTmpLdAdStr var_D0
  loc_6D2E05: LitI2_Byte &HA
  loc_6D2E07: PopTmpLdAd2 var_BA
  loc_6D2E0A: ImpAdLdRf MemVar_74C7D0
  loc_6D2E0D: NewIfNullPr clsMsg
  loc_6D2E10: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2E15: ILdRf var_208
  loc_6D2E18: FLdPr Me
  loc_6D2E1B: MemStStrCopy
  loc_6D2E1F: FFreeStr var_D4 = ""
  loc_6D2E26: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2E3D: FLdRfVar var_208
  loc_6D2E40: LitVar_Missing var_204
  loc_6D2E43: LitVar_Missing var_1E4
  loc_6D2E46: LitVar_Missing var_1C4
  loc_6D2E49: LitVar_Missing var_1A4
  loc_6D2E4C: LitVar_Missing var_184
  loc_6D2E4F: LitVar_Missing var_164
  loc_6D2E52: LitVar_Missing var_144
  loc_6D2E55: LitVar_Missing var_124
  loc_6D2E58: LitVar_Missing var_104
  loc_6D2E5B: LitVar_Missing var_CC
  loc_6D2E5E: LitStr "Datos de la estación :"
  loc_6D2E61: FStStrCopy var_D4
  loc_6D2E64: FLdRfVar var_D4
  loc_6D2E67: LitI4 &HA8
  loc_6D2E6C: PopTmpLdAdStr var_D0
  loc_6D2E6F: LitI2_Byte &HA
  loc_6D2E71: PopTmpLdAd2 var_BA
  loc_6D2E74: ImpAdLdRf MemVar_74C7D0
  loc_6D2E77: NewIfNullPr clsMsg
  loc_6D2E7A: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2E7F: ILdRf var_208
  loc_6D2E82: FLdPr Me
  loc_6D2E85: MemStStrCopy
  loc_6D2E89: FFreeStr var_D4 = ""
  loc_6D2E90: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2EA7: FLdRfVar var_208
  loc_6D2EAA: LitVar_Missing var_204
  loc_6D2EAD: LitVar_Missing var_1E4
  loc_6D2EB0: LitVar_Missing var_1C4
  loc_6D2EB3: LitVar_Missing var_1A4
  loc_6D2EB6: LitVar_Missing var_184
  loc_6D2EB9: LitVar_Missing var_164
  loc_6D2EBC: LitVar_Missing var_144
  loc_6D2EBF: LitVar_Missing var_124
  loc_6D2EC2: LitVar_Missing var_104
  loc_6D2EC5: LitVar_Missing var_CC
  loc_6D2EC8: LitStr "Reporte de Seguridad"
  loc_6D2ECB: FStStrCopy var_D4
  loc_6D2ECE: FLdRfVar var_D4
  loc_6D2ED1: LitI4 &HA9
  loc_6D2ED6: PopTmpLdAdStr var_D0
  loc_6D2ED9: LitI2_Byte &HA
  loc_6D2EDB: PopTmpLdAd2 var_BA
  loc_6D2EDE: ImpAdLdRf MemVar_74C7D0
  loc_6D2EE1: NewIfNullPr clsMsg
  loc_6D2EE4: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2EE9: ILdRf var_208
  loc_6D2EEC: FLdPr Me
  loc_6D2EEF: MemStStrCopy
  loc_6D2EF3: FFreeStr var_D4 = ""
  loc_6D2EFA: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2F11: FLdRfVar var_208
  loc_6D2F14: LitVar_Missing var_204
  loc_6D2F17: LitVar_Missing var_1E4
  loc_6D2F1A: LitVar_Missing var_1C4
  loc_6D2F1D: LitVar_Missing var_1A4
  loc_6D2F20: LitVar_Missing var_184
  loc_6D2F23: LitVar_Missing var_164
  loc_6D2F26: LitVar_Missing var_144
  loc_6D2F29: LitVar_Missing var_124
  loc_6D2F2C: LitVar_Missing var_104
  loc_6D2F2F: LitVar_Missing var_CC
  loc_6D2F32: LitStr "Nombre del menu"
  loc_6D2F35: FStStrCopy var_D4
  loc_6D2F38: FLdRfVar var_D4
  loc_6D2F3B: LitI4 &HAA
  loc_6D2F40: PopTmpLdAdStr var_D0
  loc_6D2F43: LitI2_Byte &HA
  loc_6D2F45: PopTmpLdAd2 var_BA
  loc_6D2F48: ImpAdLdRf MemVar_74C7D0
  loc_6D2F4B: NewIfNullPr clsMsg
  loc_6D2F4E: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2F53: ILdRf var_208
  loc_6D2F56: FLdPr Me
  loc_6D2F59: MemStStrCopy
  loc_6D2F5D: FFreeStr var_D4 = ""
  loc_6D2F64: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2F7B: FLdRfVar var_208
  loc_6D2F7E: LitVar_Missing var_204
  loc_6D2F81: LitVar_Missing var_1E4
  loc_6D2F84: LitVar_Missing var_1C4
  loc_6D2F87: LitVar_Missing var_1A4
  loc_6D2F8A: LitVar_Missing var_184
  loc_6D2F8D: LitVar_Missing var_164
  loc_6D2F90: LitVar_Missing var_144
  loc_6D2F93: LitVar_Missing var_124
  loc_6D2F96: LitVar_Missing var_104
  loc_6D2F99: LitVar_Missing var_CC
  loc_6D2F9C: LitStr "Nivel de seguridad"
  loc_6D2F9F: FStStrCopy var_D4
  loc_6D2FA2: FLdRfVar var_D4
  loc_6D2FA5: LitI4 &HAB
  loc_6D2FAA: PopTmpLdAdStr var_D0
  loc_6D2FAD: LitI2_Byte &HA
  loc_6D2FAF: PopTmpLdAd2 var_BA
  loc_6D2FB2: ImpAdLdRf MemVar_74C7D0
  loc_6D2FB5: NewIfNullPr clsMsg
  loc_6D2FB8: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D2FBD: ILdRf var_208
  loc_6D2FC0: FLdPr Me
  loc_6D2FC3: MemStStrCopy
  loc_6D2FC7: FFreeStr var_D4 = ""
  loc_6D2FCE: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D2FE5: FLdRfVar var_208
  loc_6D2FE8: LitVar_Missing var_204
  loc_6D2FEB: LitVar_Missing var_1E4
  loc_6D2FEE: LitVar_Missing var_1C4
  loc_6D2FF1: LitVar_Missing var_1A4
  loc_6D2FF4: LitVar_Missing var_184
  loc_6D2FF7: LitVar_Missing var_164
  loc_6D2FFA: LitVar_Missing var_144
  loc_6D2FFD: LitVar_Missing var_124
  loc_6D3000: LitVar_Missing var_104
  loc_6D3003: LitVar_Missing var_CC
  loc_6D3006: LitStr "Fin del reporte de seguridad."
  loc_6D3009: FStStrCopy var_D4
  loc_6D300C: FLdRfVar var_D4
  loc_6D300F: LitI4 &HAC
  loc_6D3014: PopTmpLdAdStr var_D0
  loc_6D3017: LitI2_Byte &HA
  loc_6D3019: PopTmpLdAd2 var_BA
  loc_6D301C: ImpAdLdRf MemVar_74C7D0
  loc_6D301F: NewIfNullPr clsMsg
  loc_6D3022: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D3027: ILdRf var_208
  loc_6D302A: FLdPr Me
  loc_6D302D: MemStStrCopy
  loc_6D3031: FFreeStr var_D4 = ""
  loc_6D3038: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = ""
  loc_6D304F: FLdRfVar var_CC
  loc_6D3052: ImpAdCallFPR4  = Date
  loc_6D3057: LitI4 1
  loc_6D305C: LitI4 1
  loc_6D3061: LitVarStr var_E4, "dd/mm/yyyy"
  loc_6D3066: FStVarCopyObj var_104
  loc_6D3069: FLdRfVar var_104
  loc_6D306C: FLdRfVar var_CC
  loc_6D306F: ImpAdCallI2 Format$(, )
  loc_6D3074: FStStr var_230
  loc_6D3077: LitVarStr var_F4, " "
  loc_6D307C: FStVarCopyObj var_124
  loc_6D307F: FLdRfVar var_124
  loc_6D3082: LitI4 5
  loc_6D3087: FLdRfVar var_144
  loc_6D308A: ImpAdCallFPR4  = String(, )
  loc_6D308F: FLdRfVar var_1E4
  loc_6D3092: ImpAdCallFPR4  = Time
  loc_6D3097: LitI4 1
  loc_6D309C: LitI4 1
  loc_6D30A1: LitVarStr var_154, "hh:mm:ss"
  loc_6D30A6: FStVarCopyObj var_204
  loc_6D30A9: FLdRfVar var_204
  loc_6D30AC: FLdRfVar var_1E4
  loc_6D30AF: ImpAdCallI2 Format$(, )
  loc_6D30B4: FStStr var_234
  loc_6D30B7: FLdRfVar var_BA
  loc_6D30BA: ILdRf arg_18
  loc_6D30BD: FLdPr Me
  loc_6D30C0: MemLdStr sSeccionesSeleccionadas48
  loc_6D30C3: LitStr " "
  loc_6D30C6: ConcatStr
  loc_6D30C7: FStStrNoPop var_D4
  loc_6D30CA: FLdZeroAd var_230
  loc_6D30CD: FStStrNoPop var_208
  loc_6D30D0: ConcatStr
  loc_6D30D1: CVarStr var_164
  loc_6D30D4: FLdRfVar var_144
  loc_6D30D7: ConcatVar var_184
  loc_6D30DB: FLdPr Me
  loc_6D30DE: MemLdStr sSeccionesSeleccionadas52
  loc_6D30E1: CVarStr var_114
  loc_6D30E4: ConcatVar var_1A4
  loc_6D30E8: LitVarStr var_134, " "
  loc_6D30ED: ConcatVar var_1C4
  loc_6D30F1: FLdZeroAd var_234
  loc_6D30F4: CVarStr var_218
  loc_6D30F7: ConcatVar var_228
  loc_6D30FB: CStrVarTmp
  loc_6D30FC: PopTmpLdAdStr
  loc_6D3100: ILdPr
  loc_6D3103:  = Me.hWnd
  loc_6D3108: FFreeStr var_D4 = "": var_208 = "": var_22C = "": var_230 = ""
  loc_6D3115: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_164 = "": var_144 = "": var_184 = "": var_1A4 = "": var_1E4 = "": var_204 = "": var_1C4 = "": var_218 = ""
  loc_6D3130: LitVarI2 var_CC, 6
  loc_6D3135: LitI4 1
  loc_6D313A: FLdRfVar var_94
  loc_6D313D: CVarRef
  loc_6D3142: FLdRfVar var_104
  loc_6D3145: ImpAdCallFPR4  = Mid(, , )
  loc_6D314A: LitVarI2 var_1C4, 30
  loc_6D314F: LitI4 7
  loc_6D3154: FLdRfVar var_94
  loc_6D3157: CVarRef
  loc_6D315C: FLdRfVar var_1E4
  loc_6D315F: ImpAdCallFPR4  = Mid(, , )
  loc_6D3164: FLdRfVar var_1E4
  loc_6D3167: FLdRfVar var_204
  loc_6D316A: ImpAdCallFPR4  = Trim()
  loc_6D316F: LitVarI2 var_284, 40
  loc_6D3174: LitI4 &H25
  loc_6D3179: FLdRfVar var_94
  loc_6D317C: CVarRef
  loc_6D3181: FLdRfVar var_294
  loc_6D3184: ImpAdCallFPR4  = Mid(, , )
  loc_6D3189: FLdRfVar var_294
  loc_6D318C: FLdRfVar var_2A4
  loc_6D318F: ImpAdCallFPR4  = Trim()
  loc_6D3194: FLdRfVar var_BA
  loc_6D3197: ILdRf arg_18
  loc_6D319A: FLdPr Me
  loc_6D319D: MemLdStr sSeccionesSeleccionadas56
  loc_6D31A0: LitStr " "
  loc_6D31A3: ConcatStr
  loc_6D31A4: CVarStr var_124
  loc_6D31A7: FLdRfVar var_104
  loc_6D31AA: ConcatVar var_144
  loc_6D31AE: LitVarStr var_114, " "
  loc_6D31B3: ConcatVar var_164
  loc_6D31B7: FLdPr Me
  loc_6D31BA: MemLdStr sSeccionesSeleccionadas60
  loc_6D31BD: CVarStr var_134
  loc_6D31C0: ConcatVar var_184
  loc_6D31C4: LitVarStr var_154, " "
  loc_6D31C9: ConcatVar var_1A4
  loc_6D31CD: FLdRfVar var_204
  loc_6D31D0: ConcatVar var_218
  loc_6D31D4: LitVarStr var_1B4, " "
  loc_6D31D9: ConcatVar var_228
  loc_6D31DD: FLdPr Me
  loc_6D31E0: MemLdStr sSeccionesSeleccionadas80
  loc_6D31E3: CVarStr var_1D4
  loc_6D31E6: ConcatVar var_244
  loc_6D31EA: LitVarStr var_1F4, " "
  loc_6D31EF: ConcatVar var_254
  loc_6D31F3: FLdRfVar var_2A4
  loc_6D31F6: ConcatVar var_2B4
  loc_6D31FA: CStrVarTmp
  loc_6D31FB: PopTmpLdAdStr
  loc_6D31FF: ILdPr
  loc_6D3202:  = Me.hWnd
  loc_6D3207: FFree1Str var_D4
  loc_6D320A: FFreeVar var_CC = "": var_124 = "": var_104 = "": var_144 = "": var_164 = "": var_184 = "": var_1C4 = "": var_1E4 = "": var_1A4 = "": var_204 = "": var_218 = "": var_228 = "": var_244 = "": var_284 = "": var_294 = "": var_254 = "": var_2A4 = ""
  loc_6D3231: LitVarI2 var_CC, 1
  loc_6D3236: LitI4 &HC
  loc_6D323B: ImpAdLdI4 MemVar_74BEAC
  loc_6D323E: ImpAdCallI2 Mid$(, , )
  loc_6D3243: FStStrNoPop var_D4
  loc_6D3246: LitStr "1"
  loc_6D3249: EqStr
  loc_6D324B: FFree1Str var_D4
  loc_6D324E: FFree1Var var_CC = ""
  loc_6D3251: BranchF loc_6D32B9
  loc_6D3254: FLdRfVar var_D4
  loc_6D3257: FLdRfVar var_B8
  loc_6D325A: ImpAdLdRf MemVar_7520D4
  loc_6D325D: NewIfNullPr Global
  loc_6D3260:  = Global.App
  loc_6D3265: FLdPr var_B8
  loc_6D3268:  = App.Path
  loc_6D326D: FLdRfVar var_BA
  loc_6D3270: LitDate 13.22918
  loc_6D3279: PopTmpLdAdFPR4
  loc_6D327D: LitDate 26.72294
  loc_6D3286: PopTmpLdAdFPR4
  loc_6D328A: LitI2_Byte &H14
  loc_6D328C: CR8I2
  loc_6D328D: PopTmpLdAdFPR4
  loc_6D3291: LitI2 160
  loc_6D3294: CR8I2
  loc_6D3295: PopTmpLdAdFPR4
  loc_6D3299: ILdRf var_D4
  loc_6D329C: LitStr "\Logo_Proyecto.bmp"
  loc_6D329F: ConcatStr
  loc_6D32A0: PopTmpLdAdStr
  loc_6D32A4: ILdPr
  loc_6D32A7: Me.BackColor = from_stack_1
  loc_6D32AC: FFreeStr var_D4 = ""
  loc_6D32B3: FFree1Ad var_B8
  loc_6D32B6: Branch loc_6D331B
  loc_6D32B9: FLdRfVar var_D4
  loc_6D32BC: FLdRfVar var_B8
  loc_6D32BF: ImpAdLdRf MemVar_7520D4
  loc_6D32C2: NewIfNullPr Global
  loc_6D32C5:  = Global.App
  loc_6D32CA: FLdPr var_B8
  loc_6D32CD:  = App.Path
  loc_6D32D2: FLdRfVar var_BA
  loc_6D32D5: LitDate 13.22918
  loc_6D32DE: PopTmpLdAdFPR4
  loc_6D32E2: LitDate 26.72294
  loc_6D32EB: PopTmpLdAdFPR4
  loc_6D32EF: LitI2_Byte &H14
  loc_6D32F1: CR8I2
  loc_6D32F2: PopTmpLdAdFPR4
  loc_6D32F6: LitI2 160
  loc_6D32F9: CR8I2
  loc_6D32FA: PopTmpLdAdFPR4
  loc_6D32FE: ILdRf var_D4
  loc_6D3301: LitStr "\Logo_Proyecto.bmp"
  loc_6D3304: ConcatStr
  loc_6D3305: PopTmpLdAdStr
  loc_6D3309: ILdPr
  loc_6D330C: Me.BackColor = from_stack_1
  loc_6D3311: FFreeStr var_D4 = ""
  loc_6D3318: FFree1Ad var_B8
  loc_6D331B: FLdRfVar var_D4
  loc_6D331E: FLdRfVar var_B8
  loc_6D3321: ImpAdLdRf MemVar_7520D4
  loc_6D3324: NewIfNullPr Global
  loc_6D3327:  = Global.App
  loc_6D332C: FLdPr var_B8
  loc_6D332F:  = App.Path
  loc_6D3334: FLdRfVar var_BA
  loc_6D3337: LitDate 13.22918
  loc_6D3340: PopTmpLdAdFPR4
  loc_6D3344: LitDate 26.72294
  loc_6D334D: PopTmpLdAdFPR4
  loc_6D3351: LitI2_Byte &H14
  loc_6D3353: CR8I2
  loc_6D3354: PopTmpLdAdFPR4
  loc_6D3358: LitI2_Byte &HA
  loc_6D335A: CR8I2
  loc_6D335B: PopTmpLdAdFPR4
  loc_6D335F: ILdRf var_D4
  loc_6D3362: LitStr "\\Logo_Compania.bmp"
  loc_6D3365: ConcatStr
  loc_6D3366: PopTmpLdAdStr
  loc_6D336A: ILdPr
  loc_6D336D: Me.BackColor = from_stack_1
  loc_6D3372: FFreeStr var_D4 = ""
  loc_6D3379: FFree1Ad var_B8
  loc_6D337C: LitI2_Byte &H14
  loc_6D337E: CR8I2
  loc_6D337F: PopFPR4
  loc_6D3380: ILdPr
  loc_6D3388: LitI2_Byte &HFF
  loc_6D338A: ILdPr
  loc_6D3392: LitI2_Byte &HFF
  loc_6D3394: ILdPr
  loc_6D3397: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D339C: FLdRfVar var_BA
  loc_6D339F: ILdRf arg_18
  loc_6D33A2: LitStr vbNullString
  loc_6D33A5: FStStrCopy var_D4
  loc_6D33A8: FLdRfVar var_D4
  loc_6D33AB: ILdPr
  loc_6D33AE:  = Me.BackColor
  loc_6D33B3: FFree1Str var_D4
  loc_6D33B6: FLdRfVar var_BA
  loc_6D33B9: ILdRf arg_18
  loc_6D33BC: FLdPr Me
  loc_6D33BF: MemLdRfVar from_stack_1.sSeccionesSeleccionadas64
  loc_6D33C2: ILdPr
  loc_6D33C5:  = Me.BackColor
  loc_6D33CA: FLdRfVar var_BA
  loc_6D33CD: ILdRf arg_18
  loc_6D33D0: LitStr vbNullString
  loc_6D33D3: FStStrCopy var_D4
  loc_6D33D6: FLdRfVar var_D4
  loc_6D33D9: ILdPr
  loc_6D33DC:  = Me.BackColor
  loc_6D33E1: FFree1Str var_D4
  loc_6D33E4: LitI2_Byte 0
  loc_6D33E6: ILdPr
  loc_6D33E9: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D33EE: LitI2_Byte &H10
  loc_6D33F0: CR8I2
  loc_6D33F1: PopFPR4
  loc_6D33F2: ILdPr
  loc_6D33FA: LitI2_Byte &HFF
  loc_6D33FC: ILdPr
  loc_6D33FF: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D3404: LitI2_Byte &HFF
  loc_6D3406: ILdPr
  loc_6D340E: FLdRfVar var_BA
  loc_6D3411: ILdRf arg_18
  loc_6D3414: LitStr vbNullString
  loc_6D3417: FStStrCopy var_D4
  loc_6D341A: FLdRfVar var_D4
  loc_6D341D: ILdPr
  loc_6D3420:  = Me.BackColor
  loc_6D3425: FFree1Str var_D4
  loc_6D3428: FLdRfVar var_BA
  loc_6D342B: ILdRf arg_18
  loc_6D342E: LitStr vbNullString
  loc_6D3431: FStStrCopy var_D4
  loc_6D3434: FLdRfVar var_D4
  loc_6D3437: ILdPr
  loc_6D343A:  = Me.BackColor
  loc_6D343F: FFree1Str var_D4
  loc_6D3442: LitI2_Byte &HA
  loc_6D3444: CR8I2
  loc_6D3445: PopFPR4
  loc_6D3446: ILdPr
  loc_6D344E: LitI2_Byte 0
  loc_6D3450: ILdPr
  loc_6D3453: from_stack_3 = PropBag.ReadProperty(from_stack_1, from_stack_2)
  loc_6D3458: LitVarStr var_E4, " "
  loc_6D345D: FStVarCopyObj var_CC
  loc_6D3460: FLdRfVar var_CC
  loc_6D3463: LitI4 &H20
  loc_6D3468: FLdRfVar var_104
  loc_6D346B: ImpAdCallFPR4  = String(, )
  loc_6D3470: FLdRfVar var_BA
  loc_6D3473: ILdRf arg_18
  loc_6D3476: FLdPr Me
  loc_6D3479: MemLdStr sSeccionesSeleccionadas68
  loc_6D347C: CVarStr var_F4
  loc_6D347F: FLdRfVar var_104
  loc_6D3482: ConcatVar var_124
  loc_6D3486: FLdPr Me
  loc_6D3489: MemLdStr sSeccionesSeleccionadas72
  loc_6D348C: CVarStr var_114
  loc_6D348F: ConcatVar var_144
  loc_6D3493: CStrVarTmp
  loc_6D3494: PopTmpLdAdStr
  loc_6D3498: ILdPr
  loc_6D349B: Call 0.Method_arg_5C ()
  loc_6D34A0: FFree1Str var_D4
  loc_6D34A3: FFreeVar var_CC = "": var_104 = "": var_124 = ""
  loc_6D34AE: LitI2_Byte 0
  loc_6D34B0: ILdPr
  loc_6D34B8: FLdRfVar var_BA
  loc_6D34BB: ILdRf arg_18
  loc_6D34BE: LitStr "______________________________________________________________________________________________"
  loc_6D34C1: FStStrCopy var_D4
  loc_6D34C4: FLdRfVar var_D4
  loc_6D34C7: ILdPr
  loc_6D34CA: Call 0.Method_arg_5C ()
  loc_6D34CF: FFree1Str var_D4
  loc_6D34D2: FLdRfVar var_BA
  loc_6D34D5: ILdRf arg_18
  loc_6D34D8: LitStr vbNullString
  loc_6D34DB: FStStrCopy var_D4
  loc_6D34DE: FLdRfVar var_D4
  loc_6D34E1: ILdPr
  loc_6D34E4: Call 0.Method_arg_5C ()
  loc_6D34E9: FFree1Str var_D4
  loc_6D34EC: from_stack_1v = Proc_162_239_63969C()
  loc_6D34F1: LitI2_Byte 1
  loc_6D34F3: FLdRfVar var_96
  loc_6D34F6: FLdRfVar var_BA
  loc_6D34F9: ImpAdLdRf MemVar_74A21C
  loc_6D34FC: NewIfNullPr clsSecurity
  loc_6D34FF:  = Forms
  loc_6D3504: FLdI2 var_BA
  loc_6D3507: ForI2 var_2C4
  loc_6D350D: FLdI2 var_96
  loc_6D3510: CI4UI1
  loc_6D3511: LitI4 0
  loc_6D3516: FLdPr Me
  loc_6D3519: MemLdStr sSeccionesSeleccionadas88
  loc_6D351C: AryLdPr
  loc_6D351F: MemLdStr global_0
  loc_6D3522: LitStr vbNullString
  loc_6D3525: EqStr
  loc_6D3527: BranchF loc_6D352D
  loc_6D352A: Branch loc_6D35DC
  loc_6D352D: FLdI2 var_96
  loc_6D3530: CI4UI1
  loc_6D3531: LitI4 0
  loc_6D3536: FLdPr Me
  loc_6D3539: MemLdStr sSeccionesSeleccionadas88
  loc_6D353C: AryLdPr
  loc_6D353F: MemLdStr global_0
  loc_6D3542: CVarStr var_F4
  loc_6D3545: LitVarStr var_E4, " "
  loc_6D354A: FStVarCopyObj var_CC
  loc_6D354D: FLdRfVar var_CC
  loc_6D3550: LitI4 &H2F
  loc_6D3555: FLdI2 var_96
  loc_6D3558: CI4UI1
  loc_6D3559: LitI4 0
  loc_6D355E: FLdPr Me
  loc_6D3561: MemLdStr sSeccionesSeleccionadas88
  loc_6D3564: AryLdPr
  loc_6D3567: MemLdStr global_0
  loc_6D356A: FnLenStr
  loc_6D356B: SubI4
  loc_6D356C: FLdRfVar var_104
  loc_6D356F: ImpAdCallFPR4  = String(, )
  loc_6D3574: FLdRfVar var_104
  loc_6D3577: ConcatVar var_124
  loc_6D357B: FLdRfVar var_D4
  loc_6D357E: FLdI2 var_96
  loc_6D3581: CI4UI1
  loc_6D3582: LitI4 1
  loc_6D3587: FLdPr Me
  loc_6D358A: MemLdStr sSeccionesSeleccionadas88
  loc_6D358D: AryLdPr
  loc_6D3590: MemLdStr global_0
  loc_6D3593: CR8Str
  loc_6D3595: LitI2_Byte 1
  loc_6D3597: CR8I2
  loc_6D3598: AddR8
  loc_6D3599: CI2R8
  loc_6D359A: PopTmpLdAd2 var_BA
  loc_6D359D: ImpAdLdRf MemVar_74A218
  loc_6D35A0: NewIfNullPr clsUsers
  loc_6D35A3: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_6D35A8: FLdZeroAd var_D4
  loc_6D35AB: CVarStr var_144
  loc_6D35AE: ConcatVar var_164
  loc_6D35B2: CStrVarTmp
  loc_6D35B3: FStStr var_9C
  loc_6D35B6: FFreeVar var_CC = "": var_104 = "": var_124 = "": var_144 = ""
  loc_6D35C3: FLdRfVar var_BA
  loc_6D35C6: ILdRf arg_18
  loc_6D35C9: FLdRfVar var_9C
  loc_6D35CC: ILdPr
  loc_6D35CF:  = Me.ForeColor
  loc_6D35D4: FLdRfVar var_96
  loc_6D35D7: NextI2 var_2C4, loc_6D350D
  loc_6D35DC: FLdRfVar var_BA
  loc_6D35DF: ILdRf arg_18
  loc_6D35E2: LitStr "______________________________________________________________________________________________"
  loc_6D35E5: FStStrCopy var_D4
  loc_6D35E8: FLdRfVar var_D4
  loc_6D35EB: ILdPr
  loc_6D35EE:  = Me.ForeColor
  loc_6D35F3: FFree1Str var_D4
  loc_6D35F6: FLdRfVar var_BA
  loc_6D35F9: ILdRf arg_18
  loc_6D35FC: LitStr vbNullString
  loc_6D35FF: FStStrCopy var_D4
  loc_6D3602: FLdRfVar var_D4
  loc_6D3605: ILdPr
  loc_6D3608:  = Me.ForeColor
  loc_6D360D: FFree1Str var_D4
  loc_6D3610: FLdRfVar var_BA
  loc_6D3613: ILdRf arg_18
  loc_6D3616: FLdPr Me
  loc_6D3619: MemLdRfVar from_stack_1.sSeccionesSeleccionadas76
  loc_6D361C: ILdPr
  loc_6D361F:  = Me.ForeColor
  loc_6D3624: FLdRfVar var_BA
  loc_6D3627: ILdPr
  loc_6D362A: Me.ForeColor = from_stack_1
  loc_6D362F: ExitProcHresult
End Function

Private Function Proc_162_238_5EF23C() '5EF23C
  'Data Table: 460894
  loc_5EF1B0: OnErrorGoto loc_5EF210
  loc_5EF1B3: LitStr "CEM44.INI"
  loc_5EF1B6: FLdRfVar var_A0
  loc_5EF1B9: CStr2Ansi
  loc_5EF1BA: ILdRf var_A0
  loc_5EF1BD: LitI4 0
  loc_5EF1C2: LitStr "CONSOLA"
  loc_5EF1C5: FLdRfVar var_9C
  loc_5EF1C8: CStr2Ansi
  loc_5EF1C9: ILdRf var_9C
  loc_5EF1CC: LitStr "ESPAÑA"
  loc_5EF1CF: FLdRfVar var_98
  loc_5EF1D2: CStr2Ansi
  loc_5EF1D3: ILdRf var_98
  loc_5EF1D6: ImpAdCallI2 GetPrivateProfileInt(, , , )
  loc_5EF1DB: FStR4 var_A4
  loc_5EF1DE: SetLastSystemError
  loc_5EF1DF: ILdRf var_A4
  loc_5EF1E2: CUI1I4
  loc_5EF1E4: ImpAdStUI1 MemVar_74C6B6
  loc_5EF1E8: FFreeStr var_98 = "": var_9C = ""
  loc_5EF1F1: ImpAdLdUI1
  loc_5EF1F5: CI2UI1
  loc_5EF1F7: LitI2_Byte 1
  loc_5EF1F9: EqI2
  loc_5EF1FA: BranchF loc_5EF208
  loc_5EF1FD: LitI2_Byte &H30
  loc_5EF1FF: CUI1I2
  loc_5EF201: ImpAdStUI1 MemVar_74C6F8
  loc_5EF205: Branch loc_5EF210
  loc_5EF208: LitI2_Byte &H38
  loc_5EF20A: CUI1I2
  loc_5EF20C: ImpAdStUI1 MemVar_74C6F8
  loc_5EF210: FLdRfVar var_A4
  loc_5EF213: ImpAdCallI2 Err 'rtcErrObj
  loc_5EF218: FStAdFunc var_A8
  loc_5EF21B: FLdPr var_A8
  loc_5EF21E:  = Err.Number
  loc_5EF223: ILdRf var_A4
  loc_5EF226: LitI4 &HD
  loc_5EF22B: EqI4
  loc_5EF22C: FFree1Ad var_A8
  loc_5EF22F: BranchF loc_5EF23A
  loc_5EF232: LitI2_Byte 0
  loc_5EF234: CUI1I2
  loc_5EF236: ImpAdStUI1 MemVar_74C6B6
  loc_5EF23A: ExitProcHresult
End Function

Private Function Proc_162_239_63969C() '63969C
  'Data Table: 460894
  loc_639498: LitI4 0
  loc_63949D: FLdRfVar var_8A
  loc_6394A0: ImpAdLdRf MemVar_74A21C
  loc_6394A3: NewIfNullPr clsSecurity
  loc_6394A6:  = Forms
  loc_6394AB: FLdI2 var_8A
  loc_6394AE: CI4UI1
  loc_6394AF: LitI4 0
  loc_6394B4: LitI4 1
  loc_6394B9: FLdPr Me
  loc_6394BC: MemLdRfVar from_stack_1.sSeccionesSeleccionadas88
  loc_6394BF: Redim
  loc_6394C9: ImpAdLdRf MemVar_74DCD0
  loc_6394CC: NewIfNullPr FSeguridad
  loc_6394CF: VCallAd Control_ID_List1
  loc_6394D2: FStAdFunc var_88
  loc_6394D5: FLdPr var_88
  loc_6394D8: FSeguridad.ListBox.Clear
  loc_6394DD: LitI2_Byte 1
  loc_6394DF: FLdRfVar var_8C
  loc_6394E2: FLdRfVar var_8A
  loc_6394E5: ImpAdLdRf MemVar_74A21C
  loc_6394E8: NewIfNullPr clsSecurity
  loc_6394EB:  = Forms
  loc_6394F0: FLdI2 var_8A
  loc_6394F3: ForI2 var_98
  loc_6394F9: FLdRfVar var_8A
  loc_6394FC: FLdRfVar var_8C
  loc_6394FF: ImpAdLdRf MemVar_74A21C
  loc_639502: NewIfNullPr clsSecurity
  loc_63950A: FLdI2 var_8A
  loc_63950D: FLdRfVar var_9C
  loc_639510: FLdRfVar var_8C
  loc_639513: ImpAdLdRf MemVar_74A21C
  loc_639516: NewIfNullPr clsSecurity
  loc_639519: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_63951E: ILdRf var_9C
  loc_639521: LitStr vbNullString
  loc_639524: NeStr
  loc_639526: AndI4
  loc_639527: FFree1Str var_9C
  loc_63952A: BranchF loc_639550
  loc_63952D: LitVar_Missing var_AC
  loc_639530: PopAdLdVar
  loc_639531: FLdRfVar var_9C
  loc_639534: FLdRfVar var_8C
  loc_639537: ImpAdLdRf MemVar_74A21C
  loc_63953A: NewIfNullPr clsSecurity
  loc_63953D: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_639542: ILdRf var_9C
  loc_639545: FLdPr var_88
  loc_639548: Me.AddItem from_stack_1, from_stack_2
  loc_63954D: FFree1Str var_9C
  loc_639550: FLdRfVar var_8C
  loc_639553: NextI2 var_98, loc_6394F9
  loc_639558: FLdPr var_88
  loc_63955B: Me.Refresh
  loc_639560: LitI2_Byte 1
  loc_639562: FLdRfVar var_8C
  loc_639565: FLdRfVar var_8A
  loc_639568: ImpAdLdRf MemVar_74A21C
  loc_63956B: NewIfNullPr clsSecurity
  loc_63956E:  = Forms
  loc_639573: FLdI2 var_8A
  loc_639576: ForI2 var_B0
  loc_63957C: FLdRfVar var_9C
  loc_63957F: FLdI2 var_8C
  loc_639582: LitI2_Byte 1
  loc_639584: SubI2
  loc_639585: FLdPr var_88
  loc_639588: from_stack_2 = Me.List(from_stack_1)
  loc_63958D: ILdRf var_9C
  loc_639590: FLdI2 var_8C
  loc_639593: CI4UI1
  loc_639594: LitI4 0
  loc_639599: FLdPr Me
  loc_63959C: MemLdStr sSeccionesSeleccionadas88
  loc_63959F: AryLdPr
  loc_6395A2: MemStStrCopy
  loc_6395A6: FFree1Str var_9C
  loc_6395A9: LitI2_Byte 1
  loc_6395AB: FLdRfVar var_8E
  loc_6395AE: FLdRfVar var_8A
  loc_6395B1: ImpAdLdRf MemVar_74A21C
  loc_6395B4: NewIfNullPr clsSecurity
  loc_6395B7:  = Forms
  loc_6395BC: FLdI2 var_8A
  loc_6395BF: ForI2 var_B4
  loc_6395C5: FLdI2 var_8C
  loc_6395C8: CI4UI1
  loc_6395C9: LitI4 0
  loc_6395CE: FLdPr Me
  loc_6395D1: MemLdStr sSeccionesSeleccionadas88
  loc_6395D4: AryLock
  loc_6395D7: AryLdRf
  loc_6395DA: CVarRef
  loc_6395DF: FLdRfVar var_C8
  loc_6395E2: ImpAdCallFPR4  = Trim()
  loc_6395E7: AryUnlock
  loc_6395EA: FLdRfVar var_C8
  loc_6395ED: FLdRfVar var_D8
  loc_6395F0: ImpAdCallFPR4  = Ucase()
  loc_6395F5: FLdRfVar var_D8
  loc_6395F8: FLdRfVar var_9C
  loc_6395FB: FLdRfVar var_8E
  loc_6395FE: ImpAdLdRf MemVar_74A21C
  loc_639601: NewIfNullPr clsSecurity
  loc_639604: PropBag.WriteProperty(from_stack_1, from_stack_2, from_stack_3)
  loc_639609: FLdZeroAd var_9C
  loc_63960C: CVarStr var_E8
  loc_63960F: FLdRfVar var_F8
  loc_639612: ImpAdCallFPR4  = Trim()
  loc_639617: FLdRfVar var_F8
  loc_63961A: FLdRfVar var_108
  loc_63961D: ImpAdCallFPR4  = Ucase()
  loc_639622: FLdRfVar var_108
  loc_639625: EqVarBool
  loc_639627: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_D8 = ""
  loc_639634: BranchF loc_63966A
  loc_639637: FLdRfVar var_8A
  loc_63963A: FLdRfVar var_8E
  loc_63963D: ImpAdLdRf MemVar_74A21C
  loc_639640: NewIfNullPr clsSecurity
  loc_639648: FLdUI1
  loc_63964C: CStrI2
  loc_63964E: FStStrNoPop var_9C
  loc_639651: FLdI2 var_8C
  loc_639654: CI4UI1
  loc_639655: LitI4 1
  loc_63965A: FLdPr Me
  loc_63965D: MemLdStr sSeccionesSeleccionadas88
  loc_639660: AryLdPr
  loc_639663: MemStStrCopy
  loc_639667: FFree1Str var_9C
  loc_63966A: FLdRfVar var_8E
  loc_63966D: NextI2 var_B4, loc_6395C5
  loc_639672: FLdI2 var_8C
  loc_639675: FLdRfVar var_8A
  loc_639678: FLdPr var_88
  loc_63967B:  = Me.ListCount
  loc_639680: FLdI2 var_8A
  loc_639683: EqI2
  loc_639684: BranchF loc_63968A
  loc_639687: Branch loc_639692
  loc_63968A: FLdRfVar var_8C
  loc_63968D: NextI2 var_B0, loc_63957C
  loc_639692: LitNothing
  loc_639694: CastAd
  loc_639697: FStAdFunc var_88
  loc_63969A: ExitProcHresult
End Function
