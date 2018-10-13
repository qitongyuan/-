<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/FacOffMaster1Master.Master" AutoEventWireup="true" CodeBehind="FacMesUpdate2.aspx.cs" Inherits="UI.HenuUI.RelevantDeparment.FacilityOffice.FacMesUpdate2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
   
    <table class="TableUserUp" align="center" border="0">
        <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8;">部门名称：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="lb_OrganizationId" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
            <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="70"></td>
               <td width="100"></td>
        </tr>
       
          <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8;">部门类型：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="Lb_OrgType" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="70"></td>
             <td width="100"></td>
        
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8;">登录名：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="lb_UserId" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
              <td width="100"></td>
         <td width="100"></td>
             <td width="100"></td>
             <td width="70"></td>
             <td width="100"></td>
        </tr>
        <%-- <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8;">登录密码：</td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="lb_Password" runat="server" Text="" Enabled="False"></asp:TextBox>
            </td>
              <td width="100"></td>
         <td width="100"></td>
             <td width="100"></td>
             <td width="70"></td>
             <td width="100"></td>
        </tr>--%>
        <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label1" runat="server" Text="操作员姓名："></asp:Label>
            </td>
            <td align="left" width="100" style="border: thin groove #000000">
                <asp:TextBox ID="lb_TrueName" runat="server" Enabled="False"></asp:TextBox>
            </td>
             <td width="100"></td>
             <td width="70"></td>
             <td width="100"></td>
       <td width="100"></td>
             <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label2" runat="server" Text="联系电话："></asp:Label>
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
               <asp:TextBox ID="lb_Phone" runat="server" Enabled="False"></asp:TextBox>
                
            
            </td>
             <td width="100"></td>
             <td width="70"></td>
             <td width="100"></td>
               <td width="100"></td>
        
             <td width="100"></td>
        </tr>  
         <tr class="TableUserUpTopTr">
            <td align="left" colspan="8">如需修改操作员姓名或联系方式，请与管理员联系！</td>
               
        </tr>                    
    </table>

</asp:Content>
