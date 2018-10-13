<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/GenOffMaster.Master" AutoEventWireup="true" CodeBehind="GenOffRevProject.aspx.cs" Inherits="UI.HenuUI.RelevantDeparment.ReviewReporters.GenOffRevProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../../../JavaScript/laydate.js"></script>
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="Review" style="border: thin groove #000000" border="1">
        <tr>
            <td class="TableViewCol1Boss" colspan="4" align="left">评审报告<font color="red">(*为必填项)</font></td>
        </tr>

        <tr>
            <td style="background-color: #e8e8e8; " align="right">项目名称：</td>
            <td style="border: thin groove #000000; width: 250px;">
                <asp:TextBox ID="TextBox1" runat="server" align="left" Enabled="False" Width="200px"></asp:TextBox>
            </td>
            <td align="right" style="background-color: #e8e8e8;">项目编号：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox3" runat="server" align="left" Width="200px" Enabled="false"></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td align="right" style="background-color: #e8e8e8;">开标时间：</td>
            <td style="border: thin groove #000000">
                 <asp:TextBox ID="TextBox5" runat="server" align="left" Width="200px" onclick="laydate()" Text="点击选取时间"
                    OnFocus="javascript:if(this.value=='点击选取时间') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='点击选取时间';this.style.color='red'}" ForeColor="Gray" 
                    
                    ></asp:TextBox>
            <font color="red">*</font></td>
            <td align="right" style="background-color: #e8e8e8;">开标地点：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox6" runat="server" align="left" Width="200px" Text="（20个字符之内）"
                    OnFocus="javascript:if(this.value=='（20个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（20个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="20" 
                    ></asp:TextBox>
            <font color="red">*</font></td>
        </tr>
        <tr>
            <td align="right" style="background-color: #e8e8e8; ">申购部门名称：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox2" runat="server" align="left" Width="200px" Text="（20个字符之内）"
                    OnFocus="javascript:if(this.value=='（20个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（20个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="20" 
                    ></asp:TextBox>
            <font color="red">*</font></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="TableViewCol1Boss" colspan="4" align="left">评审专家<font color="red">(*为必填项)</font></td>
        </tr>
        <tr>
            <td align="right" style="background-color: #e8e8e8;">专家姓名：</td>
            <td colspan="3" style="border: thin groove #000000">
                   <asp:TextBox ID="txtExpertName" runat="server" Width="600px" align="left" Text="（100个字符之内）"
                    OnFocus="javascript:if(this.value=='（100个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（100个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="100" 
                    ></asp:TextBox>

                <font color="red">*</font>
            </td>
        </tr>
         <tr>
            <td class="TableViewCol1Boss" colspan="4" align="left">招标结果<font color="red">(*为必填项)</font></td>
        </tr>
        <tr>
            <td align="right" style="background-color: #e8e8e8; " class="auto-style1">招标情况：</td>
            <td colspan="3" style="border: thin groove #000000">
                <asp:TextBox ID="TextBox7" runat="server" Width="601px" Height="70px" align="left" TextMode="MultiLine" Text="（字符任意长度）"
                    OnFocus="javascript:if(this.value=='（字符任意长度）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（字符任意长度）';this.style.color='red'}" ForeColor="Gray"></asp:TextBox>
            <font color="red">*</font></td>
        </tr>

        <tr>
            <td align="right" style="background-color: #e8e8e8; " class="auto-style1">评标结果：</td>
            <td colspan="3" style="border: thin groove #000000"> 
           <asp:TextBox ID="TextBox8" runat="server" Width="601px" Height="70px" align="left" TextMode="MultiLine" Text="（字符任意长度）"
                    OnFocus="javascript:if(this.value=='（字符任意长度）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（字符任意长度）';this.style.color='red'}" ForeColor="Gray"></asp:TextBox>
            <font color="red">*</font></td>
        </tr>
        <tr>
            <td align="right" colspan="4">
                <%--<asp:Button ID="btn_ok" runat="server" Text="保存" OnClick="btn_ok_Click" />--%>
              <%-- <asp:Label ID="LabelExportPDF" runat="server" Text="Label"></asp:Label>--%>
                <asp:Button ID="btn_submit" runat="server" Text="保存并导出PDF" OnClick="btn_submit_Click" />
                <%--<asp:Button ID="Button3" runat="server" Text="导出PDF" OnClick="Button3_Click" />--%>
            </td>
        </tr>
    </table>
</asp:Content>
