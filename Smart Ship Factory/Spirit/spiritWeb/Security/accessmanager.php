<?php

class AccessManager {


	function CheckUserAction ($action ) {
			$user = CCGetSession("UserID");
			if (strtolower($user) == "ssf" )
				return true ;

			$ret = false ;
			// Chequeo si existe el permiso en las acciones directas asignadas al usuario
			$db = new clsDBConnection1();
			$ssfQuery = "select 1 from ssf_sec_user_access where user_id ='".$user."' and action_id ='".$action."' and user_rights = 1 ";
			$db->query($ssfQuery);
			$Result = $db->next_record();
			if ($Result)
				$ret = true ;
			else {
				// Chequeo si existe el permiso en alguno de los roles asignados al usuario
				$ssfQuery = "select 1 from ssf_sec_role_access a, ssf_sec_user_roles b where a.role_id = b.user_role and b.user_id = '".$user."' and a.action_id ='".$action."' and a.role_rights = 1 ";
				$db->query($ssfQuery);
				$Result = $db->next_record();
				if ($Result)
					$ret = true ;
			}
			$db->close();
			return $ret ;
	}	

	function GetAllPermissionsforUser (& $db, & $Result) {
			$user = CCGetSession("UserID");
			if (strtolower($user) == "ssf" ) {
				$ssfQuery = "select action_id from ssf_sec_actions  " ;
			} else {
				$ssfQuery = "select action_id from ssf_sec_user_access where user_id ='".$user."' and  user_rights = 1 " ;
				$ssfQuery .= " union	"	;
				$ssfQuery .= " select a.action_id as action_id from ssf_sec_role_access a, ssf_sec_user_roles b where a.role_id = b.user_role and b.user_id = '".$user."' and a.role_rights = 1 " ;
			}
			$db->query($ssfQuery);
			$Result = $db->next_record();
			return true ;
	}


