<?php
//Include Common Files @1-57526219
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Products/");
define("FileName", "SSFTicketInvCat.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsPathPath_ssf_tkt_categories { //Path_ssf_tkt_categories class @3-B721A265

//Variables @3-8F51A715

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

//Class_Initialize Event @3-1A09F866
    function clsPathPath_ssf_tkt_categories($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Path_ssf_tkt_categories";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Path Path_ssf_tkt_categories";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsPath_ssf_tkt_categoriesDataSource($this);
        $this->ds = & $this->DataSource;

        $this->PathBeginLink = new clsControl(ccsLink, "PathBeginLink", "PathBeginLink", ccsText, "", CCGetRequestParam("PathBeginLink", ccsGet, NULL), $this);
        $this->PathBeginLink->Parameters = CCGetQueryString("QueryString", array("categ_id", "edit_id", "ccsForm"));
        $this->PathBeginLink->Page = "SSFTicketInvCat.php";
        $this->PathCategory = new clsControl(ccsLink, "PathCategory", "PathCategory", ccsText, "", CCGetRequestParam("PathCategory", ccsGet, NULL), $this);
        $this->PathCategory->Page = "SSFTicketInvCat.php";
        $this->CurrentCategory = new clsControl(ccsLabel, "CurrentCategory", "CurrentCategory", ccsText, "", CCGetRequestParam("CurrentCategory", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @3-5D060BAC
    function Initialize()
    {
        if(!$this->Visible) return;
    }
//End Initialize Method

//Show Method @3-58A9A86D
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

            $category_parent_id = $this->DataSource->f("tkt_category_parent");
            $this->DataSource->Parameters["urlcateg_id"] = $category_parent_id;
            $this->DataSource->Prepare();
            $this->DataSource->Open();
            while($this->DataSource->next_record() && $category_parent_id) {
                $this->DataSource->SetValues();
                $this->PathCategory->SetValue($this->DataSource->PathCategory->GetValue());
                $this->PathCategory->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->PathCategory->Parameters = CCAddParam($this->PathCategory->Parameters, "categ_id", $this->DataSource->f("tkt_category_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
                $this->Attributes->Show();
                $Tpl->block_path = $ParentPath . "/" . $PathBlock . "/PathComponent";
                $this->PathCategory->Show();
                $Tpl->block_path = $ParentPath . "/" . $PathBlock;
                $Tpl->rparse("PathComponent", true);

                $category_parent_id = $this->DataSource->f("tkt_category_parent");
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
        $this->PathBeginLink->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-232FFA40
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

} //End Path_ssf_tkt_categories Class @3-FCB6E20C

class clsPath_ssf_tkt_categoriesDataSource extends clsDBConnection1 {  //Path_ssf_tkt_categoriesDataSource Class @3-E9F25F72

//DataSource Variables @3-AF2FFA77
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

//DataSourceClass_Initialize Event @3-8486DCB6
    function clsPath_ssf_tkt_categoriesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Path Path_ssf_tkt_categories";
        $this->Initialize();
        $this->PathBeginLink = new clsField("PathBeginLink", ccsText, "");
        $this->PathCategory = new clsField("PathCategory", ccsText, "");
        $this->CurrentCategory = new clsField("CurrentCategory", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @3-2656058E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_category_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @3-CD6751F6
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_categories";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @3-E2F9586C
    function SetValues()
    {
        $this->PathBeginLink->SetDBValue($this->f("tkt_category_desc"));
        $this->PathCategory->SetDBValue($this->f("tkt_category_desc"));
        $this->CurrentCategory->SetDBValue($this->f("tkt_category_desc"));
    }
//End SetValues Method

} //End Path_ssf_tkt_categoriesDataSource Class @3-FCB6E20C

class clsDirectoryssf_tkt_categories { //ssf_tkt_categories class @9-5BF736E4

//Variables @9-D4D21A31

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

//Class_Initialize Event @9-2C3188F7
    function clsDirectoryssf_tkt_categories($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Parent = & $Parent;
        $this->ComponentName = "ssf_tkt_categories";
        $this->Visible = True;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Directory ssf_tkt_categories";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_categoriesDataSource($this);
        $this->ds = & $this->DataSource;

        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTicketInvCat.php";
        $this->CategoryLink = new clsControl(ccsLink, "CategoryLink", "CategoryLink", ccsText, "", CCGetRequestParam("CategoryLink", ccsGet, NULL), $this);
        $this->CategoryLink->Page = "SSFTicketInvCat.php";
        $this->cat_tkt_category_desc = new clsControl(ccsLabel, "cat_tkt_category_desc", "cat_tkt_category_desc", ccsText, "", CCGetRequestParam("cat_tkt_category_desc", ccsGet, NULL), $this);
        $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $this);
        $this->Link2->Page = "SSFTicketInvCat.php";
        $this->SubcategoryLink = new clsControl(ccsLink, "SubcategoryLink", "SubcategoryLink", ccsText, "", CCGetRequestParam("SubcategoryLink", ccsGet, NULL), $this);
        $this->SubcategoryLink->Page = "SSFTicketInvCat.php";
        $this->sub_tkt_category_desc = new clsControl(ccsLabel, "sub_tkt_category_desc", "sub_tkt_category_desc", ccsText, "", CCGetRequestParam("sub_tkt_category_desc", ccsGet, NULL), $this);
        $this->SubcategoriesTailLink = new clsControl(ccsLink, "SubcategoriesTailLink", "SubcategoriesTailLink", ccsText, "", CCGetRequestParam("SubcategoriesTailLink", ccsGet, NULL), $this);
        $this->SubcategoriesTailLink->Page = "SSFTicketInvCat.php";
    }
//End Class_Initialize Event

//Initialize Method @9-75D22D4D
    function Initialize()
    {
        if(!$this->Visible) return;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @9-D1F80F64
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
            $category_id_value = $this->DataSource->f("cat_tkt_category_id");
            do {
                if($category_id_value != $this->DataSource->f("cat_tkt_category_id"))
                    $CategoriesNumber++;
                $category_id_value = $this->DataSource->f("cat_tkt_category_id");
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
                $category_id_value = $this->DataSource->f("cat_tkt_category_id");
                $subcategory_id_value = $this->DataSource->f("sub_tkt_category_id");
                $this->DataSource->SetValues();
                $this->Link1->Parameters = CCGetQueryString("QueryString", array("parent_id", "ccsForm"));
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "edit_id", $this->DataSource->f("cat_tkt_category_id"));
                $this->CategoryLink->SetValue($this->DataSource->CategoryLink->GetValue());
                $this->CategoryLink->Parameters = CCGetQueryString("QueryString", array("edit_id", "parent_id", "ccsForm"));
                $this->CategoryLink->Parameters = CCAddParam($this->CategoryLink->Parameters, "categ_id", $this->DataSource->f("cat_tkt_category_id"));
                $this->cat_tkt_category_desc->SetValue($this->DataSource->cat_tkt_category_desc->GetValue());
                $this->Link2->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->Link2->Parameters = CCAddParam($this->Link2->Parameters, "edit_id", $this->DataSource->f("sub_tkt_category_id"));
                $this->Link2->Parameters = CCAddParam($this->Link2->Parameters, "parent_id", $this->DataSource->f("cat_tkt_category_id"));
                $this->SubcategoryLink->SetValue($this->DataSource->SubcategoryLink->GetValue());
                $this->SubcategoryLink->Parameters = CCGetQueryString("QueryString", array("edit_id", "parent_id", "ccsForm"));
                $this->SubcategoryLink->Parameters = CCAddParam($this->SubcategoryLink->Parameters, "categ_id", $this->DataSource->f("sub_tkt_category_id"));
                $this->sub_tkt_category_desc->SetValue($this->DataSource->sub_tkt_category_desc->GetValue());
                $this->SubcategoriesTailLink->SetValue($this->DataSource->SubcategoriesTailLink->GetValue());
                $this->SubcategoriesTailLink->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->SubcategoriesTailLink->Parameters = CCAddParam($this->SubcategoriesTailLink->Parameters, "categ_id", $this->DataSource->f("cat_tkt_category_id"));
                if(strlen($subcategory_id_value)) $NumberOfSubcategory++;
                if($NumberOfSubcategory && (!strlen($this->NumberOfSubcategories) || $this->NumberOfSubcategories >= $NumberOfSubcategory)) {
                    $this->Attributes->Show();
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowSubcategory", $this);
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category/Subcategory";
                    $this->Link2->Show();
                    $this->SubcategoryLink->Show();
                    $this->sub_tkt_category_desc->Show();
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
                $parse_category = (($is_next_record && $category_id_value != $this->DataSource->f("cat_tkt_category_id")) || !$is_next_record);

                // Parse Separator
                if($parse_category) {
                    $CategoryNumber++;
                    $NumberOfSubcategory = 0;
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
                    $this->Attributes->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category";
                    $this->Link1->Show();
                    $this->CategoryLink->Show();
                    $this->cat_tkt_category_desc->Show();
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

//GetErrors Method @9-CC1F18EC
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CategoryLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->cat_tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Link2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->SubcategoryLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sub_tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->SubcategoriesTailLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_categories Class @9-FCB6E20C

class clsssf_tkt_categoriesDataSource extends clsDBConnection1 {  //ssf_tkt_categoriesDataSource Class @9-ABDA9E2F

//DataSource Variables @9-3B091BEF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $CategoryLink;
    public $cat_tkt_category_desc;
    public $SubcategoryLink;
    public $sub_tkt_category_desc;
    public $SubcategoriesTailLink;
//End DataSource Variables

//DataSourceClass_Initialize Event @9-C6373625
    function clsssf_tkt_categoriesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Directory ssf_tkt_categories";
        $this->Initialize();
        $this->CategoryLink = new clsField("CategoryLink", ccsText, "");
        $this->cat_tkt_category_desc = new clsField("cat_tkt_category_desc", ccsText, "");
        $this->SubcategoryLink = new clsField("SubcategoryLink", ccsText, "");
        $this->sub_tkt_category_desc = new clsField("sub_tkt_category_desc", ccsText, "");
        $this->SubcategoriesTailLink = new clsField("SubcategoriesTailLink", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @9-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @9-5AD9A46A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], "", true);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "cat.tkt_category_parent", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),true);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @9-D76C95B0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_categories cat LEFT JOIN ssf_tkt_categories sub ON\n\n" .
        "cat.tkt_category_id = sub.tkt_category_parent";
        $this->SQL = "SELECT cat.tkt_category_id AS cat_tkt_category_id, cat.tkt_category_desc AS cat_tkt_category_desc, sub.tkt_category_id AS sub_tkt_category_id,\n\n" .
        "sub.tkt_category_desc AS sub_tkt_category_desc \n\n" .
        "FROM ssf_tkt_categories cat LEFT JOIN ssf_tkt_categories sub ON\n\n" .
        "cat.tkt_category_id = sub.tkt_category_parent {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @9-33AF5CFA
    function SetValues()
    {
        $this->CategoryLink->SetDBValue($this->f("cat_tkt_category_id"));
        $this->cat_tkt_category_desc->SetDBValue($this->f("cat_tkt_category_desc"));
        $this->SubcategoryLink->SetDBValue($this->f("sub_tkt_category_id"));
        $this->sub_tkt_category_desc->SetDBValue($this->f("sub_tkt_category_desc"));
        $this->SubcategoriesTailLink->SetDBValue($this->f("cat_tkt_category_desc"));
    }
//End SetValues Method

} //End ssf_tkt_categoriesDataSource Class @9-FCB6E20C

class clsRecordssf_tkt_categories1 { //ssf_tkt_categories1 Class @31-2997EC48

//Variables @31-9E315808

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

//Class_Initialize Event @31-C7089544
    function clsRecordssf_tkt_categories1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_categories1/Error";
        $this->DataSource = new clsssf_tkt_categories1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_categories1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_category_id = new clsControl(ccsTextBox, "tkt_category_id", $CCSLocales->GetText("tkt_category_id"), ccsText, "", CCGetRequestParam("tkt_category_id", $Method, NULL), $this);
            $this->tkt_category_id->Required = true;
            $this->tkt_category_desc = new clsControl(ccsTextBox, "tkt_category_desc", $CCSLocales->GetText("tkt_category_desc"), ccsText, "", CCGetRequestParam("tkt_category_desc", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_category_level = new clsControl(ccsHidden, "tkt_category_level", $CCSLocales->GetText("tkt_category_level"), ccsInteger, "", CCGetRequestParam("tkt_category_level", $Method, NULL), $this);
            $this->tkt_category_parent = new clsControl(ccsHidden, "tkt_category_parent", $CCSLocales->GetText("tkt_category_parent"), ccsText, "", CCGetRequestParam("tkt_category_parent", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @31-4D7B5821
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urledit_id"] = CCGetFromGet("edit_id", NULL);
    }
//End Initialize Method

//Validate Method @31-4E426675
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_category_id->Validate() && $Validation);
        $Validation = ($this->tkt_category_desc->Validate() && $Validation);
        $Validation = ($this->tkt_category_level->Validate() && $Validation);
        $Validation = ($this->tkt_category_parent->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_category_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_category_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_category_level->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_category_parent->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @31-798F8CA7
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_category_id->Errors->Count());
        $errors = ($errors || $this->tkt_category_desc->Errors->Count());
        $errors = ($errors || $this->tkt_category_level->Errors->Count());
        $errors = ($errors || $this->tkt_category_parent->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @31-ED04FC4E
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
        $Redirect = "SSFTicketInvCat.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "edit_id", "parent_id"));
        if($this->PressedButton == "Button_Delete") {
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
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

//InsertRow Method @31-058A9455
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_category_id->SetValue($this->tkt_category_id->GetValue(true));
        $this->DataSource->tkt_category_desc->SetValue($this->tkt_category_desc->GetValue(true));
        $this->DataSource->tkt_category_level->SetValue($this->tkt_category_level->GetValue(true));
        $this->DataSource->tkt_category_parent->SetValue($this->tkt_category_parent->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @31-18909596
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_category_id->SetValue($this->tkt_category_id->GetValue(true));
        $this->DataSource->tkt_category_desc->SetValue($this->tkt_category_desc->GetValue(true));
        $this->DataSource->tkt_category_level->SetValue($this->tkt_category_level->GetValue(true));
        $this->DataSource->tkt_category_parent->SetValue($this->tkt_category_parent->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @31-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @31-AD36F978
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


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
                    $this->tkt_category_id->SetValue($this->DataSource->tkt_category_id->GetValue());
                    $this->tkt_category_desc->SetValue($this->DataSource->tkt_category_desc->GetValue());
                    $this->tkt_category_level->SetValue($this->DataSource->tkt_category_level->GetValue());
                    $this->tkt_category_parent->SetValue($this->DataSource->tkt_category_parent->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_category_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_category_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_category_level->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_category_parent->Errors->ToString());
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

        $this->tkt_category_id->Show();
        $this->tkt_category_desc->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_category_level->Show();
        $this->tkt_category_parent->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_categories1 Class @31-FCB6E20C

class clsssf_tkt_categories1DataSource extends clsDBConnection1 {  //ssf_tkt_categories1DataSource Class @31-56389E10

//DataSource Variables @31-BFD62F3B
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
    public $tkt_category_id;
    public $tkt_category_desc;
    public $tkt_category_level;
    public $tkt_category_parent;
//End DataSource Variables

//DataSourceClass_Initialize Event @31-EFB22199
    function clsssf_tkt_categories1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_categories1/Error";
        $this->Initialize();
        $this->tkt_category_id = new clsField("tkt_category_id", ccsText, "");
        $this->tkt_category_desc = new clsField("tkt_category_desc", ccsText, "");
        $this->tkt_category_level = new clsField("tkt_category_level", ccsInteger, "");
        $this->tkt_category_parent = new clsField("tkt_category_parent", ccsText, "");

        $this->InsertFields["tkt_category_id"] = array("Name" => "tkt_category_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_category_desc"] = array("Name" => "tkt_category_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_category_level"] = array("Name" => "tkt_category_level", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_category_parent"] = array("Name" => "tkt_category_parent", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_category_id"] = array("Name" => "tkt_category_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_category_desc"] = array("Name" => "tkt_category_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_category_level"] = array("Name" => "tkt_category_level", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_category_parent"] = array("Name" => "tkt_category_parent", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @31-DA9DA10B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urledit_id", ccsText, "", "", $this->Parameters["urledit_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_category_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @31-5C6E6237
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @31-7985CF69
    function SetValues()
    {
        $this->tkt_category_id->SetDBValue($this->f("tkt_category_id"));
        $this->tkt_category_desc->SetDBValue($this->f("tkt_category_desc"));
        $this->tkt_category_level->SetDBValue(trim($this->f("tkt_category_level")));
        $this->tkt_category_parent->SetDBValue($this->f("tkt_category_parent"));
    }
//End SetValues Method

//Insert Method @31-FE146BE4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_category_id"]["Value"] = $this->tkt_category_id->GetDBValue(true);
        $this->InsertFields["tkt_category_desc"]["Value"] = $this->tkt_category_desc->GetDBValue(true);
        $this->InsertFields["tkt_category_level"]["Value"] = $this->tkt_category_level->GetDBValue(true);
        $this->InsertFields["tkt_category_parent"]["Value"] = $this->tkt_category_parent->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_categories", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @31-C4E4D508
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_category_id"]["Value"] = $this->tkt_category_id->GetDBValue(true);
        $this->UpdateFields["tkt_category_desc"]["Value"] = $this->tkt_category_desc->GetDBValue(true);
        $this->UpdateFields["tkt_category_level"]["Value"] = $this->tkt_category_level->GetDBValue(true);
        $this->UpdateFields["tkt_category_parent"]["Value"] = $this->tkt_category_parent->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_categories", $this->UpdateFields, $this);
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

//Delete Method @31-A332071B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_categories";
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

} //End ssf_tkt_categories1DataSource Class @31-FCB6E20C

class clsGridssf_tkt_categories_ssf_tk { //ssf_tkt_categories_ssf_tk class @47-AD5172DD

//Variables @47-C41B7734

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
    public $Sorter_tkt_plu_id;
    public $Sorter_tkt_plu_long_desc;
//End Variables

//Class_Initialize Event @47-D2AE1F94
    function clsGridssf_tkt_categories_ssf_tk($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_categories_ssf_tk";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_categories_ssf_tk";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_categories_ssf_tkDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_categories_ssf_tkOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_categories_ssf_tkDir", "");

        $this->tkt_plu_id = new clsControl(ccsLink, "tkt_plu_id", "tkt_plu_id", ccsText, "", CCGetRequestParam("tkt_plu_id", ccsGet, NULL), $this);
        $this->tkt_plu_id->Page = "SSFTicketProducts.php";
        $this->tkt_plu_long_desc = new clsControl(ccsLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", CCGetRequestParam("tkt_plu_long_desc", ccsGet, NULL), $this);
        $this->Sorter_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @47-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @47-309173E4
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlcateg_id"] = CCGetFromGet("categ_id", NULL);

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
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
                $this->tkt_plu_id->Parameters = "";
                $this->tkt_plu_id->Parameters = CCAddParam($this->tkt_plu_id->Parameters, "tkt_plu_id", $this->DataSource->f("tkt_plu_id"));
                $this->tkt_plu_id->Parameters = CCAddParam($this->tkt_plu_id->Parameters, "s_tkt_plu_id", $this->DataSource->f("tkt_plu_id"));
                $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_plu_id->Show();
                $this->tkt_plu_long_desc->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_plu_id->Show();
        $this->Sorter_tkt_plu_long_desc->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @47-357A8EB5
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_categories_ssf_tk Class @47-FCB6E20C

class clsssf_tkt_categories_ssf_tkDataSource extends clsDBConnection1 {  //ssf_tkt_categories_ssf_tkDataSource Class @47-1801D40C

//DataSource Variables @47-CFD9E262
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @47-F49BC9C7
    function clsssf_tkt_categories_ssf_tkDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_categories_ssf_tk";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @47-D086A706
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", "")));
    }
//End SetOrder Method

//Prepare Method @47-3CF9A39A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcateg_id", ccsText, "", "", $this->Parameters["urlcateg_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tkt_categories.tkt_category_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = "tkt_plu_cat1 = tkt_category_id and tkt_category_level = 1";
        $this->wp->Criterion[3] = "tkt_plu_cat2 = tkt_category_id and tkt_category_level = 2";
        $this->wp->Criterion[4] = "tkt_plu_cat3 = tkt_category_id and tkt_category_level = 3";
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], $this->wp->opOR(
             true, $this->wp->opOR(
             false, 
             $this->wp->Criterion[2], 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]));
    }
//End Prepare Method

//Open Method @47-FBB2272D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_plu,\n\n" .
        "ssf_tkt_categories";
        $this->SQL = "SELECT ssf_tkt_plu.* \n\n" .
        "FROM ssf_tkt_plu,\n\n" .
        "ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @47-B0AA8AD5
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
    }
//End SetValues Method

} //End ssf_tkt_categories_ssf_tkDataSource Class @47-FCB6E20C

//Initialize Page @1-293E8040
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
$TemplateFileName = "SSFTicketInvCat.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-8DFB6752
include("./SSFTicketInvCat_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-714FF427
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$Path_ssf_tkt_categories = new clsPathPath_ssf_tkt_categories("", $MainPage);
$ssf_tkt_categories = new clsDirectoryssf_tkt_categories("", $MainPage);
$ssf_tkt_categories1 = new clsRecordssf_tkt_categories1("", $MainPage);
$ssf_tkt_categories_ssf_tk = new clsGridssf_tkt_categories_ssf_tk("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->Path_ssf_tkt_categories = & $Path_ssf_tkt_categories;
$MainPage->ssf_tkt_categories = & $ssf_tkt_categories;
$MainPage->ssf_tkt_categories1 = & $ssf_tkt_categories1;
$MainPage->ssf_tkt_categories_ssf_tk = & $ssf_tkt_categories_ssf_tk;
$Path_ssf_tkt_categories->Initialize();
$ssf_tkt_categories->Initialize();
$ssf_tkt_categories1->Initialize();
$ssf_tkt_categories_ssf_tk->Initialize();

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

//Execute Components @1-9B078C9A
$SSFSpiritHeader->Operations();
$ssf_tkt_categories1->Operation();
//End Execute Components

//Go to destination page @1-F1B79FC3
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($Path_ssf_tkt_categories);
    unset($ssf_tkt_categories);
    unset($ssf_tkt_categories1);
    unset($ssf_tkt_categories_ssf_tk);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-57940C5B
$SSFSpiritHeader->Show();
$Path_ssf_tkt_categories->Show();
$ssf_tkt_categories->Show();
$ssf_tkt_categories1->Show();
$ssf_tkt_categories_ssf_tk->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-8B050955
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($Path_ssf_tkt_categories);
unset($ssf_tkt_categories);
unset($ssf_tkt_categories1);
unset($ssf_tkt_categories_ssf_tk);
unset($Tpl);
//End Unload Page


?>
