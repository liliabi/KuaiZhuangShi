﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products.amandi._default" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>快装师</title>
    <link rel="shortcut icon" href="/images/bitbug_favicon.ico" />
    <link href="/css/layout.css" rel="stylesheet" />
    <link href="/css/main.css" rel="stylesheet" />
    <script src="/js/jquery-1.7.2.min.js"></script>
    <script src="/js/common.js"></script>
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/images/work.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>

        <div class="MainBox">
            <div class="banner_list b_dlock" style="background: url(/upfile/wfbanner.jpg) center top no-repeat; display: block;">
            </div>
        </div>

        <div class="inside_dh">
            <div class="container">
                <script type="text/javascript">
                    $(document).ready(
                    function () {
                        $('.inside_dh ul li').hover(
                            function () {
                                $(this).find('a:first').addClass('menu_current');
                            }, function () {
                                $(this).find('a:first').removeClass('menu_current');
                            }
                        );
                    });
                </script>
                <ul>
                    <li><a href="./" title="全部产品">全部产品</a>
                    </li>
                    <asp:Literal ID="ltProdClass" runat="server"></asp:Literal>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div class="wrapper">
            <div id="among">

                <div class="content">
                    <ul id="listPro" class="clearfix">
                        <asp:Repeater ID="rpList" runat="server">
                            <ItemTemplate>
                                <a href="/products/show.aspx?id=<%#Eval("bId")%>" target="_blank">
                                    <li>
                                        <img src="/upfile/<%#Eval("bPic")%>" alt="<%#Eval("bTitle")%>" />
                                    </li>
                                    <span><%#Eval("bTitle")%></span>
                                </a>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                                    <p>
                                        <asp:Label ID="lblEmpty" Text="没有找到任何数据" runat="server"></asp:Label>
                                    </p>
                                </asp:Panel>
                            </FooterTemplate>
                        </asp:Repeater>
                    </ul>

                    <div class="clear"></div>
                    <div class="fpage">
                        <asp:AspNetPager ID="MyPager" runat="server" PageSize="9" PageIndexBoxType="DropDownList"
                            ShowPageIndexBox="Never" CustomInfoHTML="" ShowCustomInfoSection="Never" AlwaysShow="False"
                            Wrap="False" LayoutType="Table" HorizontalAlign="Center" CustomInfoTextAlign="Right"
                            FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                            Direction="LeftToRight" OnPageChanged="MyPager_PageChanged">
                        </asp:AspNetPager>
                    </div>
                    <div class="clear"></div>
                </div>

            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
