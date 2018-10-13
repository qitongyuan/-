﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/PurManMaster.Master" AutoEventWireup="true" CodeBehind="PurManInquiry.aspx.cs" Inherits="UI.HenuUI.PurchaseManager.PurManInquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableView" border="1">
       
        <tr class="TableViewCol1Boss">
            <td colspan="7" align="left" class="TableViewCol1">查询条件</td>
        </tr>
        <td align="right" colspan="7">
            <asp:Panel ID="Panel1" runat="server" CssClass="test1">
                <table class="TableViewCol2">
                    <tr>
                        <td align="left" width="85">审批状态：</td>
                        <td align="left" width="150">
                            <asp:DropDownList ID="ddl_AuditState" runat="server">
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <%--<asp:ListItem Value="1">未提交</asp:ListItem>--%>
                                    <asp:ListItem Value="2">待审批</asp:ListItem>
                                    <asp:ListItem Value="3">部门通过</asp:ListItem>
                                    <asp:ListItem Value="4">部门未通过</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                        <td align="left"  width="100">申报表类型：</td>
                        <td align="left" width="150">
                            <asp:DropDownList ID="ddl_DeclareType" runat="server" Width="110">
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <asp:ListItem Value="1">货物与服务类</asp:ListItem>
                                    <asp:ListItem Value="2">基建维修工程类</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                        <td align="left" width="85">项目名称：</td>
                        <td align="left" width="150">
                            <asp:TextBox ID="text_ProjectName" runat="server" Width="123px"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <tr>
            <td colspan="7" align="left" class="TableViewCol1">查询结果</td>
        </tr>
        <tr>
            <td colspan="7" align="left" class="TableViewtable">
                <asp:GridView ID="Grid_PucManBacklog"  OnPageIndexChanging="Grid_DeclareDemand_PageIndexChanging" AllowPaging="True" PageSize="15"  runat="server" Width="800px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="没有查询到符合条件的数据!"  ShowHeaderWhenEmpty="True">   
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                        <asp:BoundField DataField="DeclareId" HeaderText="编号" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="DeclareType" HeaderText="申报表类型" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="ProjectName" HeaderText="项目名称" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Contact" HeaderText="联系人" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="DeclareOrgAuditState" HeaderText="审批状态" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                           <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                               <ItemTemplate>
                        <asp:LinkButton ID="shanchu" Text="删除" runat="server" ItemStyle-HorizontalAlign="Center"/>
                        <asp:LinkButton ID="chakan" Text="查看" runat="server" ItemStyle-HorizontalAlign="Center"/>
                        <asp:LinkButton ID="shenpi" Text="审批" runat="server" ItemStyle-HorizontalAlign="Center"/>
                        <asp:LinkButton ID="pingshen" Text="编辑评审报告" runat="server" ItemStyle-HorizontalAlign="Center"/>
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
                <%--<asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2" ForeColor="White"
                    CommandName="Page" Text="GO" />--%>
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
