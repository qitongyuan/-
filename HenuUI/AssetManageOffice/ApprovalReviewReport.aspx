<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="ApprovalReviewReport.aspx.cs" Inherits="UI.HenuUI.ApprovalReviewReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="TableAddProject" border="1" >
         <tr>
            <td style="text-align:left" colspan="4" class="TableViewCol1Boss">备案信息</td>
        </tr>
        <tr>
            <td>编号：</td>
            <td style="text-align:left">
                <asp:Label ID="lab_id" runat="server">
                </asp:Label>
            </td>
             <td style="width:25%;text-align:center">
                中标人：
            </td>
            <td style="width:25%;text-align:left">
                <asp:Label runat="server" ID="Bid"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:25%">
                中标金额：
            </td>
            <td style="width:25%">
                <asp:Label runat="server" ID="BidMoney"></asp:Label>
            </td>

        </tr>
        <tr>
            <td colspan="4" style="text-align:right">
                <asp:Label runat="server" ID="labelUpload">点击查看上传的图片</asp:Label>
            </td>
        </tr>
        <tr class="TableViewCol1Boss">
              <td style="text-align:left" colspan="4">备案审批意见
                   <%-- <strong style="color:red"></strong>  --%>
              </td>
        </tr>
        <tr style="text-align:left">
           <td colspan="4" align="left">
              
                    <asp:RadioButtonList  runat="server" ID="RadioButtonListAdvice" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonListAdvice_SelectedIndexChanged1" AutoPostBack="true">
                   <asp:ListItem>通过</asp:ListItem>
                   <asp:ListItem>不通过</asp:ListItem>
               </asp:RadioButtonList>
           </td>
        </tr>
        <tr>
            <td class="auto-style1" >
                备案批复意见：
              </td>
             <td colspan="3" >
                 <asp:TextBox ID="text_idea" runat="server" Width="660" TextMode="MultiLine" Enabled="false" ForeColor="Gray">
                 </asp:TextBox>             
             </td>
        </tr>
        <tr>
            <td style="text-align:right"colspan="4">
                <asp:Button runat="server" Text="提交审批" ID="buttonSubmit" OnClick="buttonSubmit_Click1"/>
            </td>
        </tr>
    </table>
</asp:Content>
