<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="paducncms.admin.wz.info" %>
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
</head>
<body>
   <form id="form1" runat="server" autocomplete="off" style="margin:0;padding:0;">
   <div class="main-wrap">
   <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000"></asp:ScriptManager>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
           <tr height="40">
               <td width="20" valign="middle">
                   <img src="../images/home_icon.png" />
               </td>
               <td>
                   �����ڵ�λ�ã�<font color="DarkSlateGray"><b>��վ����</b></font>&nbsp;&gt;&nbsp;��ϵ��Ϣ
               </td>
               <td>
               </td>
           </tr>
       </table>
       <table border="0" cellpadding="0" cellspacing="0" height="10">
            <tr>
                <td>
                </td>
            </tr>
        </table>
       <table cellpadding='2' cellspacing='2' class='tab'>          
           <tr>
               <td width="120px" nowrap class='hback_1'>
                   ��˾���ƣ�
               </td>
               <td>
                   <asp:TextBox ID="bCompany" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>         
           <tr>
               <td valign="middle" class='hback_1'>
                   ��ϵ�ˣ�
               </td>
               <td>
                   <asp:TextBox ID="bContact" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>          
           <tr>
               <td valign="middle" class='hback_1'>
                   �ֻ����룺
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bPhone" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>               
               </td>
           </tr> 
           <tr>
               <td valign="top" nowrap class='hback_1'>
                   �ʼ���ַ��
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bEmail" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
               </td>
           </tr>  
        
       </table>      
        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td width="100" align="right" height="40">
                </td>
                <td>                
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
