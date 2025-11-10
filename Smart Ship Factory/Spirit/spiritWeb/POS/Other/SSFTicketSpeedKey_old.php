<?php
//Include Common Files @1-420C3095
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Other/");
define("FileName", "SSFTicketSpeedKey_old.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridssf_tkt_catalog { //ssf_tkt_catalog class @172-36741316

//Variables @172-6E51DF5A

    // Public variables
    public $ComponentType = "Grid";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $ForceIteration = false;
    public $HasRecord = false;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;

    // Grid Controls
    public $StaticControls;
    public $RowControls;
//End Variables

//Class_Initialize Event @172-CEFB64DD
    function clsGridssf_tkt_catalog($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_catalog";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_catalog";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_catalogDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 100;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->tkt_catalog_code = new clsControl(ccsLabel, "tkt_catalog_code", "tkt_catalog_code", ccsText, "", CCGetRequestParam("tkt_catalog_code", ccsGet, NULL), $this);
        $this->tkt_catalog_value = new clsControl(ccsLabel, "tkt_catalog_value", "tkt_catalog_value", ccsText, "", CCGetRequestParam("tkt_catalog_value", ccsGet, NULL), $this);
        $this->tkt_catalog_misc1 = new clsControl(ccsLabel, "tkt_catalog_misc1", "tkt_catalog_misc1", ccsText, "", CCGetRequestParam("tkt_catalog_misc1", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @172-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @172-44DF4EA2
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->HasRecord = $this->DataSource->has_next_record();
        $this->IsEmpty = ! $this->HasRecord;
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["tkt_catalog_code"] = $this->tkt_catalog_code->Visible;
            $this->ControlsVisible["tkt_catalog_value"] = $this->tkt_catalog_value->Visible;
            $this->ControlsVisible["tkt_catalog_misc1"] = $this->tkt_catalog_misc1->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                // Parse Separator
                if($this->RowNumber) {
                    $this->Attributes->Show();
                    $Tpl->parseto("Separator", true, "Row");
                }
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_catalog_code->SetValue($this->DataSource->tkt_catalog_code->GetValue());
                $this->tkt_catalog_value->SetValue($this->DataSource->tkt_catalog_value->GetValue());
                $this->tkt_catalog_misc1->SetValue($this->DataSource->tkt_catalog_misc1->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_catalog_code->Show();
                $this->tkt_catalog_value->Show();
                $this->tkt_catalog_misc1->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @172-6F5BBD98
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_catalog_code->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_catalog_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_catalog_misc1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_catalog Class @172-FCB6E20C

class clsssf_tkt_catalogDataSource extends clsDBConnection1 {  //ssf_tkt_catalogDataSource Class @172-9B3D5D4B

//DataSource Variables @172-29B4B432
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_catalog_code;
    public $tkt_catalog_value;
    public $tkt_catalog_misc1;
//End DataSource Variables

//DataSourceClass_Initialize Event @172-3E64219A
    function clsssf_tkt_catalogDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_catalog";
        $this->Initialize();
        $this->tkt_catalog_code = new clsField("tkt_catalog_code", ccsText, "");
        $this->tkt_catalog_value = new clsField("tkt_catalog_value", ccsText, "");
        $this->tkt_catalog_misc1 = new clsField("tkt_catalog_misc1", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @172-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @172-427F6EDC
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @172-935FEE47
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_catalog";
        $this->SQL = "SELECT tkt_catalog_code, tkt_catalog_value, tkt_catalog_misc1 \n\n" .
        "FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @172-9F63FE11
    function SetValues()
    {
        $this->tkt_catalog_code->SetDBValue($this->f("tkt_catalog_code"));
        $this->tkt_catalog_value->SetDBValue($this->f("tkt_catalog_value"));
        $this->tkt_catalog_misc1->SetDBValue($this->f("tkt_catalog_misc1"));
    }
//End SetValues Method

} //End ssf_tkt_catalogDataSource Class @172-FCB6E20C

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation



class clsPathPath_ssf_tkt_speed_keys1 { //Path_ssf_tkt_speed_keys1 class @6-542ABC26

//Variables @6-8F51A715

    // Public variables
    public $ComponentType = "Path";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes = "";
//End Variables

//Class_Initialize Event @6-94ED682D
    function clsPathPath_ssf_tkt_speed_keys1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Path_ssf_tkt_speed_keys1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Path Path_ssf_tkt_speed_keys1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsPath_ssf_tkt_speed_keys1DataSource($this);
        $this->ds = & $this->DataSource;

        $this->PathBeginLink = new clsControl(ccsLink, "PathBeginLink", "PathBeginLink", ccsText, "", CCGetRequestParam("PathBeginLink", ccsGet, NULL), $this);
        $this->PathBeginLink->Page = "SSFTicketSpeedKey_old.php";
        $this->PathCategory = new clsControl(ccsLink, "PathCategory", "PathCategory", ccsText, "", CCGetRequestParam("PathCategory", ccsGet, NULL), $this);
        $this->PathCategory->Page = "SSFTicketSpeedKey_old.php";
        $this->CurrentCategory = new clsControl(ccsLabel, "CurrentCategory", "CurrentCategory", ccsText, "", CCGetRequestParam("CurrentCategory", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @6-5D060BAC
    function Initialize()
    {
        if(!$this->Visible) return;
    }
//End Initialize Method

//Show Method @6-AD828488
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;


        $this->DataSource->Parameters["urlcateg_id"] = CCGetFromGet("categ_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->DataSource->Prepare();
        if ($this->DataSource->AllParametersSet) {
            $this->DataSource->Open();
        }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $this->DataSource->close();
            return;
        }

        $this->Attributes->Show();
        $PathBlock = "Path " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $PathBlock;


        $is_next_record = ($this->DataSource->AllParametersSet && $this->DataSource->next_record());
        $this->IsEmpty = !$is_next_record;
        if($is_next_record)
        {
            $this->DataSource->SetValues();
            $this->CurrentCategory->SetValue($this->DataSource->CurrentCategory->GetValue());
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
            $this->Attributes->Show();
            $Tpl->block_path = $ParentPath . "/" . $PathBlock . "/CurrentCategory";
            $this->CurrentCategory->Show();
            $Tpl->block_path = $ParentPath . "/" . $PathBlock;
            $Tpl->parse("CurrentCategory", true);

            $category_parent_id = $this->DataSource->f("tkt_speed_parent_group_id");
            $this->DataSource->Parameters["urlcateg_id"] = $category_parent_id;
            $this->DataSource->Prepare();
            $this->DataSource->Open();
            while($this->DataSource->next_record() && $category_parent_id) {
                $this->DataSource->SetValues();
                $this->PathCategory->SetValue($this->DataSource->PathCategory->GetValue());
                $this->PathCategory->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->PathCategory->Parameters = CCAddParam($this->PathCategory->Parameters, "categ_id", $this->DataSource->f("tkt_speed_group_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
                $this->Attributes->Show();
                $Tpl->block_path = $ParentPath . "/" . $PathBlock . "/PathComponent";
                $this->PathCategory->Show();
                $Tpl->block_path = $ParentPath . "/" . $PathBlock;
                $Tpl->rparse("PathComponent", true);

                $category_parent_id = $this->DataSource->f("tkt_speed_parent_group_id");
                $this->DataSource->Parameters["urlcateg_id"] = $category_parent_id;
                $this->DataSource->Prepare();
                $this->DataSource->Open();
            } 
        }
        else
        {
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            $this->DataSource->close();
            return;
        }
        $this->PathBeginLink->SetValue($this->DataSource->PathBeginLink->GetValue());
        $this->PathBeginLink->Parameters = "";
        $this->PathBeginLink->Parameters = CCAddParam($this->PathBeginLink->Parameters, "categ_id", MAIN);
        $this->PathBeginLink->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @6-232FFA40
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->PathBeginLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->PathCategory->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CurrentCategory->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End Path_ssf_tkt_speed_keys1 Class @6-FCB6E20C

class clsPath_ssf_tkt_speed_keys1DataSource extends clsDBConnection1 {  //Path_ssf_tkt_speed_keys1DataSource Class @6-0FB3E6EE

//DataSource Variables @6-AF2FFA77
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;
    public $AllParametersSet;


    // Datasource fields
    public $PathBeginLink;
    public $PathCategory;
    public $CurrentCategory;
//End DataSource Variables

//DataSourceClass_Initialize Event @6-8E0897AD
    function clsPath_ssf_tkt_speed_keys1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Path Path_ssf_tkt_speed_keys1";
        $this->Initialize();
        $this->PathBeginLink = new clsField("PathBeginLink", ccsText, "");
        $this->PathCategory = new clsField("PathCategory", ccsText, "");
        $this->CurrentCategory = new clsField("CurrentCategory", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @6-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @6-20BF56FE
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_speed_group_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @6-B149115E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_speed_keys";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_speed_keys {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
        $this->MoveToPage($this->AbsolutePage);
    }
//End Open Method

//SetValues Method @6-A1BB3053
    function SetValues()
    {
        $this->PathBeginLink->SetDBValue($this->f("tkt_speed_group_id"));
        $this->PathCategory->SetDBValue($this->f("tkt_speed_group_id"));
        $this->CurrentCategory->SetDBValue($this->f("tkt_speed_group_id"));
    }
//End SetValues Method

} //End Path_ssf_tkt_speed_keys1DataSource Class @6-FCB6E20C

class clsDirectoryssf_tkt_speed_keys1 { //ssf_tkt_speed_keys1 class @12-CE79D904

//Variables @12-D4D21A31

    // Public variables
    public $Parent;
    public $ComponentType = "Directory";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $NumberOfColumns = 1;
    public $NumberOfSubcategories = "";

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;
//End Variables

//Class_Initialize Event @12-46D26E0B
    function clsDirectoryssf_tkt_speed_keys1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Parent = & $Parent;
        $this->ComponentName = "ssf_tkt_speed_keys1";
        $this->Visible = True;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Directory ssf_tkt_speed_keys1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_speed_keys1DataSource($this);
        $this->ds = & $this->DataSource;

        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTicketSpeedKey_old.php";
        $this->CategoryLink = new clsControl(ccsLink, "CategoryLink", "CategoryLink", ccsText, "", CCGetRequestParam("CategoryLink", ccsGet, NULL), $this);
        $this->CategoryLink->Page = "SSFTicketSpeedKey_old.php";
        $this->cat_tkt_speed_value = new clsControl(ccsLabel, "cat_tkt_speed_value", "cat_tkt_speed_value", ccsText, "", CCGetRequestParam("cat_tkt_speed_value", ccsGet, NULL), $this);
        $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $this);
        $this->Link2->Page = "SSFTicketSpeedKey_old.php";
        $this->SubcategoryLink = new clsControl(ccsLink, "SubcategoryLink", "SubcategoryLink", ccsText, "", CCGetRequestParam("SubcategoryLink", ccsGet, NULL), $this);
        $this->SubcategoryLink->Page = "SSFTicketSpeedKey_old.php";
        $this->sub_tkt_speed_value = new clsControl(ccsLabel, "sub_tkt_speed_value", "sub_tkt_speed_value", ccsText, "", CCGetRequestParam("sub_tkt_speed_value", ccsGet, NULL), $this);
        $this->SubcategoriesTailLink = new clsControl(ccsLink, "SubcategoriesTailLink", "SubcategoriesTailLink", ccsText, "", CCGetRequestParam("SubcategoriesTailLink", ccsGet, NULL), $this);
        $this->SubcategoriesTailLink->Page = "SSFTicketSpeedKey_old.php";
    }
//End Class_Initialize Event

//Initialize Method @12-75D22D4D
    function Initialize()
    {
        if(!$this->Visible) return;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @12-4A2F115D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;


        $this->DataSource->Parameters["urlcateg_id"] = CCGetFromGet("categ_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $CategoriesNumber = 0;
        if($this->DataSource->next_record())
        {
            $this->IsEmpty = false;
            $category_id_value = $this->DataSource->f("cat_tkt_speed_group_id");
            do {
                if($category_id_value != $this->DataSource->f("cat_tkt_speed_group_id"))
                    $CategoriesNumber++;
                $category_id_value = $this->DataSource->f("cat_tkt_speed_group_id");
            } while ($this->DataSource->next_record());
            $CategoriesNumber++;
        } else {
            $this->IsEmpty = true;
        }

        $this->DataSource->Open();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $this->Attributes->Show();
        $DirectoryBlock = "Directory " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;

        $ColumnNumber = 0;
        $CategoryNumber = 0;
        $NumberOfSubcategory = 0;

        $is_next_record = $this->DataSource->next_record();
        if($is_next_record)
        {
            do {
                $category_id_value = $this->DataSource->f("cat_tkt_speed_group_id");
                $subcategory_id_value = $this->DataSource->f("sub_tkt_speed_group_id");
                $this->DataSource->SetValues();
                $this->Link1->Parameters = CCGetQueryString("QueryString", array("parent_id", "tkt_speed_order", "tkt_speed_value", "categ_id", "ccsForm"));
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "edit_id", $this->DataSource->f("cat_tkt_speed_group_id"));
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "cat_tkt_speed_id", $this->DataSource->f("cat_tkt_speed_id"));
                $this->CategoryLink->SetValue($this->DataSource->CategoryLink->GetValue());
                $this->CategoryLink->Parameters = CCGetQueryString("QueryString", array("edit_id", "parent_id", "ccsForm"));
                $this->CategoryLink->Parameters = CCAddParam($this->CategoryLink->Parameters, "categ_id", $this->DataSource->f("cat_tkt_speed_group_id"));
                $this->CategoryLink->Parameters = CCAddParam($this->CategoryLink->Parameters, "cat_tkt_speed_id", $this->DataSource->f("cat_tkt_speed_id"));
                $this->CategoryLink->Parameters = CCAddParam($this->CategoryLink->Parameters, "add_parent_id", $this->DataSource->f("cat_tkt_speed_group_id"));
                $this->CategoryLink->Parameters = CCAddParam($this->CategoryLink->Parameters, "add_speed_id", $this->DataSource->f("cat_tkt_speed_id"));
                $this->cat_tkt_speed_value->SetValue($this->DataSource->cat_tkt_speed_value->GetValue());
                $this->Link2->Parameters = "";
                $this->Link2->Parameters = CCAddParam($this->Link2->Parameters, "edit_id", $this->DataSource->f("sub_tkt_speed_group_id"));
                $this->Link2->Parameters = CCAddParam($this->Link2->Parameters, "parent_id", $this->DataSource->f("cat_tkt_speed_group_id"));
                $this->Link2->Parameters = CCAddParam($this->Link2->Parameters, "cat_tkt_speed_id", $this->DataSource->f("cat_tkt_speed_id"));
                $this->SubcategoryLink->SetValue($this->DataSource->SubcategoryLink->GetValue());
                $this->SubcategoryLink->Parameters = CCGetQueryString("QueryString", array("edit_id", "parent_id", "ccsForm"));
                $this->SubcategoryLink->Parameters = CCAddParam($this->SubcategoryLink->Parameters, "categ_id", $this->DataSource->f("sub_tkt_speed_group_id"));
                $this->SubcategoryLink->Parameters = CCAddParam($this->SubcategoryLink->Parameters, "cat_tkt_speed_id", $this->DataSource->f("cat_tkt_speed_id"));
                $this->SubcategoryLink->Parameters = CCAddParam($this->SubcategoryLink->Parameters, "add_parent_id", $this->DataSource->f("cat_tkt_speed_group_id"));
                $this->SubcategoryLink->Parameters = CCAddParam($this->SubcategoryLink->Parameters, "add_speed_id", $this->DataSource->f("cat_tkt_speed_id"));
                $this->sub_tkt_speed_value->SetValue($this->DataSource->sub_tkt_speed_value->GetValue());
                $this->SubcategoriesTailLink->SetValue($this->DataSource->SubcategoriesTailLink->GetValue());
                $this->SubcategoriesTailLink->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->SubcategoriesTailLink->Parameters = CCAddParam($this->SubcategoriesTailLink->Parameters, "categ_id", $this->DataSource->f("cat_tkt_speed_group_id"));
                if(strlen($subcategory_id_value)) $NumberOfSubcategory++;
                if($NumberOfSubcategory && (!strlen($this->NumberOfSubcategories) || $this->NumberOfSubcategories >= $NumberOfSubcategory)) {
                    $this->Attributes->Show();
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowSubcategory", $this);
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category/Subcategory";
                    $this->Link2->Show();
                    $this->SubcategoryLink->Show();
                    $this->sub_tkt_speed_value->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                    $Tpl->parse("Category/Subcategory", true);
                } else if(strlen($this->NumberOfSubcategories) && ($this->NumberOfSubcategories + 1) == $NumberOfSubcategory) {
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category/SubcategoriesTail";
                    $this->SubcategoriesTailLink->Show();
                    $this->Attributes->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                    $Tpl->parseto("Category/SubcategoriesTail", true, "Category/Subcategory");
                }
                $is_next_record = $this->DataSource->next_record();
                $parse_category = (($is_next_record && $category_id_value != $this->DataSource->f("cat_tkt_speed_group_id")) || !$is_next_record);

                // Parse Separator
                if($parse_category) {
                    $CategoryNumber++;
                    $NumberOfSubcategory = 0;
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
                    $this->Attributes->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category";
                    $this->Link1->Show();
                    $this->CategoryLink->Show();
                    $this->cat_tkt_speed_value->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                    $Tpl->parse("Category", true);
                    $Tpl->setblockvar("Category/Subcategory", "");
                    if($CategoryNumber >= ($CategoriesNumber / ($this->NumberOfColumns - $ColumnNumber)) && $is_next_record) {
                        $CategoriesNumber -= $CategoryNumber;
                        $ColumnNumber++;
                        $CategoryNumber = 0;
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/ColumnSeparator";
                        $this->Attributes->Show();
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                        $Tpl->parseto("ColumnSeparator", true, "Category");
                    } else if($is_next_record) {
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/CategorySeparator";
                        $this->Attributes->Show();
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                        $Tpl->parseto("CategorySeparator", true, "Category");
                    }
                } else {
                    if(!strlen($this->NumberOfSubcategories) || $this->NumberOfSubcategories >= $NumberOfSubcategory) {
                        $this->Attributes->Show();
                        $Tpl->parseto("Category/SubcategorySeparator", true, "Category/Subcategory");
                    }
                }
            } while ($is_next_record);
        }
        else // Show NoCategories block if no categories are found
        {
            $this->Attributes->Show();
            $NoCategoriesParentPath = $Tpl->block_path;
            $Tpl->block_path = $NoCategoriesParentPath . "/NoCategories";
            $Tpl->block_path = $NoCategoriesParentPath;
            $Tpl->parse("NoCategories", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

//GetErrors Method @12-12221E79
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CategoryLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->cat_tkt_speed_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Link2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->SubcategoryLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sub_tkt_speed_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->SubcategoriesTailLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_speed_keys1 Class @12-FCB6E20C

class clsssf_tkt_speed_keys1DataSource extends clsDBConnection1 {  //ssf_tkt_speed_keys1DataSource Class @12-1A2BE366

//DataSource Variables @12-C6E23795
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $CategoryLink;
    public $cat_tkt_speed_value;
    public $SubcategoryLink;
    public $sub_tkt_speed_value;
    public $SubcategoriesTailLink;
//End DataSource Variables

//DataSourceClass_Initialize Event @12-86203598
    function clsssf_tkt_speed_keys1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Directory ssf_tkt_speed_keys1";
        $this->Initialize();
        $this->CategoryLink = new clsField("CategoryLink", ccsText, "");
        $this->cat_tkt_speed_value = new clsField("cat_tkt_speed_value", ccsText, "");
        $this->SubcategoryLink = new clsField("SubcategoryLink", ccsText, "");
        $this->sub_tkt_speed_value = new clsField("sub_tkt_speed_value", ccsText, "");
        $this->SubcategoriesTailLink = new clsField("SubcategoriesTailLink", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @12-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @12-039EEC73
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], 'MAIN', false);
    }
//End Prepare Method

//Open Method @12-D5A84AF7
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT distinct cat.tkt_speed_group_id AS cat_tkt_speed_group_id, sub.tkt_speed_group_id AS sub_tkt_speed_group_id, cat.tkt_speed_id AS cat_tkt_speed_id,\n" .
        "sub.tkt_speed_value AS sub_tkt_speed_value, cat.tkt_speed_value AS cat_tkt_speed_value \n" .
        "FROM ssf_tkt_speed_keys cat LEFT JOIN  (Select * from ssf_tkt_speed_keys a where a.tkt_speed_group_id is not null      )   sub ON\n" .
        "cat.tkt_speed_group_id = sub.tkt_speed_parent_group_id AND cat.tkt_speed_id = sub.tkt_speed_id\n" .
        "WHERE cat.tkt_speed_parent_group_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'\n" .
        "AND ( cat.tkt_speed_group_id  is not null ) \n" .
        ") cnt";
        $this->SQL = "SELECT distinct cat.tkt_speed_group_id AS cat_tkt_speed_group_id, sub.tkt_speed_group_id AS sub_tkt_speed_group_id, cat.tkt_speed_id AS cat_tkt_speed_id,\n" .
        "sub.tkt_speed_value AS sub_tkt_speed_value, cat.tkt_speed_value AS cat_tkt_speed_value \n" .
        "FROM ssf_tkt_speed_keys cat LEFT JOIN  (Select * from ssf_tkt_speed_keys a where a.tkt_speed_group_id is not null      )   sub ON\n" .
        "cat.tkt_speed_group_id = sub.tkt_speed_parent_group_id AND cat.tkt_speed_id = sub.tkt_speed_id\n" .
        "WHERE cat.tkt_speed_parent_group_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'\n" .
        "AND ( cat.tkt_speed_group_id  is not null ) \n" .
        "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
        $this->MoveToPage($this->AbsolutePage);
    }
//End Open Method

//SetValues Method @12-3DAB47E1
    function SetValues()
    {
        $this->CategoryLink->SetDBValue($this->f("cat_tkt_speed_group_id"));
        $this->cat_tkt_speed_value->SetDBValue($this->f("cat_tkt_speed_value"));
        $this->SubcategoryLink->SetDBValue($this->f("sub_tkt_speed_group_id"));
        $this->sub_tkt_speed_value->SetDBValue($this->f("sub_tkt_speed_value"));
        $this->SubcategoriesTailLink->SetDBValue($this->f("cat_tkt_speed_group_id"));
    }
//End SetValues Method

} //End ssf_tkt_speed_keys1DataSource Class @12-FCB6E20C

class clsRecordssf_tkt_speed_keys { //ssf_tkt_speed_keys Class @30-0DEF7DEA

//Variables @30-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @30-10E5B7C9
    function clsRecordssf_tkt_speed_keys($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_speed_keys/Error";
        $this->DataSource = new clsssf_tkt_speed_keysDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_speed_keys";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", $Method, NULL), $this);
            $this->r_tkt_speed_id = new clsControl(ccsListBox, "r_tkt_speed_id", $CCSLocales->GetText("tkt_speed_id"), ccsText, "", CCGetRequestParam("r_tkt_speed_id", $Method, NULL), $this);
            $this->r_tkt_speed_id->DSType = dsTable;
            list($this->r_tkt_speed_id->BoundColumn, $this->r_tkt_speed_id->TextColumn, $this->r_tkt_speed_id->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->r_tkt_speed_id->DataSource = new clsDBConnection1();
            $this->r_tkt_speed_id->ds = & $this->r_tkt_speed_id->DataSource;
            $this->r_tkt_speed_id->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->r_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->r_tkt_speed_id->DataSource->wp = new clsSQLParameters();
            $this->r_tkt_speed_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
            $this->r_tkt_speed_id->DataSource->Where = 
                 $this->r_tkt_speed_id->DataSource->wp->Criterion[1];
            $this->r_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->h_tkt_speed_id = new clsControl(ccsHidden, "h_tkt_speed_id", "h_tkt_speed_id", ccsText, "", CCGetRequestParam("h_tkt_speed_id", $Method, NULL), $this);
            $this->r_tkt_speed_order = new clsControl(ccsTextBox, "r_tkt_speed_order", $CCSLocales->GetText("tkt_speed_order"), ccsInteger, "", CCGetRequestParam("r_tkt_speed_order", $Method, NULL), $this);
            $this->r_tkt_speed_order->Required = true;
            $this->r_tkt_speed_parent_group_id = new clsControl(ccsHidden, "r_tkt_speed_parent_group_id", $CCSLocales->GetText("tkt_speed_parent_group_id"), ccsText, "", CCGetRequestParam("r_tkt_speed_parent_group_id", $Method, NULL), $this);
            $this->r_tkt_speed_parent_group_id->Required = true;
            $this->r_tkt_speed_group_id = new clsControl(ccsTextBox, "r_tkt_speed_group_id", $CCSLocales->GetText("tkt_speed_group_id"), ccsText, "", CCGetRequestParam("r_tkt_speed_group_id", $Method, NULL), $this);
            $this->r_tkt_speed_value = new clsControl(ccsTextBox, "r_tkt_speed_value", $CCSLocales->GetText("tkt_speed_value"), ccsText, "", CCGetRequestParam("r_tkt_speed_value", $Method, NULL), $this);
            $this->r_tkt_speed_param = new clsControl(ccsTextBox, "r_tkt_speed_param", $CCSLocales->GetText("tkt_speed_param"), ccsText, "", CCGetRequestParam("r_tkt_speed_param", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @30-0FEA5173
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urledit_id"] = CCGetFromGet("edit_id", NULL);
        $this->DataSource->Parameters["urlcat_tkt_speed_id"] = CCGetFromGet("cat_tkt_speed_id", NULL);
    }
//End Initialize Method

//Validate Method @30-31CB7CBC
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->r_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->h_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_order->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_parent_group_id->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_group_id->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_value->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_param->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->r_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_order->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_parent_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_param->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @30-722A8DA7
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->h_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_order->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_parent_group_id->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_group_id->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_value->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_param->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @30-D4085E8E
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted) {
            $this->EditMode = $this->DataSource->AllParametersSet;
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Insert";
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFTicketSpeedKey_old.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketSpeedKey_old.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "categ_id", "cat_tkt_speed_id", "edit_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketSpeedKey_old.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "categ_id", "cat_tkt_speed_id", "edit_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                if(!CCGetEvent($this->Button_Update->CCSEvents, "OnClick", $this->Button_Update) || !$this->UpdateRow()) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//InsertRow Method @30-3B4AAE87
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->r_tkt_speed_order->SetValue($this->r_tkt_speed_order->GetValue(true));
        $this->DataSource->r_tkt_speed_parent_group_id->SetValue($this->r_tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->r_tkt_speed_group_id->SetValue($this->r_tkt_speed_group_id->GetValue(true));
        $this->DataSource->r_tkt_speed_value->SetValue($this->r_tkt_speed_value->GetValue(true));
        $this->DataSource->r_tkt_speed_param->SetValue($this->r_tkt_speed_param->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @30-F154F51E
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->r_tkt_speed_order->SetValue($this->r_tkt_speed_order->GetValue(true));
        $this->DataSource->r_tkt_speed_parent_group_id->SetValue($this->r_tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->r_tkt_speed_group_id->SetValue($this->r_tkt_speed_group_id->GetValue(true));
        $this->DataSource->r_tkt_speed_value->SetValue($this->r_tkt_speed_value->GetValue(true));
        $this->DataSource->r_tkt_speed_param->SetValue($this->r_tkt_speed_param->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @30-683BB6E4
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->r_tkt_speed_parent_group_id->SetValue($this->r_tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->r_tkt_speed_order->SetValue($this->r_tkt_speed_order->GetValue(true));
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @30-680C1DC0
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->r_tkt_speed_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if($this->EditMode) {
            if($this->DataSource->Errors->Count()){
                $this->Errors->AddErrors($this->DataSource->Errors);
                $this->DataSource->Errors->clear();
            }
            $this->DataSource->Open();
            if($this->DataSource->Errors->Count() == 0 && $this->DataSource->next_record()) {
                $this->DataSource->SetValues();
                if(!$this->FormSubmitted){
                    $this->r_tkt_speed_id->SetValue($this->DataSource->r_tkt_speed_id->GetValue());
                    $this->h_tkt_speed_id->SetValue($this->DataSource->h_tkt_speed_id->GetValue());
                    $this->r_tkt_speed_order->SetValue($this->DataSource->r_tkt_speed_order->GetValue());
                    $this->r_tkt_speed_parent_group_id->SetValue($this->DataSource->r_tkt_speed_parent_group_id->GetValue());
                    $this->r_tkt_speed_group_id->SetValue($this->DataSource->r_tkt_speed_group_id->GetValue());
                    $this->r_tkt_speed_value->SetValue($this->DataSource->r_tkt_speed_value->GetValue());
                    $this->r_tkt_speed_param->SetValue($this->DataSource->r_tkt_speed_param->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_order->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_parent_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_param->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $this->Button_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->Label1->Show();
        $this->r_tkt_speed_id->Show();
        $this->h_tkt_speed_id->Show();
        $this->r_tkt_speed_order->Show();
        $this->r_tkt_speed_parent_group_id->Show();
        $this->r_tkt_speed_group_id->Show();
        $this->r_tkt_speed_value->Show();
        $this->r_tkt_speed_param->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_speed_keys Class @30-FCB6E20C

class clsssf_tkt_speed_keysDataSource extends clsDBConnection1 {  //ssf_tkt_speed_keysDataSource Class @30-D1B7B60E

//DataSource Variables @30-9C50406E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $Label1;
    public $r_tkt_speed_id;
    public $h_tkt_speed_id;
    public $r_tkt_speed_order;
    public $r_tkt_speed_parent_group_id;
    public $r_tkt_speed_group_id;
    public $r_tkt_speed_value;
    public $r_tkt_speed_param;
//End DataSource Variables

//DataSourceClass_Initialize Event @30-9544804D
    function clsssf_tkt_speed_keysDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_speed_keys/Error";
        $this->Initialize();
        $this->Label1 = new clsField("Label1", ccsText, "");
        $this->r_tkt_speed_id = new clsField("r_tkt_speed_id", ccsText, "");
        $this->h_tkt_speed_id = new clsField("h_tkt_speed_id", ccsText, "");
        $this->r_tkt_speed_order = new clsField("r_tkt_speed_order", ccsInteger, "");
        $this->r_tkt_speed_parent_group_id = new clsField("r_tkt_speed_parent_group_id", ccsText, "");
        $this->r_tkt_speed_group_id = new clsField("r_tkt_speed_group_id", ccsText, "");
        $this->r_tkt_speed_value = new clsField("r_tkt_speed_value", ccsText, "");
        $this->r_tkt_speed_param = new clsField("r_tkt_speed_param", ccsText, "");

        $this->InsertFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @30-C300993A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urledit_id", ccsText, "", "", $this->Parameters["urledit_id"], "", false);
        $this->wp->AddParameter("2", "urlcat_tkt_speed_id", ccsText, "", "", $this->Parameters["urlcat_tkt_speed_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_speed_group_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_speed_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @30-CA347CDB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_speed_keys {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @30-D6A04BBD
    function SetValues()
    {
        $this->r_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->h_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->r_tkt_speed_order->SetDBValue(trim($this->f("tkt_speed_order")));
        $this->r_tkt_speed_parent_group_id->SetDBValue($this->f("tkt_speed_parent_group_id"));
        $this->r_tkt_speed_group_id->SetDBValue($this->f("tkt_speed_group_id"));
        $this->r_tkt_speed_value->SetDBValue($this->f("tkt_speed_value"));
        $this->r_tkt_speed_param->SetDBValue($this->f("tkt_speed_param"));
    }
//End SetValues Method

//Insert Method @30-489C95CC
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_speed_id"] = new clsSQLParameter("ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_order"] = new clsSQLParameter("ctrlr_tkt_speed_order", ccsInteger, "", "", $this->r_tkt_speed_order->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_parent_group_id"] = new clsSQLParameter("ctrlr_tkt_speed_parent_group_id", ccsText, "", "", $this->r_tkt_speed_parent_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_group_id"] = new clsSQLParameter("ctrlr_tkt_speed_group_id", ccsText, "", "", $this->r_tkt_speed_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_value"] = new clsSQLParameter("ctrlr_tkt_speed_value", ccsText, "", "", $this->r_tkt_speed_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_param"] = new clsSQLParameter("ctrlr_tkt_speed_param", ccsText, "", "", $this->r_tkt_speed_param->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_speed_id"]->GetValue()) and !strlen($this->cp["tkt_speed_id"]->GetText()) and !is_bool($this->cp["tkt_speed_id"]->GetValue())) 
            $this->cp["tkt_speed_id"]->SetValue($this->h_tkt_speed_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_order"]->GetValue()) and !strlen($this->cp["tkt_speed_order"]->GetText()) and !is_bool($this->cp["tkt_speed_order"]->GetValue())) 
            $this->cp["tkt_speed_order"]->SetValue($this->r_tkt_speed_order->GetValue(true));
        if (!is_null($this->cp["tkt_speed_parent_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_parent_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_parent_group_id"]->GetValue())) 
            $this->cp["tkt_speed_parent_group_id"]->SetValue($this->r_tkt_speed_parent_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_group_id"]->GetValue())) 
            $this->cp["tkt_speed_group_id"]->SetValue($this->r_tkt_speed_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_value"]->GetValue()) and !strlen($this->cp["tkt_speed_value"]->GetText()) and !is_bool($this->cp["tkt_speed_value"]->GetValue())) 
            $this->cp["tkt_speed_value"]->SetValue($this->r_tkt_speed_value->GetValue(true));
        if (!is_null($this->cp["tkt_speed_param"]->GetValue()) and !strlen($this->cp["tkt_speed_param"]->GetText()) and !is_bool($this->cp["tkt_speed_param"]->GetValue())) 
            $this->cp["tkt_speed_param"]->SetValue($this->r_tkt_speed_param->GetValue(true));
        $this->InsertFields["tkt_speed_id"]["Value"] = $this->cp["tkt_speed_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_order"]["Value"] = $this->cp["tkt_speed_order"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_parent_group_id"]["Value"] = $this->cp["tkt_speed_parent_group_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_group_id"]["Value"] = $this->cp["tkt_speed_group_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_value"]["Value"] = $this->cp["tkt_speed_value"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_param"]["Value"] = $this->cp["tkt_speed_param"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_speed_keys", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @30-A0D02C72
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_speed_id"] = new clsSQLParameter("ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_order"] = new clsSQLParameter("ctrlr_tkt_speed_order", ccsInteger, "", "", $this->r_tkt_speed_order->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_parent_group_id"] = new clsSQLParameter("ctrlr_tkt_speed_parent_group_id", ccsText, "", "", $this->r_tkt_speed_parent_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_group_id"] = new clsSQLParameter("ctrlr_tkt_speed_group_id", ccsText, "", "", $this->r_tkt_speed_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_value"] = new clsSQLParameter("ctrlr_tkt_speed_value", ccsText, "", "", $this->r_tkt_speed_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_param"] = new clsSQLParameter("ctrlr_tkt_speed_param", ccsText, "", "", $this->r_tkt_speed_param->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urledit_id", ccsText, "", "", CCGetFromGet("edit_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("3", "ctrlr_tkt_speed_parent_group_id", ccsText, "", "", $this->r_tkt_speed_parent_group_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_speed_id"]->GetValue()) and !strlen($this->cp["tkt_speed_id"]->GetText()) and !is_bool($this->cp["tkt_speed_id"]->GetValue())) 
            $this->cp["tkt_speed_id"]->SetValue($this->h_tkt_speed_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_order"]->GetValue()) and !strlen($this->cp["tkt_speed_order"]->GetText()) and !is_bool($this->cp["tkt_speed_order"]->GetValue())) 
            $this->cp["tkt_speed_order"]->SetValue($this->r_tkt_speed_order->GetValue(true));
        if (!is_null($this->cp["tkt_speed_parent_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_parent_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_parent_group_id"]->GetValue())) 
            $this->cp["tkt_speed_parent_group_id"]->SetValue($this->r_tkt_speed_parent_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_group_id"]->GetValue())) 
            $this->cp["tkt_speed_group_id"]->SetValue($this->r_tkt_speed_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_value"]->GetValue()) and !strlen($this->cp["tkt_speed_value"]->GetText()) and !is_bool($this->cp["tkt_speed_value"]->GetValue())) 
            $this->cp["tkt_speed_value"]->SetValue($this->r_tkt_speed_value->GetValue(true));
        if (!is_null($this->cp["tkt_speed_param"]->GetValue()) and !strlen($this->cp["tkt_speed_param"]->GetText()) and !is_bool($this->cp["tkt_speed_param"]->GetValue())) 
            $this->cp["tkt_speed_param"]->SetValue($this->r_tkt_speed_param->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_speed_group_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_speed_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $wp->Criterion[3] = $wp->Operation(opEqual, "tkt_speed_parent_group_id", $wp->GetDBValue("3"), $this->ToSQL($wp->GetDBValue("3"), ccsText),false);
        $Where = $wp->opAND(
             false, $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]), 
             $wp->Criterion[3]);
        $this->UpdateFields["tkt_speed_id"]["Value"] = $this->cp["tkt_speed_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_order"]["Value"] = $this->cp["tkt_speed_order"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_parent_group_id"]["Value"] = $this->cp["tkt_speed_parent_group_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_group_id"]["Value"] = $this->cp["tkt_speed_group_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_value"]["Value"] = $this->cp["tkt_speed_value"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_param"]["Value"] = $this->cp["tkt_speed_param"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_speed_keys", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @30-E6891AC5
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urledit_id", ccsText, "", "", CCGetFromGet("edit_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("3", "ctrlr_tkt_speed_parent_group_id", ccsText, "", "", $this->r_tkt_speed_parent_group_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("4", "ctrlr_tkt_speed_order", ccsInteger, "", "", $this->r_tkt_speed_order->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_speed_group_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_speed_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $wp->Criterion[3] = $wp->Operation(opEqual, "tkt_speed_parent_group_id", $wp->GetDBValue("3"), $this->ToSQL($wp->GetDBValue("3"), ccsText),false);
        $wp->Criterion[4] = $wp->Operation(opEqual, "tkt_speed_order", $wp->GetDBValue("4"), $this->ToSQL($wp->GetDBValue("4"), ccsInteger),false);
        $Where = $wp->opAND(
             false, $wp->opAND(
             false, $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]), 
             $wp->Criterion[3]), 
             $wp->Criterion[4]);
        $this->SQL = "DELETE FROM ssf_tkt_speed_keys";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_speed_keysDataSource Class @30-FCB6E20C

class clsGridssf_tkt_speed_keys2 { //ssf_tkt_speed_keys2 class @50-81EC3C95

//Variables @50-74B2E776

    // Public variables
    public $ComponentType = "Grid";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $ForceIteration = false;
    public $HasRecord = false;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;

    // Grid Controls
    public $StaticControls;
    public $RowControls;
    public $Sorter_tkt_speed_order;
    public $Sorter_tkt_speed_value;
    public $Sorter_tkt_speed_param;
//End Variables

//Class_Initialize Event @50-C9516D15
    function clsGridssf_tkt_speed_keys2($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_speed_keys2";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_speed_keys2";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_speed_keys2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_tkt_speed_keys2Order", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_speed_keys2Dir", "");

        $this->tkt_speed_order = new clsControl(ccsLink, "tkt_speed_order", "tkt_speed_order", ccsInteger, "", CCGetRequestParam("tkt_speed_order", ccsGet, NULL), $this);
        $this->tkt_speed_order->Page = "SSFTicketSpeedKey_old.php";
        $this->tkt_speed_value = new clsControl(ccsLabel, "tkt_speed_value", "tkt_speed_value", ccsText, "", CCGetRequestParam("tkt_speed_value", ccsGet, NULL), $this);
        $this->tkt_speed_param = new clsControl(ccsLabel, "tkt_speed_param", "tkt_speed_param", ccsText, "", CCGetRequestParam("tkt_speed_param", ccsGet, NULL), $this);
        $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $this);
        $this->Sorter_tkt_speed_order = new clsSorter($this->ComponentName, "Sorter_tkt_speed_order", $FileName, $this);
        $this->Sorter_tkt_speed_value = new clsSorter($this->ComponentName, "Sorter_tkt_speed_value", $FileName, $this);
        $this->Sorter_tkt_speed_param = new clsSorter($this->ComponentName, "Sorter_tkt_speed_param", $FileName, $this);
        $this->speed_keys2_Insert = new clsControl(ccsLink, "speed_keys2_Insert", "speed_keys2_Insert", ccsText, "", CCGetRequestParam("speed_keys2_Insert", ccsGet, NULL), $this);
        $this->speed_keys2_Insert->Page = "SSFTicketSpeedKey_old.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @50-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @50-9E60FCB7
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlcateg_id"] = CCGetFromGet("categ_id", NULL);
        $this->DataSource->Parameters["urlcat_tkt_speed_id"] = CCGetFromGet("cat_tkt_speed_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->HasRecord = $this->DataSource->has_next_record();
        $this->IsEmpty = ! $this->HasRecord;
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["tkt_speed_order"] = $this->tkt_speed_order->Visible;
            $this->ControlsVisible["tkt_speed_value"] = $this->tkt_speed_value->Visible;
            $this->ControlsVisible["tkt_speed_param"] = $this->tkt_speed_param->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_speed_order->SetValue($this->DataSource->tkt_speed_order->GetValue());
                $this->tkt_speed_order->Parameters = CCGetQueryString("QueryString", array("speed_keys2_Insert", "ccsForm"));
                $this->tkt_speed_order->Parameters = CCAddParam($this->tkt_speed_order->Parameters, "tkt_speed_order", $this->DataSource->f("tkt_speed_order"));
                $this->tkt_speed_order->Parameters = CCAddParam($this->tkt_speed_order->Parameters, "cat_tkt_speed_id", $this->DataSource->f("tkt_speed_id"));
                $this->tkt_speed_value->SetValue($this->DataSource->tkt_speed_value->GetValue());
                $this->tkt_speed_param->SetValue($this->DataSource->tkt_speed_param->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_speed_order->Show();
                $this->tkt_speed_value->Show();
                $this->tkt_speed_param->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
        }
        else { // Show NoRecords block if no records are found
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $this->speed_keys2_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_speed_value", "tkt_speed_order", "cat_tkt_speed_id", "ccsForm"));
        $this->speed_keys2_Insert->Parameters = CCAddParam($this->speed_keys2_Insert->Parameters, "speed_keys2_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Label1->Show();
        $this->Sorter_tkt_speed_order->Show();
        $this->Sorter_tkt_speed_value->Show();
        $this->Sorter_tkt_speed_param->Show();
        $this->speed_keys2_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @50-C6C1F268
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_speed_order->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_speed_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_speed_param->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_speed_keys2 Class @50-FCB6E20C

class clsssf_tkt_speed_keys2DataSource extends clsDBConnection1 {  //ssf_tkt_speed_keys2DataSource Class @50-91F8DD7F

//DataSource Variables @50-5C6750BD
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_speed_order;
    public $tkt_speed_value;
    public $tkt_speed_param;
//End DataSource Variables

//DataSourceClass_Initialize Event @50-12B12273
    function clsssf_tkt_speed_keys2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_speed_keys2";
        $this->Initialize();
        $this->tkt_speed_order = new clsField("tkt_speed_order", ccsInteger, "");
        $this->tkt_speed_value = new clsField("tkt_speed_value", ccsText, "");
        $this->tkt_speed_param = new clsField("tkt_speed_param", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @50-19EAD78B
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_speed_order";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_speed_order" => array("tkt_speed_order", ""), 
            "Sorter_tkt_speed_value" => array("tkt_speed_value", ""), 
            "Sorter_tkt_speed_param" => array("tkt_speed_param", "")));
    }
//End SetOrder Method

//Prepare Method @50-33865506
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], "", false);
        $this->wp->AddParameter("3", "urlcat_tkt_speed_id", ccsText, "", "", $this->Parameters["urlcat_tkt_speed_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_speed_parent_group_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = "tkt_speed_group_id is null";
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_speed_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @50-FE6E126A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_speed_keys";
        $this->SQL = "SELECT tkt_speed_id, tkt_speed_order, tkt_speed_value, tkt_speed_param \n\n" .
        "FROM ssf_tkt_speed_keys {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @50-17D30250
    function SetValues()
    {
        $this->tkt_speed_order->SetDBValue(trim($this->f("tkt_speed_order")));
        $this->tkt_speed_value->SetDBValue($this->f("tkt_speed_value"));
        $this->tkt_speed_param->SetDBValue($this->f("tkt_speed_param"));
    }
//End SetValues Method

} //End ssf_tkt_speed_keys2DataSource Class @50-FCB6E20C

class clsRecordssf_tkt_speed_keys3 { //ssf_tkt_speed_keys3 Class @68-6DA7662F

//Variables @68-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @68-D44B9E3A
    function clsRecordssf_tkt_speed_keys3($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_speed_keys3/Error";
        $this->DataSource = new clsssf_tkt_speed_keys3DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_speed_keys3";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_speed_id = new clsControl(ccsListBox, "s_tkt_speed_id", "s_tkt_speed_id", ccsText, "", CCGetRequestParam("s_tkt_speed_id", $Method, NULL), $this);
            $this->s_tkt_speed_id->DSType = dsTable;
            list($this->s_tkt_speed_id->BoundColumn, $this->s_tkt_speed_id->TextColumn, $this->s_tkt_speed_id->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->s_tkt_speed_id->DataSource = new clsDBConnection1();
            $this->s_tkt_speed_id->ds = & $this->s_tkt_speed_id->DataSource;
            $this->s_tkt_speed_id->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->s_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->s_tkt_speed_id->DataSource->wp = new clsSQLParameters();
            $this->s_tkt_speed_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
            $this->s_tkt_speed_id->DataSource->Where = 
                 $this->s_tkt_speed_id->DataSource->wp->Criterion[1];
            $this->s_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->tkt_speed_order = new clsControl(ccsTextBox, "tkt_speed_order", $CCSLocales->GetText("tkt_speed_order"), ccsInteger, "", CCGetRequestParam("tkt_speed_order", $Method, NULL), $this);
            $this->tkt_speed_order->Required = true;
            $this->tkt_speed_value = new clsControl(ccsTextBox, "tkt_speed_value", $CCSLocales->GetText("tkt_speed_value"), ccsText, "", CCGetRequestParam("tkt_speed_value", $Method, NULL), $this);
            $this->link_product_list = new clsControl(ccsLink, "link_product_list", "link_product_list", ccsText, "", CCGetRequestParam("link_product_list", $Method, NULL), $this);
            $this->link_product_list->Page = "../SSFPopProductsList.php";
            $this->link_tender_list = new clsControl(ccsLink, "link_tender_list", "link_tender_list", ccsText, "", CCGetRequestParam("link_tender_list", $Method, NULL), $this);
            $this->link_tender_list->Page = "../SSFPopTendersList.php";
            $this->tkt_speed_param = new clsControl(ccsTextBox, "tkt_speed_param", $CCSLocales->GetText("tkt_speed_param"), ccsText, "", CCGetRequestParam("tkt_speed_param", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_speed_id = new clsControl(ccsHidden, "tkt_speed_id", $CCSLocales->GetText("tkt_speed_id"), ccsText, "", CCGetRequestParam("tkt_speed_id", $Method, NULL), $this);
            $this->tkt_speed_id->Required = true;
            $this->tkt_speed_parent_group_id = new clsControl(ccsHidden, "tkt_speed_parent_group_id", $CCSLocales->GetText("tkt_speed_parent_group_id"), ccsText, "", CCGetRequestParam("tkt_speed_parent_group_id", $Method, NULL), $this);
            $this->tkt_speed_parent_group_id->Required = true;
            $this->tkt_speed_group_id = new clsControl(ccsHidden, "tkt_speed_group_id", $CCSLocales->GetText("tkt_speed_group_id"), ccsText, "", CCGetRequestParam("tkt_speed_group_id", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @68-EEFE0A24
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlcat_tkt_speed_id"] = CCGetFromGet("cat_tkt_speed_id", NULL);
        $this->DataSource->Parameters["urlcateg_id"] = CCGetFromGet("categ_id", NULL);
        $this->DataSource->Parameters["urltkt_speed_order"] = CCGetFromGet("tkt_speed_order", NULL);
    }
//End Initialize Method

//Validate Method @68-D8A5CAC7
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_order->Validate() && $Validation);
        $Validation = ($this->tkt_speed_value->Validate() && $Validation);
        $Validation = ($this->tkt_speed_param->Validate() && $Validation);
        $Validation = ($this->tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_parent_group_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_group_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_order->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_param->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_parent_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_group_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @68-8078F783
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_order->Errors->Count());
        $errors = ($errors || $this->tkt_speed_value->Errors->Count());
        $errors = ($errors || $this->link_product_list->Errors->Count());
        $errors = ($errors || $this->link_tender_list->Errors->Count());
        $errors = ($errors || $this->tkt_speed_param->Errors->Count());
        $errors = ($errors || $this->tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_parent_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_group_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @68-E40A6351
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted) {
            $this->EditMode = $this->DataSource->AllParametersSet;
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Insert";
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFTicketSpeedKey_old.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketSpeedKey_old.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_speed_value", "tkt_speed_order", "speed_keys2_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketSpeedKey_old.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_speed_value", "tkt_speed_order", "speed_keys2_Insert"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                if(!CCGetEvent($this->Button_Update->CCSEvents, "OnClick", $this->Button_Update) || !$this->UpdateRow()) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//InsertRow Method @68-D2019378
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->s_tkt_speed_id->SetValue($this->s_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->tkt_speed_value->SetValue($this->tkt_speed_value->GetValue(true));
        $this->DataSource->link_product_list->SetValue($this->link_product_list->GetValue(true));
        $this->DataSource->link_tender_list->SetValue($this->link_tender_list->GetValue(true));
        $this->DataSource->tkt_speed_param->SetValue($this->tkt_speed_param->GetValue(true));
        $this->DataSource->tkt_speed_id->SetValue($this->tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @68-56FFAEDD
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->s_tkt_speed_id->SetValue($this->s_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->tkt_speed_value->SetValue($this->tkt_speed_value->GetValue(true));
        $this->DataSource->link_product_list->SetValue($this->link_product_list->GetValue(true));
        $this->DataSource->link_tender_list->SetValue($this->link_tender_list->GetValue(true));
        $this->DataSource->tkt_speed_param->SetValue($this->tkt_speed_param->GetValue(true));
        $this->DataSource->tkt_speed_id->SetValue($this->tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @68-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @68-81023AA2
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_speed_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if($this->EditMode) {
            if($this->DataSource->Errors->Count()){
                $this->Errors->AddErrors($this->DataSource->Errors);
                $this->DataSource->Errors->clear();
            }
            $this->DataSource->Open();
            if($this->DataSource->Errors->Count() == 0 && $this->DataSource->next_record()) {
                $this->DataSource->SetValues();
                if(!$this->FormSubmitted){
                    $this->s_tkt_speed_id->SetValue($this->DataSource->s_tkt_speed_id->GetValue());
                    $this->tkt_speed_order->SetValue($this->DataSource->tkt_speed_order->GetValue());
                    $this->tkt_speed_value->SetValue($this->DataSource->tkt_speed_value->GetValue());
                    $this->tkt_speed_param->SetValue($this->DataSource->tkt_speed_param->GetValue());
                    $this->tkt_speed_id->SetValue($this->DataSource->tkt_speed_id->GetValue());
                    $this->tkt_speed_parent_group_id->SetValue($this->DataSource->tkt_speed_parent_group_id->GetValue());
                    $this->tkt_speed_group_id->SetValue($this->DataSource->tkt_speed_group_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_order->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_product_list->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_tender_list->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_param->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_parent_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $this->Button_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->s_tkt_speed_id->Show();
        $this->tkt_speed_order->Show();
        $this->tkt_speed_value->Show();
        $this->link_product_list->Show();
        $this->link_tender_list->Show();
        $this->tkt_speed_param->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_speed_id->Show();
        $this->tkt_speed_parent_group_id->Show();
        $this->tkt_speed_group_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_speed_keys3 Class @68-FCB6E20C

class clsssf_tkt_speed_keys3DataSource extends clsDBConnection1 {  //ssf_tkt_speed_keys3DataSource Class @68-5E66CAB7

//DataSource Variables @68-8F209A13
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $s_tkt_speed_id;
    public $tkt_speed_order;
    public $tkt_speed_value;
    public $link_product_list;
    public $link_tender_list;
    public $tkt_speed_param;
    public $tkt_speed_id;
    public $tkt_speed_parent_group_id;
    public $tkt_speed_group_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @68-58364982
    function clsssf_tkt_speed_keys3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_speed_keys3/Error";
        $this->Initialize();
        $this->s_tkt_speed_id = new clsField("s_tkt_speed_id", ccsText, "");
        $this->tkt_speed_order = new clsField("tkt_speed_order", ccsInteger, "");
        $this->tkt_speed_value = new clsField("tkt_speed_value", ccsText, "");
        $this->link_product_list = new clsField("link_product_list", ccsText, "");
        $this->link_tender_list = new clsField("link_tender_list", ccsText, "");
        $this->tkt_speed_param = new clsField("tkt_speed_param", ccsText, "");
        $this->tkt_speed_id = new clsField("tkt_speed_id", ccsText, "");
        $this->tkt_speed_parent_group_id = new clsField("tkt_speed_parent_group_id", ccsText, "");
        $this->tkt_speed_group_id = new clsField("tkt_speed_group_id", ccsText, "");

        $this->InsertFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @68-9C992DE1
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcat_tkt_speed_id", ccsText, "", "", $this->Parameters["urlcat_tkt_speed_id"], "", false);
        $this->wp->AddParameter("2", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], "", false);
        $this->wp->AddParameter("3", "urltkt_speed_order", ccsInteger, "", "", $this->Parameters["urltkt_speed_order"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_speed_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_speed_parent_group_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_speed_order", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @68-CA347CDB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_speed_keys {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @68-BDCEE7F1
    function SetValues()
    {
        $this->s_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->tkt_speed_order->SetDBValue(trim($this->f("tkt_speed_order")));
        $this->tkt_speed_value->SetDBValue($this->f("tkt_speed_value"));
        $this->tkt_speed_param->SetDBValue($this->f("tkt_speed_param"));
        $this->tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->tkt_speed_parent_group_id->SetDBValue($this->f("tkt_speed_parent_group_id"));
        $this->tkt_speed_group_id->SetDBValue($this->f("tkt_speed_group_id"));
    }
//End SetValues Method

//Insert Method @68-6B4B3606
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_speed_id"]["Value"] = $this->s_tkt_speed_id->GetDBValue(true);
        $this->InsertFields["tkt_speed_order"]["Value"] = $this->tkt_speed_order->GetDBValue(true);
        $this->InsertFields["tkt_speed_value"]["Value"] = $this->tkt_speed_value->GetDBValue(true);
        $this->InsertFields["tkt_speed_param"]["Value"] = $this->tkt_speed_param->GetDBValue(true);
        $this->InsertFields["tkt_speed_id"]["Value"] = $this->tkt_speed_id->GetDBValue(true);
        $this->InsertFields["tkt_speed_parent_group_id"]["Value"] = $this->tkt_speed_parent_group_id->GetDBValue(true);
        $this->InsertFields["tkt_speed_group_id"]["Value"] = $this->tkt_speed_group_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_speed_keys", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @68-C5E5AC3F
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_speed_id"]["Value"] = $this->s_tkt_speed_id->GetDBValue(true);
        $this->UpdateFields["tkt_speed_order"]["Value"] = $this->tkt_speed_order->GetDBValue(true);
        $this->UpdateFields["tkt_speed_value"]["Value"] = $this->tkt_speed_value->GetDBValue(true);
        $this->UpdateFields["tkt_speed_param"]["Value"] = $this->tkt_speed_param->GetDBValue(true);
        $this->UpdateFields["tkt_speed_id"]["Value"] = $this->tkt_speed_id->GetDBValue(true);
        $this->UpdateFields["tkt_speed_parent_group_id"]["Value"] = $this->tkt_speed_parent_group_id->GetDBValue(true);
        $this->UpdateFields["tkt_speed_group_id"]["Value"] = $this->tkt_speed_group_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_speed_keys", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @68-961213C2
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_speed_keys";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_speed_keys3DataSource Class @68-FCB6E20C

//Initialize Page @1-2EF1A421
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "SSFTicketSpeedKey_old.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Include events file @1-D8878211
include("./SSFTicketSpeedKey_old_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-786C7EB9
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$ssf_tkt_catalog = new clsGridssf_tkt_catalog("", $MainPage);
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$Path_ssf_tkt_speed_keys1 = new clsPathPath_ssf_tkt_speed_keys1("", $MainPage);
$ssf_tkt_speed_keys1 = new clsDirectoryssf_tkt_speed_keys1("", $MainPage);
$ssf_tkt_speed_keys = new clsRecordssf_tkt_speed_keys("", $MainPage);
$ssf_tkt_speed_keys2 = new clsGridssf_tkt_speed_keys2("", $MainPage);
$ssf_tkt_speed_keys3 = new clsRecordssf_tkt_speed_keys3("", $MainPage);
$MainPage->ssf_tkt_catalog = & $ssf_tkt_catalog;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->Path_ssf_tkt_speed_keys1 = & $Path_ssf_tkt_speed_keys1;
$MainPage->ssf_tkt_speed_keys1 = & $ssf_tkt_speed_keys1;
$MainPage->ssf_tkt_speed_keys = & $ssf_tkt_speed_keys;
$MainPage->ssf_tkt_speed_keys2 = & $ssf_tkt_speed_keys2;
$MainPage->ssf_tkt_speed_keys3 = & $ssf_tkt_speed_keys3;
$ssf_tkt_catalog->Initialize();
$Path_ssf_tkt_speed_keys1->Initialize();
$ssf_tkt_speed_keys1->Initialize();
$ssf_tkt_speed_keys->Initialize();
$ssf_tkt_speed_keys2->Initialize();
$ssf_tkt_speed_keys3->Initialize();

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

$Charset = $Charset ? $Charset : "windows-1252";
if ($Charset)
    header("Content-Type: text/html; charset=" . $Charset);
//End Initialize Objects

//Initialize HTML Template @1-67CF7266
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
$Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252", "replace");
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-0ACDA266
$SSFSpiritHeader->Operations();
$ssf_tkt_speed_keys->Operation();
$ssf_tkt_speed_keys3->Operation();
//End Execute Components

//Go to destination page @1-E428828D
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_tkt_catalog);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($Path_ssf_tkt_speed_keys1);
    unset($ssf_tkt_speed_keys1);
    unset($ssf_tkt_speed_keys);
    unset($ssf_tkt_speed_keys2);
    unset($ssf_tkt_speed_keys3);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-B69BA4EF
$ssf_tkt_catalog->Show();
$SSFSpiritHeader->Show();
$Path_ssf_tkt_speed_keys1->Show();
$ssf_tkt_speed_keys1->Show();
$ssf_tkt_speed_keys->Show();
$ssf_tkt_speed_keys2->Show();
$ssf_tkt_speed_keys3->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-2C2B5889
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_tkt_catalog);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($Path_ssf_tkt_speed_keys1);
unset($ssf_tkt_speed_keys1);
unset($ssf_tkt_speed_keys);
unset($ssf_tkt_speed_keys2);
unset($ssf_tkt_speed_keys3);
unset($Tpl);
//End Unload Page


?>
