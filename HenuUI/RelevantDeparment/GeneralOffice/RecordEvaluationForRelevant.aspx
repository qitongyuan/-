<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/GenOffMaster.Master" AutoEventWireup="true" CodeBehind="RecordEvaluationForRelevant.aspx.cs" Inherits="UI.HenuUI.RelevantDeparment.GeneralOffice.RecordEvaluationForRelevant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableAddProject" border="1" >
         <tr class="TableViewCol1Boss">
            <td colspan="4" align="left" class="TableViewCol1">备案信息
                   <strong style="color:red">（*为必填项）</strong>
            </td>
        </tr>
       <tr>
           <td style="font-size:17px">
               编号：
           </td>
           <td style="text-align:left">
                <asp:Label runat="server" ID="lab_id" Font-Size="17px"></asp:Label>
           </td>
           <td></td><td></td>
       </tr>
         <tr> 
            <td>
                中标人：
            </td>
            <td  style="float:left">
                <%--<asp:Label runat="server" ID="Bid"></asp:Label>--%>
                <asp:TextBox runat="server" ID="Bid"></asp:TextBox>
                   <strong style="color:red">*</strong>
            </td>
            <td >
                中标金额：
            </td>
             <td style="float:left">
            <%--   <asp:Label runat="server" ID="BidMoney"></asp:Label>--%>
               <asp:TextBox runat="server" ID="BidMoney"></asp:TextBox>
                    <strong style="color:red">*</strong>
            </td>
        </tr>
        <tr  class="TableViewCol1">
            <td colspan="4" style="text-align:left">
                附件上传
                <strong style="color:red">
                  （限制单个文件大小4MB以下，支持的格式为JPG，JPEG）
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right">
                <asp:FileUpload ID="fileupload_image" runat="server" ToolTip="点击上传图片" />
                <asp:Label ID="label_iName" runat="server"></asp:Label>
                <asp:Label ID="label_image" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align:right" class="auto-style1">
                <asp:Button ID="buttonSubmit" style="margin-right:10px" runat="server" Text="提交备案" OnClick="buttonSubmit_Click"/>
                
                <%--<asp:Button ID="Button2" runat="server" Text="通过" />--%>
                <%--<asp:Label runat="server" ID="labelState"></asp:Label>--%>
            </td>
        </tr>
        <tr class="TableViewCol1Boss">
           <td colspan="4"style="text-align:left">
               <asp:Label ID="lab_tableFront" runat="server">相关部门审批意见</asp:Label>  
           </td>
        </tr>
    <tr>
        <td colspan="4">
             <asp:Repeater ID="Repeater2" runat="server">
                    <HeaderTemplate>
                        <table class="ProjectLSJ" border="1">
                            <thead style="background-color: ActiveCaption;">
                                <tr>
                                    <td>备案部门</td>
                                    <td>备案人</td>
                                    <td>备案时间</td>
                                    <td>备案结果</td>
                                    <td>备案意见</td>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Panel ID="plItem" runat="server">
                            <tr>
                               <td><asp:Label runat="server" ID="lblID" Text='<%#Eval("shenPiBuMen") %>'></asp:Label></td>
                                <td><%#Eval("shenPiRen") %></td>
                                <td><%#Eval("shenPiShiJian") %></td>
                                <td><%#Eval("shenPiJieGuo") %></td>   <%--申报部门审批结果--%>
                                <td><%#Eval("shenPiYiJian") %></td>         <%--申报部门审批意见--%>
                            </tr>
                        </asp:Panel>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table> 
           </FooterTemplate>
     </asp:Repeater>
        </td>
    </tr>
        <tr>
            <td colspan="4" style="text-align:right">
                <asp:Button  ID="reSubmit" Text ="重新提交" runat="server" OnClick="reSubmit_Click"/>
            </td>
        </tr>
        </table>
</asp:Content>