	function CheckObjectsExistance() {
		$this->InsertAction("WEB_CHANGEPRICE_EDIT","SSF_CHANGEPRICE_EDIT_TEXT");
		$this->InsertAction("WEB_CHANGEPRICE_VIEW","SSF_CHANGEPRICE_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_DEV_VIEW","SSF_CONF_DEV_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_DEV_EDIT","SSF_CONF_DEV_EDIT_TEXT");
		$this->InsertAction("WEB_CONF_GEN_EDIT","SSF_CONF_GEN_EDIT_TEXT");
		$this->InsertAction("WEB_CONF_GEN_VIEW","SSF_CONF_GEN_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_MAN_ORIG_CONF_VIEW","SSF_CONF_MAN_ORIG_CONF_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_MAN_TRX_TO_TEST_VIEW","SSF_CONF_MAN_TRX_TO_TEST_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_MAN_TRX_TO_TEST_EDIT","SSF_CONF_MAN_TRX_TO_TEST_EDIT_TEXT");
		$this->InsertAction("WEB_CONF_MAN_DEL_SCH_EDIT","SSF_CONF_MAN_DEL_SCH_EDIT_TEXT");
		$this->InsertAction("WEB_CONF_MAN_DEL_SCH_VIEW","SSF_CONF_MAN_DEL_SCH_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_PAY_VIEW","SSF_CONF_PAY_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_PUMP_GROUP_VIEW","SSF_CONF_PUMP_GROUP_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_PUMP_GROUP_EDIT","SSF_CONF_PUMP_GROUP_EDIT_TEXT");
		$this->InsertAction("WEB_OPE_CIE_PER","WEB_OPE_CIE_PER_TEXT");
		$this->InsertAction("WEB_REP_CHP","SSF_REP_CHP_TEXT");
		$this->InsertAction("WEB_REP_PER","SSF_REP_PER_TEXT");
		$this->InsertAction("WEB_REP_TRX","SSF_REP_TRX_TEXT");
		$this->InsertAction("WEB_REP_VER","SSF_REP_VER_TEXT");
		$this->InsertAction("WEB_REP_CONF","SSF_REP_CONF_TEXT");
		$this->InsertAction("WEB_REP_SEG","SSF_REP_SEG_TEXT");
		$this->InsertAction("WEB_REP_TAG_SALE","SSF_REP_TAG_SALE_TEXT");
		$this->InsertAction("WEB_SEG_ROL","SSF_SEG_ROL_TEXT");
		$this->InsertAction("WEB_SEG_ROL_EDIT","SSF_SEG_ROL_EDIT_TEXT");
		$this->InsertAction("WEB_SEG_USR","SSF_SEG_USR_TEXT");
		$this->InsertAction("WEB_SEG_USR_EDIT","SSF_SEG_USR_EDIT_TEXT");
		$this->InsertAction("WEB_SEG_USR_TAG_VIEW","SSF_SEG_USR_TAG_VIEW_TEXT");
		$this->InsertAction("WEB_SEG_USR_TAG_EDIT","SSF_SEG_USR_TAG_EDIT_TEXT");
		$this->InsertAction("WEB_CONF_TCT_EDIT","SSF_CONF_TCT_EDIT_TEXT");
		$this->InsertAction("WEB_CONF_TCT_VIEW","SSF_CONF_TCT_VIEW_TEXT");
		$this->InsertAction("WEB_OPE_TDEL","SSF_OPE_TDEL_TEXT");
		$this->InsertAction("WEB_OPE_TCHS","SSF_OPE_TCHS_TEXT");
		$this->InsertAction("WEB_OPE_FOR_STA","SSF_OPE_FOR_STA_TEXT");
		$this->InsertAction("WEB_OPE_SER_BCH","SSF_OPE_SER_BCH_TEXT");
		$this->InsertAction("WEB_OPE_DLN","SSF_OPE_DLN_TEXT");
		$this->InsertAction("WEB_OPE_EXM","SSF_OPE_EXM_TEXT");
		$this->InsertAction("WEB_OPE_IMM","SSF_OPE_IMM_TEXT");
		$this->InsertAction("WEB_OPE_DEL_TBL","SSF_OPE_DEL_TBL_TEXT");
		$this->InsertAction("WEB_CONF_EVENT_VIEW","SSF_CONF_EVENT_VIEW_TEXT");
		$this->InsertAction("WEB_CONF_EVENT_EDIT","SSF_CONF_EVENT_EDIT_TEXT");

		// Permisos de Ticket 
		$this->InsertAction("WEB_TKT_CONF","SSF_TKT_CONF_TEXT");
		$this->InsertAction("WEB_TKT_UOM_EDIT","SSF_TKT_UOM_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_POS_EDIT","SSF_TKT_POS_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_ROB_VIEW","SSF_TKT_ROB_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_ROB_EDIT","SSF_TKT_ROB_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_CLG_EDIT","SSF_TKT_CLG_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_JER_VIEW","SSF_TKT_JER_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_JER_EDIT","SSF_TKT_JER_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_PRO_VIEW","SSF_TKT_PRO_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PRO_EDIT","SSF_TKT_PRO_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_PRI_VIEW","SSF_TKT_PRI_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PRI_EDIT","SSF_TKT_PRI_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_LPRI_VIEW","SSF_TKT_LPRI_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_LPRI_EDIT","SSF_TKT_LPRI_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_TAX_VIEW","SSF_TKT_TAX_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_TAX_EDIT","SSF_TKT_TAX_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_TAX_GRP_VIEW","SSF_TKT_TAX_GRP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_TAX_GRP_EDIT","SSF_TKT_TAX_GRP_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_CUS_VIEW","SSF_TKT_CUS_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_CUS_EDIT","SSF_TKT_CUS_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_CUS_ACCNT_VIEW","SSF_TKT_CUS_ACCNT_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_CUS_ACCNT_EDIT","SSF_TKT_CUS_ACCNT_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_CUS_PROD_VIEW","SSF_TKT_CUS_PROD_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_CUS_PROD_EDIT","SSF_TKT_CUS_PROD_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_CUS_TAX_VIEW","SSF_TKT_CUS_TAX_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_CUS_TAX_EDIT","SSF_TKT_CUS_TAX_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_TEN_VIEW","SSF_TKT_TEN_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_TEN_EDIT","SSF_TKT_TEN_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_REC_VIEW","SSF_TKT_REC_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_REC_EDIT","SSF_TKT_REC_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_SKG_VIEW","SSF_TKT_SKG_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_SKG_EDIT","SSF_TKT_SKG_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_SKP_VIEW","SSF_TKT_SKP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_SKP_EDIT","SSF_TKT_SKP_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_MAPG_VIEW","SSF_TKT_MAPG_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_MAPG_EDIT","SSF_TKT_MAPG_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_TAX_REP_VIEW","SSF_TKT_TAX_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PRO_REP_VIEW","SSF_TKT_PRO_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PRI_REP_VIEW","SSF_TKT_PRI_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_TXH_REP_VIEW","SSF_TKT_TXH_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_TXR_REP_VIEW","SSF_TKT_TXR_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_SBP_REP_VIEW","SSF_TKT_SBP_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PER_REP_VIEW","SSF_TKT_PER_REP_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PRT_VIEW","SSF_TKT_PRT_VIEW_TEXT");
		$this->InsertAction("WEB_TKT_PRT_EDIT","SSF_TKT_PRT_EDIT_TEXT");
		$this->InsertAction("WEB_TKT_CIE_VIEW","SSF_TKT_CIE_VIEW_TEXT");
		if(CCGetSession("SSFCustomizationGroup") == "GUATEMALA001") {
			$this->InsertAction("WEB_TKT_SAT_ING_RES","WEB_TKT_SAT_ING_RES_TEXT");
			$this->InsertAction("WEB_TKT_SAT_TRX_REP_VIEW","SSF_TKT_SAT_TRX_REP_VIEW_TEXT");
			$this->InsertAction("WEB_TKT_SAT_RES_REP_VIEW","SSF_TKT_SAT_RES_REP_VIEW_TEXT");
		}

		if (CCGetSession("CONVOL") == "Y") {
			$this->InsertAction("WEB_OPE_CON_GPGPKEY","WEB_OPE_CON_GPGPKEY_TEXT");
			$this->InsertAction("WEB_OPE_CON_CLOSE_VIEW","WEB_OPE_CON_CLOSE_VIEW_TEXT");
			$this->InsertAction("WEB_OPE_CON_CLOSE_EDIT","WEB_OPE_CON_CLOSE_EDIT_TEXT");
			$this->InsertAction("WEB_OPE_CON_EXFILE","WEB_OPE_CON_EXFILE_TEXT");
		}

		// Permisos de Flota
		$this->InsertAction("WEB_FLT_PRMOD_VIEW","WEB_FLT_PRMOD_VIEW_TEXT");
		$this->InsertAction("WEB_FLT_PRMOD_EDIT","WEB_FLT_PRMOD_EDIT_TEXT");
		$this->InsertAction("WEB_FLT_PRPRO_VIEW","WEB_FLT_PRPRO_VIEW_TEXT");
		$this->InsertAction("WEB_FLT_PRPRO_EDIT","WEB_FLT_PRPRO_EDIT_TEXT");
		$this->InsertAction("WEB_FLT_TMPRO_VIEW","WEB_FLT_TMPRO_VIEW_TEXT");
		$this->InsertAction("WEB_FLT_TMPRO_EDIT","WEB_FLT_TMPRO_EDIT_TEXT");
		$this->InsertAction("WEB_FLT_LIPRO_VIEW","WEB_FLT_LIPRO_VIEW_TEXT");
		$this->InsertAction("WEB_FLT_LIPRO_EDIT","WEB_FLT_LIPRO_EDIT_TEXT");
		$this->InsertAction("WEB_FLT_ZOPRO_VIEW","WEB_FLT_ZOPRO_VIEW_TEXT");
		$this->InsertAction("WEB_FLT_ZOPRO_EDIT","WEB_FLT_ZOPRO_EDIT_TEXT");
		$this->InsertAction("WEB_FLT_CUS_ACCNT_VIEW","WEB_FLT_CUS_ACCNT_VIEW_TEXT");
		$this->InsertAction("WEB_FLT_CUS_ACCNT_EDIT","WEB_FLT_CUS_ACCNT_EDIT_TEXT");
		$this->InsertAction("WEB_FLT_REP_ACCBAL","WEB_FLT_REP_ACCBAL_TEXT");
		$this->InsertAction("WEB_FLT_REP_SUBACCBAL","WEB_FLT_REP_SUBACCBAL_TEXT");
	}

