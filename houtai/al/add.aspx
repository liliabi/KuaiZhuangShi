<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="ayzhuangxiu.houtai.al.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
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
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnSubmit" />
                </Triggers>
                <ContentTemplate>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr height="40">
                            <td width="20" valign="middle">
                                <img src="../images/home_icon.png" />
                            </td>
                            <td>�����ڵ�λ�ã�<font color="DarkSlateGray"><b>��������</b></font>&nbsp;->&nbsp;��������&nbsp;&nbsp;��&nbsp;<a href="default.aspx">�����б�</a>
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
                            <td width="90px" nowrap class="hback_1">
                                <span class="red">���⣺</span>
                            </td>
                            <td class="hback" colspan="3">
                                <asp:TextBox ID="bTitle" runat="server" Width="400px" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="hback_1">
                                <span class="red">������Ŀ��</span>
                            </td>
                            <td class="hback">
                                <asp:DropDownList ID="bClassID" CssClass="dropdownlist" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="hback_1">�ؼ��֣�
                            </td>
                            <td class="hback">
                                <asp:TextBox ID="bKeywords" runat="server" CssClass="textbox" Text="" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="hback_1">����ͼ��
                            </td>
                            <td colspan="3" class="hback">
                                <table border="0" cellpadding="3" cellspacing="0">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="bPic" runat="server" CssClass="textbox" Text="" Width="300px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <iframe src="../../inc/ay_upload.aspx?fd=bPic" frameborder="0" style="height: 30px; width: 400px;"
                                                scrolling="no"></iframe>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="90px" class="hback_1">�ö����ƣ�
                            </td>
                            <td class="hback">
                                <asp:CheckBox ID="bIsTop" runat="server" Text="�ö�" />
                                <asp:CheckBox ID="bIsBest" runat="server" Text="�Ƽ�" />
                                <asp:CheckBox ID="bIsPass" runat="server" Checked="true" Text="���" />
                            </td>
                            <td width="90px" class="hback_1">�������
                            </td>
                            <td class="hback">
                                <asp:TextBox ID="bClick" runat="server" CssClass="textbox" Text="0" Width="40px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="90px" class="hback_1">�������ͣ�
                            </td>
                            <td class="hback" colspan="3">
                                <asp:RadioButtonList ID="bTypeID" runat="server" RepeatColumns="2" OnSelectedIndexChanged="bTypeID_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="0" Selected="True">ͼ��</asp:ListItem>
                                    <asp:ListItem Value="1">��ַ����</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <asp:Panel ID="pnlTypeID0" runat="server" Visible="false">
                            <tr>
                                <td nowrap class="hback_1">
                                    <span class="red">���ӵ�ַ��</span>
                                </td>
                                <td class="hback" colspan="3">
                                    <asp:TextBox ID="bUrl" runat="server" Width="98%" CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                        </asp:Panel>
                        <asp:Panel ID="pnlTypeID1" runat="server">
                            <tr>
                                <td class="hback_1" valign="top" nowrap>���ݣ�
                            </td>
                                <td colspan="3" class="hback">
                                    <asp:TextBox ID="bContent" runat="server" TextMode="MultiLine" Style="width: 100%; height: 390px;"
                                        CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                        </asp:Panel>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                            <td width="100" align="right" height="40"></td>
                            <td>
                                <asp:HiddenField ID="bId" runat="server" />
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
