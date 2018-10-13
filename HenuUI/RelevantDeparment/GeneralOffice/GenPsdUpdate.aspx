<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/GenOffMaster.Master" AutoEventWireup="true" CodeBehind="GenPsdUpdate.aspx.cs" Inherits="UI.HenuUI.RelevantDeparment.GeneralOffice.GenPsdUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
   <%-- <table class="TableUserUp" align="center">
        <tr class="TableUserUpTopTr">
            <td align="right">
                <asp:Label ID="Label3" runat="server" Text="旧密码"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <font color="red">*</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="新密码"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <font color="red">*</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="确认密码"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <font color="red">*</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="确认" />
                <asp:Button ID="Button2" runat="server" Text="取消" />
            </td>
        </tr>
    </table>--%>

    <table class="TableUserUp" align="center">
        <tr class="TableAddProjectFenLan">
            <td colspan="8" align="left">用户密码修改<font color="red">（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">旧密码：
            </td>
            <td align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="text_UserPassword_Old" runat="server" TextMode="Password"></asp:TextBox>
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
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">
                <asp:Label ID="Label4" runat="server" Text="新密码："></asp:Label>
            </td>
            <td align="left" align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="text_UserPassword_New" runat="server" TextMode="Password"></asp:TextBox>
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
            <td align="right" align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">
                <asp:Label ID="Label1" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td align="left" align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="text_UserPassword_New_Ok" runat="server" TextMode="Password"></asp:TextBox>
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
