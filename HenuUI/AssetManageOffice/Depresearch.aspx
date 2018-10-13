<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Depresearch.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Depresearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script lang="javascript">
          function manage() {
              var hdc = window.showModalDialog('DepMesUserAdd.aspx', '', 'width=720,height=180', 'location=no', 'menubar=no', 'titlebar=no');
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
            <td colspan="9" align="left" class="TableViewCol1">查询条件</td>
        </tr>
        <tr class="TableViewCol2Boss">
            <td colspan="9">
                <asp:Panel ID="Panel1" runat="server" CssClass="test1">
                    <table class="TableViewCol2Boss">
                        <tr>
                            <td align="left" width="85">部门类型：</td>
                            <td align="left"  width="150">
                                 <asp:DropDownList ID="ddl_DeclareType" runat="server" width="130" OnSelectedIndexChanged="ddl_DeclareType_SelectedIndexChanged">
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <asp:ListItem Value="1">申购部门申请</asp:ListItem>
                                     <asp:ListItem Value="2">申购部门审核</asp:ListItem>
                                    <asp:ListItem Value="3">归口部门</asp:ListItem>
                                    <asp:ListItem Value="4">国资办</asp:ListItem>

                                </asp:DropDownList>
                            </td>
                           <%--  <td align="left" width="85">部门ID：</td>
                            <td align="left"  width="150">
                                <asp:TextBox ID="bumenid" runat="server" width="130" MaxLength="10"  ></asp:TextBox>
                            </td>--%>
                            <td align="left" width="85">部门名称：</td>
                            <td align="left" width="150">
                                <asp:TextBox ID="bumenmingcheng" runat="server" width="130" MaxLength="10"  ></asp:TextBox>
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
               <asp:GridView ID="Grid_Depresearch" runat="server" border="1" OnPageIndexChanging="Grid_Depresearch_PageIndexChanging" OnRowDataBound="Grid_Depresearch_RowDataBound" AllowPaging="True" CellPadding="4" GridLines="None" Width="800px" AutoGenerateColumns="False" OnSelectedIndexChanged="Grid_Depresearch_SelectedIndexChanged"
               EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnRowCancelingEdit="Grid_Depresearch_RowCancelingEdit"  OnRowEditing="Grid_Depresearch_RowEditing" OnRowUpdating="Grid_Depresearch_RowUpdating" PageSize="15">
                  
                             <AlternatingRowStyle BackColor="White" />
                  
                             <Columns>
                      <%--  <asp:BoundField HeaderText="部门ID" DataField="DesigningOrgId"  ItemStyle-HorizontalAlign="Center" ControlStyle-BorderWidth="50px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                 </asp:BoundField>--%>
                        <asp:TemplateField HeaderText="部门名称"  ItemStyle-HorizontalAlign="Center">
                      <%--      <EditItemTemplate>
   
                                <asp:TextBox ID="bumenmingcheng" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"DesigningOrgName") %>'></asp:TextBox>

                            </EditItemTemplate>--%>
                            <ItemTemplate>
                                <asp:Label ID="bumenmingcheng" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"DesigningOrgName") %>'></asp:Label>
                            </ItemTemplate>

                            <ItemStyle HorizontalAlign="Center">
                             
                            </ItemStyle>
                                 </asp:TemplateField>
                        <asp:BoundField HeaderText="部门类型" DataField="OrgTypeName" ItemStyle-HorizontalAlign="Center" ReadOnly="true">             
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                 </asp:BoundField>
                   <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                               <ItemTemplate>
                        <asp:LinkButton ID="bianjiyonghu" Text="编辑用户" runat="server" ItemStyle-HorizontalAlign="Center"/>
                            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                             <EditRowStyle BackColor="#AADEE1" />
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
                <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>'/>页--%>
               <%-- 这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
              <%--  <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
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
