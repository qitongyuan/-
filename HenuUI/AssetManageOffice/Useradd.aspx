<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Useradd.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Useradd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table >
        <tr>
            <td class="TableViewCol1Boss" colspan="8" align="left">用户信息详情：</td>
        </tr>

         <tr class="TableUserUpTopTr" >
            <td align="right" width="150" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >用户ID：
            </td>
            <td align="left"  width="210" style="border: thin groove #000000">
                <asp:TextBox ID="userid" runat="server"  width="180" ></asp:TextBox>
             <%--   <font color="red">*</font>--%>
            </td>
             <td width="100"></td>·
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
              <td width="100"></td>
              <td width="100"></td>
        </tr>
      
      <%--   <tr class="TableUserUpTopTr"  style="display: none">--%>
        <tr class="TableUserUpTopTr"  >
            <td align="right" width="120" style="border: thin groove #000000; background-color:#e8e8e8; text-align:right;" >密码：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="mima2" runat="server" width="180" ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >姓名：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="truename2" runat="server" width="180"   ForeColor="Gray" MaxLength="10"></asp:TextBox>
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
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >性别：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
             <%--   <asp:TextBox ID="xingbie" runat="server" width="180"   ForeColor="Gray" MaxLength="10"></asp:TextBox>--%>
                <asp:DropDownList ID="xingbiekuang" Width="180" runat="server">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
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
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="phone2" runat="server" width="180"  ForeColor="Gray" MaxLength="12"></asp:TextBox>
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
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >工作单位：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
               <asp:DropDownList ID="workplace" runat="server" Width="180" ></asp:DropDownList>
             <%--   <asp:TextBox ID="workplace" runat="server" width="180"   ForeColor="Gray" MaxLength="10"></asp:TextBox>--%>
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
            <td align="right" width="100"  >
            </td>
            <td align="right"  width="200" >

             
                <asp:Button ID="wancheng" runat="server" Text="完成" OnClick="Button1_Click" />
              
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
