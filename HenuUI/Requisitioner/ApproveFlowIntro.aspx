<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/DeclareMaster.Master" AutoEventWireup="true" CodeBehind="ApproveFlowIntro.aspx.cs" Inherits="UI.HenuUI.Requisitioner.ApproveFlowIntro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <div style="font-size:30px; display:none">
        审批流程说明
    </div>
    <div style="margin-top:2px;">
        <table class="TableAddProject"  border="1">
            <tr class="TableAddProjectFenLan">
                <td align="left">审批流程概述</td>
            </tr>
            <tr class="TableAddProjectOther" style="line-height:22px;text-indent:35px;font-size:18px;">
                <td align="left">
                    <p>
                        审批流程，是指一条申报在审批过程中经过的所有审批部门和审批顺序的描述，一条申报根据用户所指定的审批流程进行审批。如果现有审批流程不能满足审批需求，请于管理员联系添加相应的审批流程。
                    </p>
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-top:2px;">
        <table class="TableAddProject"  border="1">
            <tr class="TableAddProjectFenLan">
                <td align="left">审批流程描述</td>
            </tr>
            <tr class="TableAddProjectOther">
                 <td align="left">
                     <asp:Repeater ID="RepeaterApproveFlowIntro" runat="server">
                         <HeaderTemplate>
                            <table class="ProjectLSJ" border="1">
                                <thead style="background-color: ActiveCaption;">
                                    <tr>
                                        <td align="center" style="width:200px">审批流程名称</td>
                                        <td align="center" style="width:600px">审批流程内容</td>
                                     </tr>
                                </thead>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="plItem" runat="server">
                                <tr>
                                    <td><%#Eval("ApproveName") %></td>
                                    <td><%#Eval("ApproveContent") %></td>
                                </tr>
                            </asp:Panel>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                     </asp:Repeater>
                 </td>
            </tr>
        </table>
    </div>
</asp:Content>
