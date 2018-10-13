<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AddDepType.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepartmentMessageManage.AddDepType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div1">
     <link href="../../CSS/ContentControl.css" rel="stylesheet" />
      <table class="TableUserUp"  align="center" border="0" width="800">
        <tr class="TableAddProjectFenLan" >
            <td colspan="7" align="left" style="background-color:skyblue">添加部门类型</td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" height="20" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;">部门类型：</td>
            <td align="left" height="20" width="190" style="border: thin groove #000000">
                <asp:DropDownList ID="DropDownList1" runat="server" width="170" height="20">
                    <asp:ListItem>归口部门</asp:ListItem>
                    <asp:ListItem>申购部门</asp:ListItem>
                </asp:DropDownList>
                 <font color="red">*</font>
            </td>
            <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
        </tr>
       
          <tr class="TableUserUpTopTr">
            <td align="right">
               
            </td>
            <td align="right" >
                <asp:Button ID="Button1" runat="server" Text="下一步" align="right" OnClick="Button1_Click" />
               
            </td>
               <td width="100"></td>
                 <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        
        </tr>
          </table>
        </div>
</asp:Content>
