<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AddSBPeo.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepartmentMessageManage.AddSBPeo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="Review">
        <tr class="TableViewCol1Boss">
            <td  colspan="8" align="left">申购人信息详情：</td>
        </tr>
         <tr class="TableUserUpTopTr" >
            <td align="right" width="150" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >申购部门名称：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="TextBox1" runat="server" width="180"   ></asp:TextBox>
              
            </td>
             <td width="50"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>

          <tr class="TableUserUpTopTr" style="display: none">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >登录名：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="userID1" runat="server" width="180"   ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr" style="display: none">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >密码：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="mima1" runat="server" width="180" ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >申购人姓名：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="truename1" runat="server" width="180"   ForeColor="Gray" MaxLength="10"></asp:TextBox>
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
            <td align="right" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：
            </td>
            <td align="left" width="200" style="border: thin groove #000000">
                <asp:TextBox ID="phone" runat="server" width="180"  ForeColor="Gray" MaxLength="12" ></asp:TextBox>
                 <font color="red">*</font>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         

           <tr>
            <td class="TableViewCol1Boss" colspan="8" align="left">审批人信息详情：</td>
        </tr>
        <tr class="TableUserUpTopTr" >
            <td align="right" width="150" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >申购部门名称：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="TextBox2" runat="server" width="180"   ></asp:TextBox>
              
            </td>
             <td width="50"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>

        <tr class="TableUserUpTopTr" style="display: none">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >登录名：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="userID2" runat="server"  width="180" ></asp:TextBox>
              
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr" style="display: none">
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >密码：
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
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >审批人姓名：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="truename2" runat="server" width="180"  ForeColor="Gray" MaxLength="10" ></asp:TextBox>
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
            <td align="left"  width="200" style="border: thin groove #000000">
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
            <td align="right" width="120"  >
            </td>
            <td align="right"  width="200" >

                <asp:Button ID="Button2" runat="server" align="left" Text="上一页" OnClick="Button2_Click" />
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