	function InsertAction($action_id, $action_desc) {
		global $CCSLocales ;
		$action_desc_temp = $CCSLocales->GetText($action_desc) ;
		if ($action_desc_temp != "" )
			$action_desc = $action_desc_temp ;
		//echo $action_desc ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select 1 from ssf_sec_actions where action_id = '" . $action_id."'" ;
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if (!$Result) {
			$ssfQuery = " insert into ssf_sec_actions values ( '".$action_id."','".$action_desc."' ) " ; 
			$db->query($ssfQuery);
		}
		$db->close();
		return true ;
	}

	function GetSiteNameandNumber (& $s_name, & $s_number) {
		$s_number = "" ;
		$s_name = "" ;
		$ssfQuery = "select parameter, param_value from ssf_generic_config_values " ;
		$ssfQuery .= " where library = 'ForecourtManager' and id = 'ForecourtManager' " ;
		$ssfQuery .= " and groupname = 'general' and (parameter = 'station_number' or parameter = 'station_name') " ; 
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$Result = $db->next_record();
		while($Result)
		{
			if ($db->f("parameter") == "station_number")
				$s_number = $db->f("param_value") ;
			else
				$s_name = $db->f("param_value") ;
			$Result = $db->next_record();
		} 
		$db->close(); 
		return true ;
	}

