<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Userresearch.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Userresearch" %>
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
            <td align="left" class="TableViewCol1">检索条件</td>
        </tr>

        <tr class="TableViewCol2Boss">
            <td>
                <asp:Panel ID="Panel1" runat="server" CssClass="test1">
                    <table class="TableViewCol2Boss">
                        <tr>
                            <td align="left" width="55">性别：</td>
                            <td align="left"  width="110">
                                 <asp:DropDownList ID="xingbie" runat="server" width="100">
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <asp:ListItem Value="True">男</asp:ListItem>
                                    <asp:ListItem Value="False">女</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="70">用户ID：</td>
                            <td align="left"  width="110">
                                <asp:TextBox ID="yonghuID" runat="server" width="100" MaxLength="10"  ></asp:TextBox>
                            </td>
                             <td align="right" width="55">姓名：</td>
                             <td align="left"  width="110">
                                <asp:TextBox ID="truename" runat="server" width="100" MaxLength="10"  ></asp:TextBox>
                            </td>
                             
                             <td align="right" width="85">工作单位：</td>
                             <td align="left" width="110">
                                 <asp:DropDownList ID="ddl_searchWorkPlace" width="110" runat="server"></asp:DropDownList>
                                 <%--<asp:TextBox ID="gongzuodanwei" runat="server"  width="110"></asp:TextBox>--%>
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
            <td align="left">查询结果</td>
        </tr>

        <tr class="TableViewCol2Boss">
            <td align="left">
              <%--    <asp:GridView ID="Grid_Userresearch" runat="server" border="1" OnPageIndexChanging="Grid_DeclareDemand_PageIndexChanging" OnRowDataBound="Grid_Userresearch_RowDataBound" AllowPaging="True" CellPadding="4" GridLines="None" Width="800px" AutoGenerateColumns="False" 
               EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnRowCancelingEdit="Grid_Userresearch_RowCancelingEdit"  OnRowEditing="Grid_Userresearch_RowEditing" OnRowUpdating="Grid_Userresearch_RowUpdating" OnSelectedIndexChanged="Grid_Userresearch_SelectedIndexChanged">--%>
            <asp:GridView ID="Grid_Userresearch" runat="server" border="1" OnPageIndexChanging="Grid_DeclareDemand_PageIndexChanging" OnRowDataBound="Grid_Userresearch_RowDataBound" AllowPaging="True" CellPadding="4" GridLines="None" Width="800px" AutoGenerateColumns="False" 
                          EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnRowCancelingEdit="Grid_Userresearch_RowCancelingEdit"  OnRowEditing="Grid_Userresearch_RowEditing" OnRowUpdating="Grid_Userresearch_RowUpdating" PageSize="15">
                <AlternatingRowStyle BackColor="White" />
                <Columns>         
                    <asp:BoundField HeaderText="用户ID" DataField="UserId"  ItemStyle-HorizontalAlign="Center" ControlStyle-BorderWidth="50px" ReadOnly="true">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>

                    <asp:TemplateField HeaderText="姓名"  ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:TextBox ID="name" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Name") %>'  Enabled="false"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="name" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Name") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"> </ItemStyle>
                     </asp:TemplateField>

                    <asp:BoundField HeaderText="性别" dataField="Sex" ItemStyle-HorizontalAlign="Center"  ReadOnly="true">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>                        
                     </asp:BoundField>
                   
                    <asp:TemplateField HeaderText="联系方式"  ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:TextBox ID="Phone" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Phone") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="Phone" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Phone") %>'></asp:Label>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                               
                    <asp:TemplateField HeaderText="工作单位" ItemStyle-HorizontalAlign="Center" >
                       <EditItemTemplate>
                          <asp:DropDownList ID="workplace2" runat="server" Enabled="false"></asp:DropDownList>
                       </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="workplace1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OrgName") %>'></asp:Label>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                              
                    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:LinkButton ID="gengxin" runat="server" Text="更新" CausesValidation="true" CommandName="Update"></asp:LinkButton>
                            <asp:LinkButton ID="quxiao" runat="server" Text="取消" CausesValidation="false" CommandName="Cancel"></asp:LinkButton> 
                        </EditItemTemplate>

                        <ItemTemplate>
                            <%--<asp:LinkButton ID="bianji" Text="编辑"  runat="server" CausesValidation="false"  CommandName="Edit" ItemStyle-HorizontalAlign="Center"/>--%>
                            <asp:LinkButton ID="resetPassword" Text="重置密码" runat="server" ItemStyle-HorizontalAlign="Center" CommandName="Reset"></asp:LinkButton>
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
