<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="DepMesAdd.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepartmentMessageManage.DepMesAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script lang="javascript">
         function manage() {
             var hdc = window.showModalDialog('DepMesUserAdd.aspx', '', 'width=720,height=180','location=no','menubar=no','titlebar=no');
             width = screen.width;
             height = screen.height;
             hdc.moveTo((width - 720) / 2, (height - 180) / 2);
         }
    </script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableView" border="1">
        
        <tr class="TableViewCol1Boss">
            <td colspan="9" align="left" class="TableViewCol1">检索条件</td>
        </tr>
        <tr class="TableViewCol2Boss">
            <td colspan="9">
                <asp:Panel ID="Panel1" runat="server" CssClass="test1">
                    <table class="TableViewCol2Boss">
                        <tr>
                            <td align="left" width="85">部门类型：</td>
                            <td align="left" colspan="2" width="150">
                                 <asp:DropDownList ID="ddl_DeclareType" runat="server" width="130">
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <asp:ListItem Value="1">申购部门</asp:ListItem>
                                    <asp:ListItem Value="2">归口部门</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" width="85">部门名称：</td>
                            <td align="left" colspan="4" width="150">
                                <asp:TextBox ID="text_ProjectName" runat="server" width="130" MaxLength="10"  ></asp:TextBox>
                            </td>
                            <td align="right">
                               <asp:Button ID="btn_rsearch" runat="server" Text="查询" OnClick="btn_rsearch_Click" />
                               
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr class="TableViewCol1Boss">
            <td colspan="9" align="left">查询结果</td>
           
        </tr>
        <tr class="TableViewCol2Boss">
            <td colspan="9" align="left">
               <asp:GridView ID="Grid_DepMesAdd" runat="server" border="1" OnPageIndexChanging="Grid_DeclareDemand_PageIndexChanging" OnRowDataBound="Grid_DepMesAdd_RowDataBound" AllowPaging="True" CellPadding="4" GridLines="None" Width="800px" AutoGenerateColumns="False" OnSelectedIndexChanged="Grid_DepMesAdd_SelectedIndexChanged"
               EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" PageSize="15">
                  
                             <AlternatingRowStyle BackColor="White" />
                  
                             <Columns>
                        <asp:BoundField HeaderText="编号" DataField="OrganizationId"  ItemStyle-HorizontalAlign="Center" ControlStyle-BorderWidth="50px">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                 </asp:BoundField>
                        <asp:BoundField HeaderText="部门名称" DataField="OrgName" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                 </asp:BoundField>
                        <asp:BoundField HeaderText="部门类型" DataField="OrgType" ItemStyle-HorizontalAlign="Center">             
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                 </asp:BoundField>
                        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                        <asp:LinkButton ID="chakan" Text="查看" OnClick="chakan_Click" runat="server" ItemStyle-HorizontalAlign="Center"/>
                        <asp:LinkButton ID="shanchu" runat="server" Text="删除" OnClick="shanchu_Click" ItemStyle-HorizontalAlign="Center"/>                         

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
             <%--  转到第
                <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />页--%>
               <%-- 这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
               <%-- <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                    CommandName="Page" Text="GO" ForeColor="White"/>--%>
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
