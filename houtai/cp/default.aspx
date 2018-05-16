<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.houtai.cp._default" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <script type="text/javascript" src="../images/util.js"></script>
    <script src="../../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script charset="utf-8" src="../../editor/kindeditor-all-min.js"></script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" style="margin: 0; padding: 0;">
        <div class="main-wrap">
            <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr height="40">
                            <td width="20" valign="middle">
                                <img src="../images/home_icon.png" />
                            </td>
                            <td>�����ڵ�λ�ã�<font color="DarkSlateGray"><b>��Ʒչʾ</b></font>&nbsp;->&nbsp;<a href="default.aspx">[ˢ���б�]</a>&nbsp;&nbsp;<a href="add.aspx">[����]</a>
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" height="35">
                        <tr>
                            <td>����&nbsp;
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlbClassID" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="ddlbClassID_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;����&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtKeywords" Width="80px" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                            <td>&nbsp;<asp:Button ID="btnSearch" class="buttonblue" runat="server" Text=" ��ѯ " OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
                        <thead class="tb-tit-bg">
                            <tr>
                                <th width="30px" align="center">
                                    <asp:CheckBox ID="chkSelectedAll" runat="server" Text="" OnCheckedChanged="chkSelectedAll_CheckedChanged"
                                        AutoPostBack="True" />
                                </th>
                                <th width="30px">���
                                </th>
                                <th width="100px">��Ŀ
                                </th>
                                <th style="text-align: left;">����
                                </th>
                                <th width="100px">����ʱ��
                                </th>
                                <th width="50px">�����
                                </th>
                                 <th width="30px">��Ʒ
                                </th>
                                <th width="30px">�ö�
                                </th>
                                <th width="30px">�Ƽ�
                                </th>
                                <th width="30px">���
                                </th>
                                <th width="170px">����
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
                                    <td align="center">
                                        <%# Container.ItemIndex + 1 + MyPager.PageSize*(MyPager.CurrentPageIndex-1)%>
                                    </td>
                                    <td align="center">
                                        <%#Eval("bClassName")%>
                                    </td>
                                    <td align="left">
                                        <%#Eval("bTitle")%>
                                    </td>
                                    <td align="center">
                                        <%#Eval("bAddTime")%>
                                    </td>
                                    <td align="center">
                                        <%#Eval("bClick")%>
                                    </td>
                                    <td align="center">
                                        <asp:CheckBox ID="bIsNew" runat="server" Enabled="false" Checked='<%#Eval("bIsNew").ToString()=="1"?true:false%>' />
                                    </td>
                                    <td align="center">
                                        <asp:CheckBox ID="bIsTop" runat="server" Enabled="false" Checked='<%#Eval("bIsTop").ToString()=="1"?true:false%>' />
                                    </td>
                                    <td align="center">
                                        <asp:CheckBox ID="bIsBest" runat="server" Enabled="false" Checked='<%#Eval("bIsBest").ToString()=="1"?true:false%>' />
                                    </td>
                                    <td align="center">
                                        <asp:CheckBox ID="bIsPass" runat="server" Enabled="false" Checked='<%#Eval("bIsPass").ToString()=="1"?true:false%>' />
                                    </td>
                                    <td align="center">
                                        <asp:HiddenField ID="bId" runat="server" Value='<%# Eval("bId").ToString()%>' />
                                        <asp:HyperLink ID="btnEdit" CssClass="icon icon-edit" runat="server" NavigateUrl='<%# "modify.aspx?id=" + Eval("bId").ToString()%>'
                                            Text="�༭"></asp:HyperLink>&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnPic" runat="server" CssClass="icon icon-plug-on" 
                                            OnClick="rpList_ImageButton" CommandArgument='<%#Eval("bId")%>' Text="��ƷͼƬ"></asp:LinkButton>&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnDelete" runat="server" CssClass="icon icon-del" OnClientClick="return confirm('ȷ��Ҫɾ����?');"
                                            OnClick="rpList_DeleteButton" CommandArgument='<%#Eval("bId")%>' Text="ɾ��"></asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                                    <tr>
                                        <td colspan="10">
                                            <asp:Label ID="lblEmpty" Text="�Ҳ����κ�����" runat="server"></asp:Label>
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
                                    CustomInfoHTML="ҳ��: <font color=red><b>%currentPageIndex%</b></font>/<font color=#333333><b>%PageCount%</b></font> ҳ <b>%PageSize%</b>��/ҳ    �� <font color=#333333><b>%RecordCount%</b></font> ����¼"
                                    PageIndexBoxType="DropDownList" ShowPageIndexBox="Never" ShowCustomInfoSection="Right"
                                    AlwaysShow="True" Wrap="False" LayoutType="Table" HorizontalAlign="Justify" CustomInfoTextAlign="Right"
                                    FirstPageText="��ҳ" LastPageText="ĩҳ" NextPageText="��һҳ" PrevPageText="��һҳ" Direction="LeftToRight"
                                    OnPageChanged="MyPager_PageChanged">
                                </asp:AspNetPager>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="40">
                                <asp:Button ID="btnBatchDeleted" runat="server" CssClass="buttonblue" OnClientClick="return confirm('ȷ��Ҫɾ����?');"
                                    Text="����ɾ��" OnClick="btnBatchDeleted_Click" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
