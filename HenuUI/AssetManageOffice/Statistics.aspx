<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../../JavaScript/My97DatePicker/WdatePicker.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }

        .auto-style7 {
            height: 31px;
            width: 140px;
        }

        .auto-style8 {
            margin-left: 0px;
        }

        .auto-style9 {
            width: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableView">
        <tr class="TableViewCol1Boss">
            <td colspan="7" align="left" class="TableViewCol1">查询条件</td>
        </tr>
        <td align="left" colspan="7">
            <asp:Panel ID="Panel1" runat="server" CssClass="test1">
                <table>
                    <tr>
                        <td align="left">院系名称：</td>
                        <td align="left" widtn="60" class="auto-style9">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="110px" CssClass="auto-style8">
                            </asp:DropDownList>
                        </td>
                        <td align="left">开始时间：</td>
                        <td align="left" width="40" class="auto-style1">
                            <input id="d5221" name="startTime" type="text" value="<%=Request["startTime"]%>" onfocus="var d5222=$dp.$('d5222');WdatePicker({dateFmt:'yyyy-MM',onpicked:function(){d5222.focus();},maxDate:'#F{$dp.$D(\'d5222\')}'})" class="PosPageCo2" />
                        </td>
                        <td align="left" width="80" class="auto-style1">结束时间：</td>
                        <td align="left" class="auto-style7">
                            <input id="d5222" name="endTime" class="PosPageCo2" type="text" value="<%=Request["endTime"]%>" onfocus="WdatePicker({dateFmt:'yyyy-MM',minDate:'#F{$dp.$D(\'d5221\')}'})" />
                        </td>
                        <td align="right" class="auto-style1">
                            <asp:Button ID="btn_Statistics" runat="server" Text="统计" Width="50" OnClick="btn_Statistics_Click" />
                        </td>
                        <td align="left" width="10" class="auto-style1"></td>
                         <td align="left" class="auto-style1">
                            <asp:Button ID="btn_ExportExcel" runat="server" Text="导出Excel" OnClick="btn_ExportExcel_Click" Width="80" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <tr class="TableAddProjectFenLan">
            <td colspan="7" align="left">查询结果</td>
        </tr>
        <tr class="TableAddProjectOther">
            <td>
                <asp:GridView ID="GridView_StatisticInfo" PageSize="15" border="1" runat="server" GridLines="None" Width="800px" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="院系名称" DataField="院系名称" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="项目编号" DataField="项目编号" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="项目名称" DataField="项目名称" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="24%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="预算金额" DataField="预算金额" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="14%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="审批时间" DataField="审批时间" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="22%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                       <%-- <asp:BoundField HeaderText="执行完总金额" DataField="执行完总金额" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="14%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>--%>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:GridView>
                 <asp:GridView ID="GridView_StatisticTotalInfo" PageSize="15" border="1" runat="server" GridLines="None" Width="800px" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="没有查询到符合条件的数据!" ShowHeaderWhenEmpty="True" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="院系名称" DataField="院系名称" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="获批总数" DataField="获批总数" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                          <%--  <asp:BoundField HeaderText="执行完总金额" DataField="执行完总金额" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="24%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>--%>
                        <asp:BoundField HeaderText="预算总金额" DataField="预算总金额" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="14%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="时间范围" DataField="时间范围" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="22%">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>

                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
