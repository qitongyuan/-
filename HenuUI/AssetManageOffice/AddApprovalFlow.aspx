<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AddApprovalFlow.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AddApprovalFlow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    
    <div id="flow_name" runat="server">
        <table class="TableUserUp" border="0">
            <tr class="TableAddProjectFenLan" >
                <td colspan="3" align="left">审批流程名称</td>
            </tr>

            <tr class="TableUserUpTopTr">
                <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right; width:100px">流程名称：</td>
                <td align="left" style="border: thin groove #000000;width:250px">
                    <asp:TextBox ID="txtFlowName" runat="server" Width="200px"></asp:TextBox></td>
                <td style="width:450px"></td>
            </tr>

             <tr class="TableUserUpTopTr">
                <td colspan="2" align="right">
                    <asp:Button ID="btnNext" runat="server" Text="下一步" OnClick="btnNext_Click" />
                </td>
                <td style="width:350px"></td>
            </tr>
        </table>
    </div>

    <div id="flow_content" runat="server" >
         <table class="TableUserUp" border="0">
            <tr class="TableAddProjectFenLan" >
                <td colspan="3" align="left">审批流程名称</td>
            </tr>

            <tr class="TableUserUpTopTr">
                <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right; width:100px">流程名称：</td>
                <td align="left" style="border: thin groove #000000;width:250px">
                    <asp:TextBox ID="txtFlowNameShow" runat="server" Width="200px" Enabled="false"></asp:TextBox></td>
                <td style="width:450px"></td>
            </tr>
        </table>

        <table class="TableUserUp" border="0">
            <tr class="TableAddProjectFenLan" >
                <td align="left">
                    <div>
                        <div style="width:200px;float:left">审批流程</div>
                        <div style="width:200px;float:left" align="right">
                            <asp:Button ID="btnAdd" runat="server" Text="添加新一行" OnClick="btnAdd_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="删除选中行" OnClick="btnDelete_Click" />
                        </div>
                    </div>
                </td>
                <td align="left" style="color:red">注意事项</td>
            </tr>

             <tr class="TableUserUpTopTr">
                <td style="width:400px" align="left">
                    <asp:HiddenField ID="hfRptColumns" runat="server" Value="No,Name" />
                    <table style="border-collapse:collapse; background-color:aliceblue; width:400px" border="1">
                        <tr>
                            <td>
                                <table border="1" style=" width:400px">
                                    <thead>
                                       <th>选择</th>
                                       <th>审批顺序</th>
                                       <th>审批部门</th>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="flowContent" runat="server" >
                                            <ItemTemplate>
                                                <tr>
                                                    <td ><asp:CheckBox ID="checkBox" runat="server" Width="35px"/></td>
                                                    <td><asp:Label ID="lbSeq" Text='<%#Eval("No") %>' runat="server"></asp:Label></td>
                                                    <td><asp:DropDownList ID="ddlName" runat="server" Width="250px"></asp:DropDownList></td>
                                            
                                                </tr> 
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                             </td>
                        </tr>
                    </table>
                </td>
                <td style="width:400px">
                    <div style="text-align:left; border-style:none; color:red;">
                        1、在审批流程中，至少包含一个归口部门。<br /><br />
                        2、在审批流程中，不能出现相同的审批部门。<br /><br />
                        3、在审批流程中，选择一个处级审批部门后，不能选择该部门的科级部门作为审批结点。<br /><br />
                    </div>
                </td>
            </tr>
            <tr class="TableUserUpTopTr" id="flowPreview" runat="server" style="display:none">
                <td></td>
                <td></td>
            </tr>
            <tr class="TableUserUpTopTr">
                <td align="right" >
                    <asp:Button ID="btnUp" runat="server" Text="上一步" OnClick="btnUp_Click" />
                    <%--<asp:Button ID="btnPreview" runat="server" Text="流程预览" OnClick="btnPreview_Click" />--%>
                    <asp:Button ID="btnOk" runat="server" Text="完成" OnClick="btnOk_Click" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>
