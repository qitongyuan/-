<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Depuserselect2.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Depuserselect2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
   <div class="TableView">
       <div style="margin-bottom:2px;">
           <table class="TableAddProject" border="1">
               <tr class="TableViewCol1" align="left">
                   <td colspan="4">部门信息</td>
               </tr>

               <tr class="TableAddProjectOther">
                   <td style="background-color: #e8e8e8" align="right">
                       部门名称：
                   </td>
                   <td align="left">
                       <asp:TextBox ID="txtOrgName" runat="server" Width="250px" Enabled="False"></asp:TextBox>
                   </td>
                   <td style="background-color: #e8e8e8" align="right">
                       部门类型：
                   </td>
                   <td align="left">
                       <asp:TextBox ID="txtOrgType" runat="server" Width="250px" Enabled="False"></asp:TextBox>
                   </td>
               </tr>

           </table>
       </div>
       <div style="float:left;">
           <table  class="TableViewCol2Boss2" border="1">
               <%--<tr class="TableViewCol1Boss2">
                    <td colspan="9" align="left" class="TableViewCol12">查询条件</td>
                </tr>--%>

               <%--<tr>
                  <td colspan="9">
                    <asp:Panel ID="Panel1" runat="server" CssClass="test2">
                        <table class="TableViewCol2Boss2">    
                            <tr>
                                <td align="left" width="60">姓名：</td>
                                <td align="left" width="180">
                                    <asp:TextBox ID="truename" runat="server" MaxLength="10" width="150"></asp:TextBox>
                                </td>
                                <td align="right" width="140">
                                    <asp:Button ID="btn_rsearch" runat="server" OnClick="btn_rsearch_Click1" Text="查询" />
                                </td>
                            </tr>
                        </table>
                        </asp:Panel>
                    </td>
               </tr>--%>

                <tr class="TableViewCol1Boss2">
                    <td colspan="9" align="left" class="TableViewCol12">待分配权限用户</td>
                </tr>

                <tr class="TableViewCol2Boss2">
                    <td colspan="9" align="left">
                        <asp:GridView ID="Grid_Depuserselect" runat="server" border="1" AllowPaging="True" CellPadding="4" GridLines="None" Width="392px" AutoGenerateColumns="False" 
                            EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnPageIndexChanging="Grid_Depuserselect_PageIndexChanging"  >
                                 <AlternatingRowStyle BackColor="White" />
                                 <Columns>
                                    <asp:TemplateField HeaderText="选择" >
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckItem" runat="server" />  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="用户ID" DataField="UserId"  ItemStyle-HorizontalAlign="Center" ControlStyle-Width="100" ControlStyle-BorderWidth="50px" ReadOnly="true">
                                        <ControlStyle BorderWidth="50px"></ControlStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="姓名" dataField="Name" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="100"> 
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
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
                                    <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' ForeColor="White"/>页--%>
                                   <%-- 这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
                                  <%--  <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                                        CommandName="Page" Text="GO" ForeColor="White"/>--%>
                                </PagerTemplate>      
                                 <RowStyle BackColor="#EFF3FB" />
                                 <SelectedRowStyle BackColor="#AADEE1" Font-Bold="True" ForeColor="#333333" />
                                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
                          </asp:GridView>
                    </td>
                </tr>

                 <td colspan="9" align="right" >
                    <asp:Button ID="tianjia" runat="server" align="right" Text="添加" OnClick="tianjia_Click"  />
                </td>
              
           </table>
       </div>

       <div style="float:right;" >
           <table  class="TableViewCol2Boss2" border="1">

                <%--<tr class="TableViewCol1Boss2">
                    <td colspan="9" align="left" class="TableViewCol12">用户部门</td>
                </tr>--%>

                <%--<td colspan="9">
                                <asp:Panel ID="Panel2" runat="server" CssClass="test2">
                                     <table class="TableViewCol2Boss2">    
                    <td align="left" width="100" >部门名称：</td>
                    <td align="left" width="160" >
                            <asp:TextBox ID="TextBox1" runat="server" width="150" MaxLength="10"  Enabled="False"></asp:TextBox>
                    </td>
                          
                    <td align="right" Width="120">
                            <asp:Button ID="Button1" runat="server" Text="查询"   />
                    </td>

               </table>
                                    </asp:Panel>
                               </td>--%>

                <%--  <tr class="TableViewCol2Boss2">                
                    <td align="left" width="85" >部门名称：</td>
                    <td align="left" width="165" >
                            <asp:TextBox ID="TextBox1" runat="server" width="150" MaxLength="10"  Enabled="False"></asp:TextBox>
                    </td>
                          
                    <td align="right" width="150">
                         
                    </td>

                </tr>--%>

                <tr class="TableViewCol1Boss2">
                    <td colspan="9" align="left" class="TableViewCol12">已分配权限用户</td>
                </tr>

               <tr class="TableViewCol2Boss2">
                    <td colspan="9" align="left">
                        <asp:GridView ID="Grid_shanchu" runat="server" border="1"  AllowPaging="True" CellPadding="4" GridLines="None" Width="392px" AutoGenerateColumns="False" 
                            EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnPageIndexChanging="Grid_shanchu_PageIndexChanging"  >
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>  
                                 <asp:TemplateField HeaderText="选择" >
                                     <ItemTemplate>
                                        <asp:CheckBox ID="CheckItem" runat="server" />  
                                     </ItemTemplate>
                                 </asp:TemplateField>

                                 <asp:BoundField HeaderText="用户ID" DataField="UserId"  ItemStyle-HorizontalAlign="Center" ControlStyle-Width="100" ControlStyle-BorderWidth="50px" ReadOnly="true">
                                    <ControlStyle BorderWidth="50px"></ControlStyle>
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                 </asp:BoundField>

                                 <asp:BoundField HeaderText="姓名" dataField="Name" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="100"> 
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>    
                                 </asp:BoundField>
                                 <asp:TemplateField HeaderText="权限"  ItemStyle-HorizontalAlign="Center" ControlStyle-Width="100"> 
                                    <ItemTemplate>
                                        <asp:DropDownList ID="quanxian" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"> </ItemStyle>  
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
                            <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' ForeColor="White"/>页--%>
                           <%-- 这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
                           <%-- <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                                CommandName="Page" Text="GO" ForeColor="White"/>--%>
                            </PagerTemplate>      
                             <RowStyle BackColor="#EFF3FB" />
                             <SelectedRowStyle BackColor="#AADEE1" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                             <SortedDescendingCellStyle BackColor="#E9EBEF" />
                             <SortedDescendingHeaderStyle BackColor="#4870BE" />
               </asp:GridView>
                    </td>
              </tr>

               <tr>
                <td colspan="9" align="right" >
                    <asp:Button ID="shanchu" runat="server" align="right" Text="移除" OnClick="shanchu_Click"  />
                    <asp:Button ID="btnSave" runat="server" align="right" Text="保存" OnClick="btnSave_Click" />
                </td>
             </tr> 
           </table>
       </div>

   </div>
</asp:Content>
