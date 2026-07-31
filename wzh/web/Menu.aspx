<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Menu.aspx.vb" Inherits="Menu" %>

<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/UserControls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!--JQUERY-->
    <script type="text/javascript" src="./jquery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="./jquery-ui-1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript" src="./jquery/jquery.cookie.js"></script>
    <link rel="stylesheet" href="./jquery-ui-1.12.1/jquery-ui.css" />

    <%--共通--%>
    <%-- <link href="./App_Themes/Css/Main.css?randomId=<%=PageCom.GetYmdhmsf()%>" rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript" src="./Js/Main.js?randomId=<%=PageCom.GetYmdhmsf()%>"></script>

    <%--自分頁--%>
    <link rel="stylesheet" href="./Menu.css" />
    <script type="text/javascript" src="./Menu.js?randomId=<%=PageCom.GetYmdhmsf()%>"></script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="CoverIt()">
        <uc1:Header runat="server" ID="UserHeader" title="菜单" />
        <article>
            <div class="row">
                <div class="col-left">
                    <div class="section-title">MS登录</div>
                    <hr />
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnUserIns" runat="server" Text="用户登録画面" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('m_user')" /></div>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnMsLine" runat="server" Text="生产线Ms" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('m_line')" /></div>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnMsTools" runat="server" Text="治具Ms" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('m_tools')" /></div>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnGoodsName" runat="server" Text="商品名Ms" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('m_goods_tmp')" /></div>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnMubiao" runat="server" Text="目标时间Ms" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('m_mubiao_time')" /></div>



                    <%--TB_SetAllCheck--%>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnQuanshu" runat="server" Text="全数检查MS" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('TB_SetAllCheck')" /></div>
                    <%--m_first_chk_cds--%>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnFirstChk" runat="server" Text="初检的CDs" CssClass="menu_button light_yellow" /><input type="button" class="new-badge" value="NEW" onclick="login('m_first_chk_cds')" /></div>
                    <div class="sub-box">
                        <span style="font-weight: 600; color: #555;">三方昭和（以下两个相同）</span><br />
                        <%--t_first_check--%>
                        <a href="APP/相同CD导入新系统.xlsm" class="menu_button light_yellow" style="width:300px;">相同CD EXCEL</a><br />

                        <%--t_first_check--%>
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnSame" runat="server" Text="相同CD WEB" CssClass="menu_button light_yellow" Width="268px" />
                            <input type="button" class="new-badge" value="NEW" onclick="login('t_first_check')" />

                        </div>


                    </div>

                    <div class="section-title">模版登录</div>
                    <hr />

                    <div class="menu-btn-wrap">
                        <asp:Button ID="btntemplate" runat="server" Text="检查项目登录" CssClass="menu_button Orange" />

                        <input type="button" class="new-badge" value="NEW" onclick="login('m_km_template')" />
                    </div>
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnCdSysJoin" runat="server" Text="商品与体系关联" CssClass="menu_button Orange" />

                        <input type="button" class="new-badge" value="NEW" onclick="login('m_sys_join')" />


                    </div>

                    <asp:Button ID="btnTmpAndLevelJoin" runat="server" Text="仕様と分類関連" CssClass="menu_button Orange" Visible="False" /><br />


                    <div class="section-title">结果修正</div>
                    <hr />
                    <div class="menu-btn-wrap">
                        <asp:Button ID="Button1" runat="server" Text="检查结果修正" CssClass="menu_button light_blue" />

                        <input type="button" class="new-badge" value="NEW" onclick="login('t_check')" />


                    </div>

                    <%--不要了--%>
                    <%--<asp:Button ID="Button2" runat="server" Text="检查结果明细修正" CssClass="menu_button light_blue" Visible="false" /><br />--%>

                    <input type="button" class="menu_button light_blue" value="不良替代" onclick="window.open('./BuLiang/SpreadSheetMs管理.html')" />


                </div>
                <div class="col-right">
                    <div class="section-title">检查</div>
                    <hr />
                    <div class="menu-btn-wrap">
                        <asp:Button ID="btnChkMs" runat="server" Text="检查一览" CssClass="menu_button Orange" /></div>



                    <div class="section-title">帐票</div>
                    <hr />
                    <div class="btn-row">
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnMakePlan" runat="server" Text="出力账票前，先执行" CssClass="menu_button light_blue" /></div>
                    </div>
       

                    <div class="btn-row">
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnChkResultList" runat="server" Text="【检查结果明细表】" CssClass="menu_button light_green" />
                            <input type="button" class="new-badge" value="NEW" title="" onclick="loginView('v_A01_result_list_2026')"/></div>
                    </div>
            

                    <div class="btn-row">
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnChkResultListMS" runat="server" Text="【检查明细表】" CssClass="menu_button light_green" />
                            <input type="button" class="new-badge" value="NEW" onclick="loginView('v_A02_check_result_ms_2026')" /></div>
                    </div>
           
                    
                    <div class="btn-row">
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnMiCheckList" runat="server" Text="【未检查一览】" CssClass="menu_button light_green" />
                            
                            <input type="button" class="new-badge" value="NEW" onclick="loginView('v_A03_mi_check_result_2026')" /></div>
                    </div>
              

                    <div class="btn-row">
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnChkResultListEdit" runat="server" Text="【检查结果修正表】" CssClass="menu_button light_green" />
                            
                            
                            <input type="button" class="new-badge" value="NEW" onclick="loginView('v_A04_result_list_2026')" /></div>
                    </div>
            

                    <div class="btn-row">
                        <div class="menu-btn-wrap">
                            <asp:Button ID="btnSCX" runat="server" Text="【生产性表】" CssClass="menu_button light_green" />
                            
                            
                                     <input type="button" class="new-badge" value="NEW" onclick="loginView('v_A05_check_scx_one')" /></div>
                    </div>
            

                    <asp:Button ID="btn23" runat="server" Text="(2.生产完➡3.待检)" CssClass="menu_button Orange" Visible="false" />
                    <asp:Button ID="btn34" runat="server" Text="(3.待检➡4.检查完了)" CssClass="menu_button Orange" Visible="false" /><br />
                    <asp:Button ID="btnTpList" runat="server" Text="托盘一览" CssClass="menu_button Orange" Visible="false" />

                    <hr />
                    <asp:Button ID="btnBack" runat="server" Text="返回" CssClass="menu_button NavajoWhite" />


                    <%--                    以下测试用（无视）：<br />
                    <asp:Button ID="Button2" runat="server" Text="检查结果明细" CssClass="menu_button light_yellow" /><br />
                    <asp:Button ID="Button3" runat="server" Text="检查结果总汇" CssClass="menu_button light_yellow" /><br />
                    <asp:Button ID="Button4" runat="server" Text="未检查一览" CssClass="menu_button light_yellow" /><br />
                    <asp:Button ID="Button5" runat="server" Text="检查项目一览" CssClass="menu_button light_yellow" /><br />
                    <asp:Button ID="Button6" runat="server" Text="检查明细一览" CssClass="menu_button light_yellow" Visible="False" /><br />
                    --%>
                    &nbsp;

                </div>


            </div>


        </article>
        <uc1:Footer runat="server" ID="UserFooter" />
    </form>
</body>
</html>
