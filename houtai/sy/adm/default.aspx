<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.houtai.sy.adm._default" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <link type="text/css" rel="stylesheet" href="../../images/style.css" />
    <script type="text/javascript" src="../../images/util.js"></script>
    <script src="../../../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" style="margin: 0; padding: 0;">
        <div class="main-wrap">
            <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>                 
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr height="40">
                            <td width="20" valign="middle">
                                <img src="../../images/home_icon.png" />
                            </td>
                            <td>
                                您现在的位置：<font color="DarkSlateGray"><b>用户管理</b></font>&nbsp;->&nbsp;后台管理员&nbsp;&nbsp;<a href="default.aspx">[刷新列表]</a>&nbsp;<a
                                    href="add.aspx">[增加]</a>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" height="35">
                        <tr>
                            <td>名称&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtKeywords" Width="80px" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;<asp:Button ID="btnSearch" class="buttonblue" runat="server" Text=" 查询 " OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
                        <thead class="tb-tit-bg">
                            <tr>
                                <th width="28px" align="center">
                                    <asp:CheckBox ID="chkSelectedAll" runat="server" Text="" OnCheckedChanged="chkSelectedAll_CheckedChanged"
                                        AutoPostBack="True" />
                                </th>                              
                                <th align="left">
                                    <div class="th-gap">
                                        用户名
                                    </div>
                                </th>
                                <th>
                                    <div class="th-gap">
                                        姓名
                                    </div>
                                </th>                                                            
                                <th>
                                    <div class="th-gap">
                                        登陆次数
                                    </div>
                                </th>
                                <th>
                                    <div class="th-gap">
                                        登陆IP
                                    </div>
                                </th>
                                <th>
                                    <div class="th-gap">
                                        登陆时间
                                    </div>
                                </th>
                                <th>
                                    <div class="th-gap">
                                        操作者
                                    </div>
                                </th>
                                <th>
                                    <div class="th-gap">
                                        操作时间
                                    </div>
                                </th>
                                <th align="center" width="100px">
                                    <div class="th-gap">
                                        操作
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <asp:Repeater ID="rpList" runat="server">
                            <ItemTemplate>
                                <tr class="<%#(Container.ItemIndex%2==0)?"even":"odd"%>" onmouseover="highlightRows(this,'<%#(Container.ItemIndex%2==0)?"even":"odd"%>')"
                                    onmouseout="highlightRows(this,'<%#(Container.ItemIndex%2==0)?"even":"odd"%>')">
                                    <td align="center">
                                        <asp:CheckBox ID="chkbId" runat="server" />
                                    </td>                                                         
                                    <td align="left">
                                        <%#Eval("bName")%>
                                    </td>
                                    <td align="center">
                                        <%#Eval("bRealName")%>
                                    </td>                                   
                                    <td align="center">
                                        <%#Eval("bLoginCount")%>
                                    </td>
                                    <td align="center">
                                        <%#Eval("bLoginIP")%>
                                    </td>
                                    <td align="center" nowrap>
                                        <%#Eval("bLoginTime", "{0:yyyy-MM-dd HH:mm:ss}")%>                                       
                                    </td>
                                    <td align="center">
                                        <%#Eval("bAddUser")%>
                                    </td>
                                    <td align="center" nowrap>
                                        <%#Eval("bAddTime", "{0:yyyy-MM-dd HH:mm:ss}")%>                                       
                                    </td>
                                    <td align="center">
                                        <asp:HiddenField ID="bId" runat="server" Value='<%# Eval("bId")%>' />
                                        <asp:HyperLink ID="btnEdit" CssClass="icon icon-edit" runat="server" NavigateUrl='<%# "modify.aspx?id=" + Eval("bId").ToString()%>'
                                            Text="编辑"></asp:HyperLink>&nbsp;
                                        <asp:LinkButton ID="btnDelete" runat="server" CssClass="icon icon-del" OnClientClick="return confirm('确认要删除吗?');"
                                            OnClick="rpList_DeleteButton" CommandArgument='<%#Eval("bId")%>' Text="删除"></asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                                    <tr>
                                        <td colspan="9">
                                            <asp:Label ID="lblEmpty" Text="找不到任何数据" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </asp:Panel>
                            </FooterTemplate>
                        </asp:Repeater>
                    </table>
                    <table cellspacing="1" cellpadding="1" style="width: 100%;" align="center">
                        <tr>
                            <td>
                                <asp:AspNetPager ID="MyPager" runat="server" Height="35px" Width="100%" PageSize="15"
                                    CustomInfoHTML="页次: <font color=red><b>%currentPageIndex%</b></font>/<font color=#333333><b>%PageCount%</b></font> 页 <b>%PageSize%</b>条/页    共 <font color=#333333><b>%RecordCount%</b></font> 条记录"
                                    PageIndexBoxType="DropDownList" ShowPageIndexBox="Never" ShowCustomInfoSection="Right"
                                    AlwaysShow="True" Wrap="False" LayoutType="Table" HorizontalAlign="Justify" CustomInfoTextAlign="Right"
                                    FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PrevPageText="上一页" Direction="LeftToRight"
                                    OnPageChanged="MyPager_PageChanged">
                                </asp:AspNetPager>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="40">
                                <asp:Button ID="btnBatchDeleted" runat="server" CssClass="buttonblue" Text="批量删除"
                                    OnClick="btnBatchDeleted_Click" />
                            </td>
                        </tr>
                    </table>              
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
