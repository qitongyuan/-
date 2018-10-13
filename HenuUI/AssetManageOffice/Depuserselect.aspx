<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Depuserselect.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Depuserselect" %>
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
                      <%--  <tr>
                            <td align="left" width="70">性别：</td>
                            <td align="left"  width="150">
                                 <asp:DropDownList ID="xingbie" runat="server" width="130">
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <asp:ListItem Value="1">男</asp:ListItem>
                                    <asp:ListItem Value="2">女</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="80">用户ID：</td>
                            <td align="left"  width="150">
                                <asp:TextBox ID="yonghuID" runat="server" width="130" MaxLength="10"  ></asp:TextBox>
                            </td>--%>
                             <td align="right" width="80">姓名：</td>
                          
                             
                            <td align="left"  width="150">
                                <asp:TextBox ID="truename" runat="server" width="130" MaxLength="10"  ></asp:TextBox>
                            </td>
                          
                            <td align="right">
                               <asp:Button ID="btn_rsearch" runat="server" Text="查询" OnClick="btn_rsearch_Click" />
                               
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <%--  <td align="right" colspan="9">
         <asp:Panel ID="Panel1" runat="server" CssClass="test1">
          <table class="TableViewCol2">
                    <tr>
                        <td align="left" width="100" height="" class="auto-style1">工作单位：</td>
                        <td  align="left"  width="150" class="auto-style1">
                            <asp:DropDownList ID="gongzuodanwei" runat="server"  width="150">
                                    <asp:ListItem Value="0" >已分配工作单位</asp:ListItem>
                                    <asp:ListItem Value="1" >未分配工作单位</asp:ListItem>
                               
                            </asp:DropDownList>
                        </td>
                          <td align="right"  width="120" class="auto-style1" >性别：</td>
                        <td  align="left"  width="230" class="auto-style1">
                            <asp:DropDownList ID="xingbie" runat="server"  width="150px"> 
                                    <asp:ListItem Value="0">全部</asp:ListItem>
                                    <asp:ListItem Value="1">男</asp:ListItem>
                                    <asp:ListItem Value="2">女</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                       <td align="left" width="70">用户ID：</td>
                            <td align="left"  width="150">
                                <asp:TextBox ID="yonghuID" runat="server" width="150" MaxLength="10" Height="15"  ></asp:TextBox>
                            </td>
                          <td align="right" width="120">姓名：</td>
                             <td align="left"  width="150">
                                <asp:TextBox ID="truename" runat="server" width="150" MaxLength="10" Height="15" ></asp:TextBox>
                            </td>
                            <td align="right">
                            <asp:Button ID="btn_rsearch" runat="server" Text="查询" OnClick="btn_rsearch_Click"  width="50"/>
                        </td>
                     </tr>
                </table>
              </asp:Panel>
        </td>--%>
           

        <tr class="TableViewCol1Boss">
            <td colspan="9" align="left">查询结果</td>
           
        </tr>
    
        <tr class="TableViewCol2Boss">
            <td colspan="9" align="left">
               <asp:GridView ID="Grid_Depuserselect" runat="server" border="1" OnPageIndexChanging="Grid_DeclareDemand_PageIndexChanging"  AllowPaging="True" CellPadding="4" GridLines="None" Width="800px" AutoGenerateColumns="False" 
               EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" OnSelectedIndexChanged="Grid_Depuserselect_SelectedIndexChanged" >
                  
                             <AlternatingRowStyle BackColor="White" />
                        <Columns>
                         <asp:TemplateField HeaderText="选择">
                             <ItemTemplate>
                                <asp:CheckBox ID="CheckItem" runat="server" />  
                             </ItemTemplate>
                         </asp:TemplateField>
                        <asp:BoundField HeaderText="用户ID" DataField="UserId"  ItemStyle-HorizontalAlign="Center" ControlStyle-BorderWidth="50px" ReadOnly="true">
<ControlStyle BorderWidth="50px"></ControlStyle>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                         </asp:BoundField>
                         <asp:BoundField HeaderText="姓名" dataField="Name" ItemStyle-HorizontalAlign="Center"> 
                        <ItemStyle HorizontalAlign="Center">    
                            </ItemStyle>
                                 </asp:BoundField>
                              <%--     <asp:BoundField HeaderText="性别" dataField="Sex" ItemStyle-HorizontalAlign="Center"  ReadOnly="true">--%>
                          <%--  <EditItemTemplate>
   
                                <asp:TextBox ID="Sex" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Sex") %>'></asp:TextBox>

                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Sex" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Sex") %>'></asp:Label>
                            </ItemTemplate>--%>

                         
<%--                                  <asp:BoundField HeaderText="联系方式" dataField="Phone" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center">
                             
                            </ItemStyle>
                                 </asp:BoundField>     --%>
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
          <tr >
            <td colspan="9" align="right">
                <asp:Button ID="Button1" runat="server"  Text="下一步" OnClick="Button1_Click" />
            </td>
           
        </tr>
   </table>
</asp:Content>
