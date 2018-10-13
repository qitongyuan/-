<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/DeclareMaster.Master" AutoEventWireup="true" CodeBehind="ReqPsdUpdate.aspx.cs" Inherits="UI.HenuUI.Requisitioner.ReqPsdUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
     <table class="TableUserUp" align="center">
        <tr class="TableAddProjectFenLan">
            <td colspan="8" align="left">用户密码修改<font color="red">（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #e8e8e8; background-color: #C0C0C0; text-align:right;" >旧密码：
            </td>
            <td align="left" align="left" width="200" style="border: thin groove #e8e8e8">
                <asp:TextBox ID="text_UserPassword_Old" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
                <font color="red">*</font>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr" >
            <td align="right" width="100" style="border: thin groove #e8e8e8; background-color: #C0C0C0; text-align:right;" >
                <asp:Label ID="Label4" runat="server" Text="新密码："></asp:Label>
            </td>
            <td align="left" align="left" align="left" width="200" style="border: thin groove #e8e8e8">
                <asp:TextBox ID="text_UserPassword_New" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
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
            <td align="right" align="right" width="100" style="border: thin groove #e8e8e8; background-color: #C0C0C0; text-align:right;">
                <asp:Label ID="Label1" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td align="left" align="left" align="left" width="200" style="border: thin groove #e8e8e8">
                <asp:TextBox ID="text_UserPassword_New_Ok" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
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
    </table>
</asp:Content>
