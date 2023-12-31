<%@ Page Language="C#" %>
<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
	
    <title>Banco Iniciativas R</title>
    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css"></link>
	<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.3.1207/styles/kendo.common.min.css" />
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.3.1207/styles/kendo.default.min.css" />
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.3.1207/styles/kendo.default.mobile.min.css" />

<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.3.1207/styles/kendo.material.min.css" />
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.3.1207/styles/kendo.material.mobile.min.css" />

   	
    <link rel="stylesheet" href="https://secol.sharepoint.com/sites/Intranet/SiteAssets/BancoIniciativas/BancoIniciativasDeploy/index.css"> </link>
  	
   	

    <meta http-equiv="X-UA-Compatible" content="IE=10" />
    <SharePoint:CssRegistration Name="default" runat="server"/>
    <SharePoint:CssLink runat="server" Version="15"/>


    
    <SharePoint:ScriptLink name="microsoftajax.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="init.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="sp.init.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="core.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="clienttemplates.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="clientforms.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="clientpeoplepicker.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="autofill.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="sp.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="sp.runtime.js" runat="server" LoadAfterUI="true" Localizable="false"/>
    <SharePoint:ScriptLink name="sp.core.js" runat="server" LoadAfterUI="true" Localizable="false"/>


</head>

<body>
    <SharePoint:AjaxDelta runat="server" id="suiteBarDelta" BlockElement="true"
        CssClass="ms-dialogHidden ms-fullWidth noindex">
        <SharePoint:SPSecurityTrimmedControl runat="server" AuthenticationRestrictions="AuthenticatedUsersOnly"
            EmitDiv="true"><div id="suiteMenuData" class="ms-hide"><span class="ms-siteactions-root" id="siteactiontd"><SharePoint:SiteActions runat="server" accesskey="<%$Resources:wss,tb_SiteActions_AK%>"
                        id="SiteActionsMenuMainData" PrefixHtml="" SuffixHtml=""
                        ImageUrl="/_layouts/15/images/spcommon.png?rev=40" ThemeKey="spcommon" MenuAlignment="Right"
                        LargeIconMode="false">
                        <CustomTemplate>
                            <SharePoint:Menu runat="server" Visible="false" />
                            <SharePoint:FeatureMenuTemplate runat="server" FeatureScope="Site"
                                Location="Microsoft.SharePoint.StandardMenu" GroupId="SiteActions" UseShortId="true">
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_ShareThisSite"
                                    Text="<%$Resources:wss,siteactions_sharethissite%>"
                                    Description="<%$Resources:wss,siteactions_sharethissitedescription%>"
                                    MenuGroupId="100" Sequence="110" UseShortId="true" PermissionsString="ViewPages"
                                    PermissionMode="Any" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_EditPage"
                                    Text="<%$Resources:wss,siteactions_editpage15%>"
                                    Description="<%$Resources:wss,siteactions_editpagedescriptionv4%>"
                                    ImageUrl="/_layouts/15/images/ActionsEditPage.png?rev=40" MenuGroupId="200"
                                    Sequence="210" PermissionsString="EditListItems"
                                    ClientOnClickNavigateUrl="javascript:ChangeLayoutMode(false);" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_CreatePage"
                                    Text="<%$Resources:wss,siteactions_addpage15%>"
                                    Description="<%$Resources:wss,siteactions_createpagedesc%>"
                                    ImageUrl="/_layouts/15/images/NewContentPageHH.png?rev=40" MenuGroupId="200"
                                    Sequence="220" UseShortId="true"
                                    ClientOnClickScriptContainingPrefixedUrl="OpenCreateWebPageDialog('~siteLayouts/createwebpage.aspx')"
                                    PermissionsString="AddListItems, EditListItems" PermissionMode="All" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_Create"
                                    Text="<%$Resources:wss,siteactions_addapp15%>"
                                    Description="<%$Resources:wss,siteactions_createdesc%>" MenuGroupId="200"
                                    Sequence="230" UseShortId="true"
                                    ClientOnClickScriptContainingPrefixedUrl="GoToPage('~siteLayouts/addanapp.aspx')"
                                    PermissionsString="ManageLists, ManageSubwebs" PermissionMode="Any" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_ViewAllSiteContents"
                                    Text="<%$Resources:wss,quiklnch_allcontent_15%>"
                                    Description="<%$Resources:wss,siteactions_allcontentdescription%>"
                                    ImageUrl="/_layouts/15/images/allcontent32.png?rev=40" MenuGroupId="200"
                                    Sequence="240" UseShortId="true"
                                    ClientOnClickNavigateUrl="~siteLayouts/viewlsts.aspx"
                                    PermissionsString="ViewFormPages" PermissionMode="Any" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_ChangeTheLook"
                                    Text="<%$Resources:wss,siteactions_changethelook15%>"
                                    Description="<%$Resources:wss,siteactions_changethelookdesc15%>" MenuGroupId="300"
                                    Sequence="310" UseShortId="true"
                                    ClientOnClickNavigateUrl="~siteLayouts/designgallery.aspx"
                                    PermissionsString="ApplyThemeAndBorder,ApplyStyleSheets,Open,ViewPages,OpenItems,ViewListItems"
                                    PermissionMode="All" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_Settings"
                                    Text="<%$Resources:wss,siteactions_settings15%>"
                                    Description="<%$Resources:wss,siteactions_sitesettingsdescriptionv4%>"
                                    ImageUrl="/_layouts/15/images/settingsIcon.png?rev=40" MenuGroupId="300"
                                    Sequence="320" UseShortId="true"
                                    ClientOnClickScriptContainingPrefixedUrl="GoToPage('~siteLayouts/settings.aspx')"
                                    PermissionsString="EnumeratePermissions,ManageWeb,ManageSubwebs,AddAndCustomizePages,ApplyThemeAndBorder,ManageAlerts,ManageLists,ViewUsageData"
                                    PermissionMode="Any" />
                                <SharePoint:MenuItemTemplate runat="server" id="MenuItem_SwitchToMobileView"
                                    Visible="false" Text="<%$Resources:wss,siteactions_switchtomobileview%>"
                                    Description="<%$Resources:wss,siteactions_switchtomobileviewdesc%>"
                                    MenuGroupId="300" Sequence="330" UseShortId="true"
                                    ClientOnClickScript="STSNavigate(StURLSetVar2(ajaxNavigate.get_href(), 'mobile', '1'));" />
                            </SharePoint:FeatureMenuTemplate>
                        </CustomTemplate>
                    </SharePoint:SiteActions></span></div><SharePoint:ScriptBlock runat="server">
	
	
	
                var g_navBarHelpDefaultKey = "HelpHome";
            </SharePoint:ScriptBlock><SharePoint:DelegateControl id="ID_SuiteBarDelegate" ControlId="SuiteBarDelegate" runat="server" /></SharePoint:SPSecurityTrimmedControl>
    </SharePoint:AjaxDelta>
  
       		<form id="form" runat="server">
                <div id="grid" > 
                </div>
                <!--<div class="container">
                    <div class="grid-p">
                        <div class="grid--11-cols">
            	       
                        </div>
                    </div>
                </div>
            -->
                
            </form>
                  
	<script type="text/javascript" src="/_layouts/15/clienttemplates.js"></script>
	<script type="text/javascript" src="/_layouts/15/clientforms.js"></script>
	<script type="text/javascript" src="/_layouts/15/clientpeoplepicker.js"></script>
	<script type="text/javascript" src="/_layouts/15/autofill.js"></script>    
    <script src="https://kendo.cdn.telerik.com/2021.3.1207/js/kendo.all.min.js"></script>



   <script type="text/javascript" src="https://secol.sharepoint.com/sites/Intranet/SiteAssets/BancoIniciativas/BancoIniciativasDeploy/index.js"></script>
   
</body>

</html>