<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="DataManagement.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link href="../../CSS/ContentControl.css" rel="stylesheet" />
     <table class="TableView" border="1">
          <tr class="TableViewCol1Boss">
            <td   colspan="2" align="left" class="TableViewCol1" >查询条件</td>
        </tr>
    <tr>
        <td  align="left" >
            时间限定：                           
        <asp:DropDownList ID="ddl_TimeLimit" runat="server"  width="130">
        <asp:ListItem Value="0" >三个月以外</asp:ListItem>
        <asp:ListItem Value="1" >六个月以外</asp:ListItem>
        <asp:ListItem Value="2" >一年以外</asp:ListItem>
        </asp:DropDownList>
        </td>
        <td align="right">
            <asp:Button   runat="server" Text="查询" />
        </td>
    </tr>
         <tr>
             <td colspan="2">
                       <asp:GridView ID="Grid_DataManagement" runat="server" AllowPaging="True" border="1" PageSize="15"  EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" GridLines="None" Width="800px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333"  OnPageIndexChanging="Grid_DataManagement_PageIndexChanging">
                        <%--<asp:GridView ID="Grid_AssManOffInquiry" runat="server" AllowPaging="True" border="1" PageSize="15" OnPageIndexChanging="Grid_AssManOffInquiry_PageIndexChanging1" GridLines="None" Width="800px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333">--%>
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="编号" ItemStyle-HorizontalAlign="Center" DataField="DeclareId" ItemStyle-Width="16%">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="申购表类型" ItemStyle-HorizontalAlign="Center" DataField="DeclareType" ItemStyle-Width="16%">
                                <ItemStyle HorizontalAlign="Center" /> 
                                </asp:BoundField>
                                <asp:BoundField HeaderText="项目名称" ItemStyle-HorizontalAlign="Center" DataField="ProjectName" ItemStyle-Width="25%" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="申购人" ItemStyle-HorizontalAlign="Center" DataField="Contact" ItemStyle-Width="10%">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="申购部门" ItemStyle-HorizontalAlign="Center" DataField="DeclareOrgName" ItemStyle-Width="10%" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="审批状态" ItemStyle-HorizontalAlign="Center" DataField="NextApproveOrgName" ItemStyle-Width="10%">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="13%">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="delButton" Text="删除" runat="server" ItemStyle-HorizontalAlign="Center" OnClick="delete_Click" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
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
                              <%--  转到第--%>
              <%--  <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />页--%>
               <%-- 这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
                              <%--  <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                                    CommandName="Page" ForeColor="White" Text="GO" />--%>
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
