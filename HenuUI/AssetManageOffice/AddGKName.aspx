<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AddGKName.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepartmentMessageManage.AddGKName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
      <table class="TableUserUp" align="center" border="0" width="800">
        <tr class="TableAddProjectFenLan" >
            <td colspan="7" align="left" style="background-color:skyblue">添加归口部门名称</td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" height="20" width="150" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;">归口部门名称：</td>
            <td align="left" height="20" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="TextBox1" runat="server" width="170"   ForeColor="Gray" MaxLength="10"></asp:TextBox>
                 <font color="red">*</font>
            </td>
            <td width="50"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        </tr>
       
          <tr class="TableUserUpTopTr">
            <td align="right">
               
            </td>
            <td align="right" >
                <asp:Button ID="Button2" runat="server" Text="上一步" align="left" OnClick="Button2_Click"/>
                <asp:Button ID="Button1" runat="server" Text="下一步" align="right" OnClick="Button1_Click" />
               
            </td>
               <td width="100"></td>
                 <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        
        </tr>
          </table>
</asp:Content>
