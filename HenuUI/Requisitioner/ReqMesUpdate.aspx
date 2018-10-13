<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/DeclareMaster.Master" AutoEventWireup="true" CodeBehind="ReqMesUpdate.aspx.cs" Inherits="UI.HenuUI.Requisitioner.ReqMesUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <%--<table class="TableUserUp" align="center" >
        <tr class="TableAddProjectFenLan">
            <td colspan="2" align="left">用户基本信息修改<font color="red">（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" class="auto-style1" style="border: thin groove #000000">部门ID：</td>
            <td align="left" class="auto-style1" style="border: thin groove #000000">
                <asp:Label ID="lb_OrganizationId" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" class="auto-style1" style="border: thin groove #000000">部门信息：</td>
            <td align="left" class="auto-style1" style="border: thin groove #000000">
                <asp:Label ID="lb_OrgName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" style="border: thin groove #000000">
                <asp:Label ID="Label1" runat="server" Text="操作员姓名："></asp:Label>
            </td>
            <td align="left" style="border: thin groove #000000">
                <asp:Label ID="lb_TrueName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" style="border: thin groove #000000">
                <asp:Label ID="Label2" runat="server" Text="联系电话："></asp:Label>
            </td>
            <td align="left" style="border: thin groove #000000">
               <asp:Label ID="lb_Phone" runat="server"></asp:Label>
                
            
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
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8;">部门名称：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="lb_OrganizationId" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
            <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
        </tr>
       
          <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8;">部门类型：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="Lb_OrgType" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
               <td width="100"></td>
                 <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8;">登录名：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="lb_UserId" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
              <td width="100"></td>
         <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        </tr>
         <%--<tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8;">登录密码：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="lb_Password" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
              <td width="100"></td>
         <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        </tr>--%>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label1" runat="server" Text="操作员姓名："></asp:Label>
            </td>
            <td align="left" width="100" style="border: thin groove #000000">
                <asp:TextBox ID="lb_TrueName" runat="server" Enabled="False"></asp:TextBox>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
       <td width="100"></td>
             <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label2" runat="server" Text="联系电话："></asp:Label>
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
               <asp:TextBox ID="lb_Phone" runat="server" ></asp:TextBox>
                
            
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
        
             <td width="100"></td>
        </tr>   
         <tr align="left">
             <%--<td colspan="4">如需修改操作员姓名、联系电话，请与管理员联系。</td>--%>
              <td width="100"></td>
            <td width="100" align="right">
                <asp:Button ID="btnSave" runat="server" Text="保存" OnClick="btnSave_Click"/>
            </td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
            <td width="100"></td>
         </tr>      
    </table>
</asp:Content>
