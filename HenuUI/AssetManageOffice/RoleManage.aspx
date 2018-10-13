<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="RoleManage.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.RoleManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <%-- <table class="TableUserUp" align="center">
        <tr class="TableAddProjectFenLan">
            <td colspan="8" align="left">权限管理<font color="red">（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >旧密码：
            </td>
            <td align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="text_UserPassword_Old" runat="server" TextMode="Password" ToolTip="请输入旧密码" MaxLength="20"    ></asp:TextBox>
                <font color="red">*</font>
            </td>
             <td width="200" colspan="2">
                 <asp:CheckBox ID="CheckBox1" Text="申购部门" runat="server" />
             </td>
             
             <td width="200" colspan="2">
                 <asp:CheckBox ID="CheckBox2" Text="审核部门" runat="server" />
             </td>
               <td width="200" colspan="2">
                   <asp:CheckBox ID="CheckBox3" Text="归口部门" runat="server" />
               </td>
        </tr>
        <tr class="TableUserUpTopTr" >
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >
                <asp:Label ID="Label4" runat="server" Text="新密码："></asp:Label>
            </td>
            <td align="left" align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="text_UserPassword_New" runat="server" TextMode="Password" ToolTip="请输入新密码" MaxLength="20"></asp:TextBox>
                <font color="red">*</font>
            </td>
              <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
            <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;">
                <asp:Label ID="Label1" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td align="left" align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="text_UserPassword_New_Ok" runat="server" TextMode="Password" ToolTip="请再次输入新密码" MaxLength="20"></asp:TextBox>
                <font color="red">*</font>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
            <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td colspan="2" align="center">
                <asp:Button ID="btn_ok" runat="server" Text="确认" OnClick="btn_ok_Click" />
                <asp:Button ID="bnt_cancel" runat="server" Text="取消" OnClick="bnt_cancel_Click" />
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
            <td width="100"></td>
            
        </tr>
    </table>--%>

    <table class="TableView" border="1">
        <tr class="TableViewCol1Boss">
            <td colspan="9" align="left">权限管理</td>

        </tr>
        <tr class="TableViewCol2Boss">
            <td colspan="9" align="left">
                <asp:GridView ID="Grid_RoleManage" runat="server" border="1" OnPageIndexChanging="Grid_RoleManage_PageIndexChanging" AllowPaging="True" CellPadding="4" GridLines="None" Width="800px" AutoGenerateColumns="False" OnSelectedIndexChanged="Grid_RoleManage_SelectedIndexChanged"
                    EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333" PageSize="15">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="部门ID" DataField="DesigningOrgId" ItemStyle-HorizontalAlign="Center" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <%-- <asp:TemplateField HeaderText="部门名称"  ItemStyle-HorizontalAlign="Center">
                            <EditItemTemplate>
   
                                <asp:TextBox ID="bumenmingcheng" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"DesigningOrgName") %>'></asp:TextBox>

                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="bumenmingcheng" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"DesigningOrgName") %>'></asp:Label>
                            </ItemTemplate>

                            <ItemStyle HorizontalAlign="Center">
                             
                            </ItemStyle>
                          </asp:TemplateField>--%>
                        <asp:BoundField HeaderText="部门名称" DataField="DesigningOrgName" ItemStyle-HorizontalAlign="Center" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="权限管理" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>

                                <asp:CheckBox ID="cb_sq" Text="申购部门申请" runat="server" />
                                <asp:CheckBox ID="cb_sh" Text="申购部门审核" runat="server" />
                                <asp:CheckBox ID="cb_gk" Text="归口部门" runat="server" />
                                <%--<asp:CheckBoxList ID="CheckBoxList1"  runat="server"></asp:CheckBoxList>--%>
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

         <tr>
            <td colspan="9" align="right">
                <asp:Button ID="BtnSaveChange" runat="server" Text="保存修改" OnClick="BtnSaveChange_Click" OnClientClick="return confirm('撤销部门类型会删除所有此部门的该部门类型下的所有用户权限，是否确认修改?');" />
            </td>
         </tr>
    </table>
</asp:Content>
