<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssMesUpdate.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssMesUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <%--<table class="TableUserUp"  align="center" border="0">
          <tr  class="TableUserUpTopTr">            
            <td align="right">
                部门信息：</td>
            <td align="left">
                <asp:Label ID="Label3" runat="server" Text="河南大学国有资产办事处"></asp:Label>
            </td>
        </tr>
        <tr  class="TableUserUpTopTr" >
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="操作员姓名："></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Text="徐浩"></asp:TextBox>
                <font color=red>*</font>
            </td>
        </tr>
        <tr  class="TableUserUpTopTr">
            <td align="right" class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="联系电话："></asp:Label>
            </td>
            <td align="left" class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Text="170039009000"></asp:TextBox>
                <font color=red>*</font>
            </td>
        </tr>
       
        <tr  class="TableUserUpTopTr">
            <td align="center" colspan="2">
                <asp:Button ID="btn_ok" runat="server" Text="确认"/> 
                <asp:Button ID="btn_cancel" runat="server" Text="取消" />
            </td>
        </tr>
        <tr class="TableUserUpBase">
            <td rowspan="3" colspan="2"></td>
        </tr>
    </table>--%>
    <table class="TableUserUp" align="center" border="0">
        <%-- <tr class="TableAddProjectFenLan">
            <td colspan="7" align="left">用户基本信息查看</td>
        </tr>--%>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">部门名称：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <%-- <asp:Label ID="lb_OrganizationId" runat="server" Text="" ></asp:Label>--%>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="false"></asp:TextBox>
            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
        </tr>

        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">部门类型：</td>
            <td align="left" width="200" style="border: thin groove #000000;">
                <%-- <asp:Label ID="Lb_OrgType" runat="server" Text=""></asp:Label>--%>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox>
            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>

        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">登录名：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <%--    <asp:Label ID="lb_UserId" runat="server" Text="" ></asp:Label>--%>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="false"></asp:TextBox>
            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
        </tr>
        <%--   <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #C0C0C0; text-align:right;">登录密码：</td>
            <td align="left" width="200" style="border: thin groove #000000">
               <%-- <asp:Label ID="lb_Password" runat="server" enabled="false"></asp:Label>--%>
        <%--   <asp:TextBox ID="TextBox4" runat="server" enabled="false"></asp:TextBox>--%>
        <%--   </td>
              <td width="100"></td>
         <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        </tr>--%>
        <tr class="TableUserUpTopTr">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">
                <asp:Label ID="Label1" runat="server" Text="操作员姓名："></asp:Label>
            </td>
            <td align="left" width="100" style="border: thin groove #000000">
                <%-- <asp:Label ID="lb_TrueName" runat="server"></asp:Label>--%>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="false"></asp:TextBox>
            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">
                <asp:Label ID="Label2" runat="server" Text="联系电话："></asp:Label>
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <%--  <asp:Label ID="lb_Phone" runat="server"></asp:Label>--%>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="true"></asp:TextBox>

            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>

            <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td width="100"></td>
            <td width="100" align="right">
                <asp:Button ID="btnSave" runat="server" Text="保存" OnClick="btnSave_Click" />
            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
        </tr>


    </table>
</asp:Content>
