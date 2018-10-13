<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="DepAdd.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <table >
        <tr>
            <td class="TableViewCol1Boss" colspan="8" align="left">部门信息详情：</td>
        </tr>

         <tr class="TableUserUpTopTr" >
            <td align="right" width="150" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >部门ID：
            </td>
            <td align="left"  width="230" style="border: thin groove #000000">
                <asp:TextBox ID="depid" runat="server"  width="200" ></asp:TextBox>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
              <td width="100"></td>
              <td width="100"></td>
        </tr>
        <tr class="TableUserUpTopTr" >
            <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >部门名称：
            </td>
            <td align="left"  width="200" style="border: thin groove #000000">
                <asp:TextBox ID="depname" runat="server"  width="200" ></asp:TextBox>
            </td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="100"></td>
              <td width="100"></td>
        </tr>
         <tr class="TableUserUpTopTr" >
            <td align="right" width="120" style="border: thin groove #000000; background-color:#e8e8e8; text-align:right;" >部门类型：
            </td>
            <td align="left"  width="230" style="border: thin groove #000000">
           <%--     <asp:TextBox ID="deptype" runat="server" width="180" ></asp:TextBox>--%>

            <%--    <asp:CheckBox ID="guikoubumen" Text="归口部门" runat="server" />
                <asp:CheckBox ID="shengoubumenguanli" Text="申购部门管理" runat="server" />
                <asp:CheckBox ID="shengoubumenshenhe" Text="申购部门审核" runat="server" />--%>
                <asp:UpdatePanel  runat="server" ID="updatepanel1"  UpdateMode="Conditional" ChildrenAsTriggers="true">
                     <Triggers>
                         <asp:PostBackTrigger ControlID="bumentype" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:RadioButtonList ID="bumentype" runat="server" >
                            <asp:ListItem>申购部门、申购部门审核</asp:ListItem>
                            <asp:ListItem>归口部门</asp:ListItem>
                        </asp:RadioButtonList>
                    <%-- <asp:CheckBoxList ID="bumentype" runat="server" OnSelectedIndexChanged="bumentype_SelectedIndexChanged">
                    <asp:ListItem>申购部门、申购部门审核</asp:ListItem>         
                     <asp:ListItem>归口部门</asp:ListItem>
                </asp:CheckBoxList>--%>
                    </ContentTemplate>
                </asp:UpdatePanel>
               
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