	function GetTanksAvilable () {
		$s_available = false ;
		$ssfQuery = " select parameter, param_value from config_values " ;
		$ssfQuery .= " where library = 'tank' " ;
		$ssfQuery .= " and groupname = 'general' and parameter = 'ID'  " ; 
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if ($Result)
			$s_available = true ;
		$db->close(); 
		return $s_available ;
	}

	function CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,&$Redirect) {
		if (!$EditisAllowed and !$ViewisAllowed) 
			$Redirect = $PathToRoot."Security/Login.php" ;
	}


	function CreateDeleteSchedule() {
		$this->InsertDeleteScheduleRecord("PUMPSALES", "ssf_export_pump_sales", 365,'GENERIC',1) ;
		$this->InsertDeleteScheduleRecord("PRICES", "ssf_tkt_prices", 365,'GENERIC',2) ;
		$this->InsertDeleteScheduleRecord("POSSALES", "ssf_pump_sales", 365,'TICKET',3) ;
		$this->InsertDeleteScheduleRecord("POSPRICES", "ssf_tkt_prices", 365,'TICKET',4) ;
		$this->InsertDeleteScheduleRecord("TANKSTOCK", "ssf_tank_stock", 365,'TANK',5) ;
	}

	function InsertDeleteScheduleRecord($del_id, $del_desc, $del_days, $del_module, $del_order) {
		$db = new clsDBConnection1();
		$ssfQuery = " Select 1 from ssf_delete_schedule where del_id = '" . $del_id."'" ;
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if (!$Result) {
			$ssfQuery = " insert into ssf_delete_schedule (del_id,del_description ,del_days, del_module, del_order) " ;
			$ssfQuery .= " values ( '".$del_id."','".$del_desc."',".$del_days.",'".$del_module."',".$del_order." ) " ; 
			$db->query($ssfQuery);
		}
		$db->close();
		return true ;
	}


	function InsertGentericFTPParams() {
		global $CCSLocales ;
		$this->InsertGenericConfigParam("FtpServiceHo","FtpServiceHo","general","url",$CCSLocales->GetText("ssf_ftp_url"),$CCSLocales->GetText("ssf_ftp_url_tip"),"text","150","''","www.go-ssf.com","N","001") ;
		$this->InsertGenericConfigParam("FtpServiceHo","FtpServiceHo","general","user",$CCSLocales->GetText("ssf_ftp_user"),$CCSLocales->GetText("ssf_ftp_user"),"text","30","''","userftp_go-ssf.com","N","002") ;
		$this->InsertGenericConfigParam("FtpServiceHo","FtpServiceHo","general","password",$CCSLocales->GetText("ssf_ftp_pass"),$CCSLocales->GetText("ssf_ftp_pass"),"text","30","''","az1938","N","003") ;
	}

	function InsertGenericConfigParam($module,$type,$subgroup,$name,$label,$tip,$data_type,$min_value,$max_value,$default_value,$is_unique,$param_order) {
		$db = new clsDBConnection1();
		$ssfQuery = " Select 1 from ssf_generic_config_param where module = '". $module."'".
					" and type ='". $type."'".
					" and subgroup ='". $subgroup."'".
					" and name ='". $name."'" ;
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if (!$Result) {
			$ssfQuery = " insert into ssf_generic_config_param (module,type,subgroup,name,label,tip,data_type,min_value,max_value,default_value,is_unique,param_order) " ;
			$ssfQuery .= " values ( '".$module."','".$type."','".$subgroup."','".$name."','".$label."','".$tip."','".$data_type."','".$min_value."','".$max_value."','".$default_value."','".$is_unique."','".$param_order."' ) " ; 
			$db->query($ssfQuery);
		}
		$db->close();
		return true ;
	}

}

?>