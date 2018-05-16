<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="syslog.aspx.cs" Inherits="paducncms.sy.syslog" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <script type="text/javascript" src="../images/PaducnSoft.Common.StringPlus.js"></script>
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
                    �����ڵ�λ�ã�<font color="DarkSlateGray"><b>ϵͳ����</b></font>&nbsp;->&nbsp;������־
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
       <table border="0" cellpadding="0" cellspacing="0" height="35">
           <tr>              
               <td>
                   &nbsp;��������&nbsp;
               </td>
               <td>
                   <asp:TextBox ID="txtKeywords" Width="80px" runat="server" CssClass="textbox"></asp:TextBox>
               </td>
               <td>
                   &nbsp;��������&nbsp;
               </td>
               <td>
                   <asp:TextBox class="Wdate" runat="server" Width="90" ID="dtpStartDate" onFocus="WdatePicker({readOnly:true,lang:'zh-cn'})" />
               </td>
               <td>
                   &nbsp;��&nbsp;
               </td>
               <td>
                   <asp:TextBox class="Wdate" runat="server" Width="90" ID="dtpEndDate" onFocus="WdatePicker({readOnly:true,lang:'zh-cn'})" />
               </td>
               <td>
                   &nbsp;<asp:Button ID="btnSearch" class="buttonblue" runat="server" Text=" ��ѯ " OnClick="btnSearch_Click" />                   
               </td>
           </tr>
       </table> 
       <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" align="center">
           <thead class="tb-tit-bg">
               <th align="left">
                   <div class="th-gap">�û���</div>
               </th>
               <th>
                   <div class="th-gap">��������</div>
               </th>
               <th>
                   <div class="th-gap">�������</div>
               </th>
               <th>
                   <div class="th-gap">IP��ַ</div>
               </th>
               <th>
                   <div class="th-gap">����ʱ��</div>
               </th>
               </tr>
           </thead>
           <asp:Repeater ID="rpList" runat="server">
               <ItemTemplate>
                   <tr class="<%#(Container.ItemIndex%2==0)?"even":"odd"%>" onmouseover="highlightRows(this,'<%#(Container.ItemIndex%2==0)?"even":"odd"%>')"
                       onmouseout="highlightRows(this,'<%#(Container.ItemIndex%2==0)?"even":"odd"%>')">
                       <td align="left">
                           <%#Eval("bUserName")%>
                       </td>
                       <td align="left">
                           <%#Eval("bMessage")%>
                       </td>
                       <td align="left">
                           <%#Eval("bReferUrl")%>
                       </td>
                       <td align="left">
                           <%#Eval("bIPAddress")%>
                       </td>
                       <td align="center">
                           <%#Eval("bAddTime")%>
                       </td>
                   </tr>
               </ItemTemplate>
               <FooterTemplate>
                   <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                       <tr>
                           <td colspan="5">
                               <asp:Label ID="lblEmpty" Text="�Ҳ����κ�����" runat="server"></asp:Label>
                           </td>
                       </tr>
                   </asp:Panel>
               </FooterTemplate>
           </asp:Repeater>
       </table> 
        <table cellspacing="1" cellpadding="1" style="width: 100%;" align="center" heigth="40">
            <tr>
                <td>
                    <asp:AspNetPager ID="MyPager" runat="server" Height="35px" Width="100%" PageSize="20"
                        CustomInfoHTML="ҳ��: <font color=red><b>%currentPageIndex%</b></font>/<font color=#333333><b>%PageCount%</b></font> ҳ <b>%PageSize%</b>��/ҳ    �� <font color=#333333><b>%RecordCount%</b></font> ����¼"
                        PageIndexBoxType="DropDownList" ShowPageIndexBox="Never" ShowCustomInfoSection="Right"
                        AlwaysShow="True" Wrap="False" LayoutType="Table" HorizontalAlign="Justify" CustomInfoTextAlign="Right"
                        FirstPageText="��ҳ" LastPageText="ĩҳ" NextPageText="��һҳ" PrevPageText="��һҳ" Direction="LeftToRight"
                        OnPageChanged="MyPager_PageChanged">
                    </asp:AspNetPager>
                </td>
            </tr>             
        </table>                      
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
