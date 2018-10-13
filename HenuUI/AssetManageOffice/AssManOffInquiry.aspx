<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssManOffInquiry.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssManOffInquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableView" border="1">
        <tr class="TableViewCol1Boss">
            <td colspan="7" align="left" class="TableViewCol1">查询条件</td>
        </tr>
    
            <tr>
        <td align="right" colspan="7">
             <asp:Panel ID="Panel1" runat="server" CssClass="test1">
             
                  <table class="TableViewCol2">
                    <tr>
                        <td align="left" width="100" class="auto-style1">申购表类型：</td>
                        <td  align="left"  width="150" class="auto-style1">
                            <asp:DropDownList ID="ddl_DeclareType" runat="server"  width="130">
                                    <asp:ListItem Value="0" >全部</asp:ListItem>
                                    <asp:ListItem Value="1" >货物与服务类</asp:ListItem>
                                    <asp:ListItem Value="2" >基建维修工程类</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                          <td align="right"  width="120" class="auto-style1" >申购部门名称：</td>
                        <td  align="left"  width="230" class="auto-style1">
                            <asp:DropDownList ID="DropDownList1" runat="server"  width="200px">          
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                       <td align="right" width="100">审批状态：</td>
                       <td  align="left"  width="150">
                            <asp:DropDownList ID="ddl_AuditState" runat="server"  width="130">
                               <asp:ListItem Value="0">全部</asp:ListItem>
                                  <asp:ListItem Value="1">待审批</asp:ListItem>
                                    <asp:ListItem Value="2">审批通过</asp:ListItem>
                                    <asp:ListItem Value="3">审批未通过</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                          <td align="right"  width="85" >项目名称：</td>
                        <td align="left" width="150">
                            <asp:TextBox ID="text_ProjectName" runat="server"  width="195" MaxLength="20"></asp:TextBox>
                        </td>
                            <td align="right">
                            <asp:Button ID="btn_rsearch" runat="server" Text="查询" OnClick="btn_rsearch_Click"  width="50"/>
                        </td>
                     </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
        <tr>
            <td colspan="7" align="left" class="TableViewCol1">查询结果</td>
        </tr>
        <tr>
            <td colspan="7" align="left" class="TableViewtable">
          <%--      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel runat="server" ID="updatePanel" UpdateMode="Conditional" ChildrenAsTriggers="true" >--%>
                   <%-- <ContentTemplate>--%>
                        <asp:GridView ID="Grid_AssManOffInquiry" runat="server" AllowPaging="True" border="1" PageSize="15"  EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" OnPageIndexChanging="Grid_AssManOffInquiry_PageIndexChanging1" GridLines="None" Width="800px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnRowDataBound="Grid_AssManOffInquiry_RowDataBound">
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
                                <asp:BoundField HeaderText="审批状态" ItemStyle-HorizontalAlign="Center" DataField="GzbState" ItemStyle-Width="10%">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="13%">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="unpass" Text="查看" runat="server" ItemStyle-HorizontalAlign="Center" />
                                        <asp:LinkButton ID="pass" Text="查看" runat="server" ItemStyle-HorizontalAlign="Center" />
                                        <asp:LinkButton ID="shenpi" Text="审批" runat="server" ItemStyle-HorizontalAlign="Center" />
                                        <asp:LinkButton ID="linkbutton_edit" runat="server" Text="编辑评审报告" ItemStyle-HorizontalAlign="Center"/>
                                        <asp:LinkButton ID="beian" runat="server" Text="备案评审报告" ItemStyle-HorizontalAlign="Center"/>
                                         <asp:LinkButton ID="chakan" runat="server" Text="查看评审报告" ItemStyle-HorizontalAlign="Center"/>
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
                <%--    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btn_rsearch" />

                    </Triggers>
                </asp:UpdatePanel>--%>
               
            </td>
        </tr>
    </table>
</asp:Content>
