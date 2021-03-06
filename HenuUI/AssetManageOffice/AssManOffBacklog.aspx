﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssManOffBacklog.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssManOffBacklog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableAddProject" border="1">
        <tr class="TableViewCol1Boss">
            <td colspan="7" align="left" class="TableViewCol1">查询条件</td>
        </tr>
        <td align="right" colspan="7">
            <asp:Panel ID="Panel1" runat="server" CssClass="test1">
                <table class="TableViewCol2">
                    <tr>
                        <%--<td align="right">申购部门：</td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>--%>
                        <td align="left" width="100">申购表类型：</td>
                        <td align="left" width="150">
                            <asp:DropDownList ID="ddl_DeclareType" runat="server" Width="130">
                                <asp:ListItem Value="0">全部</asp:ListItem>
                                <asp:ListItem Value="1">货物与服务类</asp:ListItem>
                                <asp:ListItem Value="2">基建维修工程类</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left" width="120">申购部门名称：</td>
                        <td align="left" width="140">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="130px">

                                <asp:ListItem Value="0">全部</asp:ListItem>

                            </asp:DropDownList>

                        </td>
                        <td align="left" width="85">项目名称：</td>
                        <td align="left" width="130">
                            <asp:TextBox ID="text_ProjectName" runat="server" Width="120" MaxLength="20"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:Button ID="btn_rsearch" runat="server" Text="查询" OnClick="btn_rsearch_Click" Width="50" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <tr class="TableAddProjectFenLan">
            <td colspan="7" align="left">待办事项</td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="7">
                <asp:GridView ID="Grid_AssManOffBacklog" PageSize="15" border="1" runat="server" AllowPaging="True" GridLines="None" Width="800px" OnPageIndexChanging="Grid_AssManOffBacklog_PageIndexChanging" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnRowDataBound="Grid_AssManOffBacklog_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="编号" DataField="DeclareId" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="16%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="申购表类型" DataField="DeclareType" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="16%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="项目名称" DataField="ProjectName" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="25%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="申购人" DataField="Contact" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="申购部门" DataField="DeclareOrgName" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="审核状态" DataField="GzbState" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="13%">
                            <ItemTemplate>
                                <asp:LinkButton ID="shenpi" Text="审批" runat="server" ItemStyle-HorizontalAlign="Center" />
                            </ItemTemplate>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <PagerTemplate>
                        当前第:
                <asp:Label ID="LabelCurrentPage" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>
                        页/共:
                <%--得到分页页面的总数--%>
                        <asp:Label ID="LabelPageCount" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>
                        页
               <%-- 如果该分页是首分页，那么该连接就不会显示了.同时对应了自带识别的命令参数CommandArgument--%>
                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                            Visible='<%#((GridView)Container.NamingContainer).PageIndex != 0 %>' ForeColor="White">首页</asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                            CommandName="Page" Visible='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' ForeColor="White">上一页</asp:LinkButton>
                        <%--如果该分页是尾页，那么该连接就不会显示了--%>
                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                            Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>' ForeColor="White">下一页</asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                            Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>' ForeColor="White">尾页</asp:LinkButton>
                        <%-- 转到第
                <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />页--%>
                        <%-- 这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
                        <%-- <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                    CommandName="Page" Text="GO" ForeColor="White" />--%>
                    </PagerTemplate>
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>

        </tr>
    </table>
</asp:Content>
