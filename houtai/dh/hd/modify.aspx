<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modify.aspx.cs" Inherits="ayzhuangxiu.houtai.dh.hd.modify" %>

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
                            <td>�����ڵ�λ�ã�<font color="DarkSlateGray"><b>��������</b></font>&nbsp;->&nbsp;ͷ���˵�&nbsp;->&nbsp;�����˵�&nbsp;&nbsp;��&nbsp;<a href="default.aspx">�����б�</a>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" height="10">
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <table cellpadding='2' cellspacing='2' class='tab'>
                        <tr>
                            <td width="100px" nowrap class="hback_1">
                                <span class="red">�˵����ƣ�</span>
                            </td>
                            <td colspan="3" class="hback">
                                <asp:TextBox ID="bName" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="hback_1">�˵�����</td>
                            <td colspan="3" class="hback">
                                <asp:DropDownList ID="bParent" SkinID="ddlSkin" runat="server" CssClass="dropdownlist">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td class="hback_1" nowrap>���ӵ�ַ��
                            </td>
                            <td colspan="3" class="hback">
                                <asp:TextBox ID="bUrl" runat="server" Width="350px" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="hback_1">�򿪷�ʽ��</td>
                            <td colspan="3" class="hback">
                                <asp:DropDownList ID="bOpenMode" SkinID="ddlSkin" runat="server" CssClass="dropdownlist">
                                    <asp:ListItem Value="_self">ԭ����</asp:ListItem>
                                    <asp:ListItem Value="_blank">�´���</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="hback_1">�Ƿ����ظò˵���</td>
                            <td colspan="3" class="hback">
                                <asp:DropDownList ID="bIsShow" SkinID="ddlSkin" runat="server" CssClass="dropdownlist">
                                    <asp:ListItem Value="1">��ʾ</asp:ListItem>
                                    <asp:ListItem Value="2">����</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="hback_1" nowrap>����
                            </td>
                            <td colspan="3" class="hback">
                                <asp:TextBox ID="bOrder" runat="server" Width="50px" CssClass="textbox"></asp:TextBox>������Ϊ���֣�
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                            <td width="100" align="right" height="40"></td>
                            <td>
                                <asp:HiddenField ID="bId" runat="server" />
                                <asp:HiddenField ID="bLocation" runat="server" Value="-2" />
                                <asp:Button ID="btnSubmit" runat="server" Text="  �ύ  " CssClass="buttonblue" OnClick="btnSubmit_Click" />&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="btnReset" runat="server" Text="  ����  " CssClass="buttonblue" OnClick="btnReset_Click" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
