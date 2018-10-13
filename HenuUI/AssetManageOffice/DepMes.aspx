<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="DepMes.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepartmentMessageManage.DepMes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="Review" id="table1" runat="server">
        <tr class="TableViewCol1Boss">
            <td  colspan="8" align="left"><asp:Label ID="Label1" runat="server" Text="申购人信息详情："></asp:Label>
                <font color="red">（*为必填项）</font>
            </td>
        </tr>
          <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >登录名：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="userID1" runat="server"  Enabled="False"></asp:TextBox> 
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >密码：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="mima1" runat="server"  Enabled="False"></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >申购人姓名：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="truename1" runat="server" MaxLength="10" ></asp:TextBox>
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
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="phone" runat="server" MaxLength="12"></asp:TextBox>
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
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >部门名称：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="orgname" runat="server"   Enabled="False" ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
       
        
       <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >部门类型：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="orgtype" runat="server"   Enabled="False" ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
        </table>

         <table class="Review" id="table2">
           <tr>
            <td class="TableViewCol1Boss" colspan="8" align="left"><asp:Label ID="Label2" runat="server" Text="审批人信息详情："></asp:Label>
                <font color="red">（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >登录名：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="userID2" runat="server"  Enabled="False"></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >密码：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="mima2" runat="server"  Enabled="False"></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >审批人姓名：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="truename2" runat="server" MaxLength="10"   ></asp:TextBox>
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
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：
            </td>
            <td align="left" align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="phone2" runat="server" MaxLength="12" ></asp:TextBox>
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
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >部门名称：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="orgname2" runat="server"   Enabled="False" ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
       
        
       <tr class="TableUserUpTopTr">
            <td align="right" width="130" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >部门类型：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="orgtype2" runat="server"   Enabled="False" ></asp:TextBox>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        </tr>

         <tr class="TableUserUpTopTr">
            <td width="130">
            </td>
            <td  width="200" align="right">
                <asp:Button ID="Button1" runat="server" Text="完成" OnClick="Button1_Click" />
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
