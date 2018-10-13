<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="Adddepfirst.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.Adddepfirst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <div  id="bmleixing" runat="server">
          <link href="../../CSS/ContentControl.css" rel="stylesheet" />
      <table class="TableUserUp"  align="center" border="0" width="800">
        <tr class="TableAddProjectFenLan" >
            <td colspan="7" align="left" style="background-color:skyblue">选择部门类型</td>
        </tr>
        <tr class="TableUserUpTopTr">
            <td align="right" height="20" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align:left;">部门类型：</td>
            <td align="left" height="20" width="120" style="border: thin groove #000000">
                <asp:DropDownList ID="bumenleixing" runat="server" OnSelectedIndexChanged="chujibumen_SelectedIndexChanged">
                    <asp:ListItem>申购部门,申购部门审核</asp:ListItem>
                    <asp:ListItem>归口部门</asp:ListItem>
                </asp:DropDownList>
                 <font color="red">*</font>
            </td>
            <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
               <td width="200"></td>
        </tr>--%>

    <%--  <tr class="TableUserUpTopTr">
            <td align="right">
               
            </td>
            <td align="right" >
                <asp:Button ID="Button3" runat="server" Text="下一步" align="right" OnClick="diyibu"  />
               
            </td>
               <td width="100"></td>
                 <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
             <td width="100"></td>
        
        </tr>
          </table>
    </div>--%>

    <div id="div1" runat="server">
        <link href="../../CSS/ContentControl.css" rel="stylesheet" />
        <table class="TableUserUp" align="center" border="0" width="800">
            <tr class="TableAddProjectFenLan">
                <td colspan="7" align="left" style="background-color: skyblue">添加部门</td>
            </tr>
            <tr class="TableUserUpTopTr">
                <td align="left" height="20" width="200" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">添加处级科级部门：</td>
                <td align="left" height="20" width="300" style="border: thin groove #000000">
                    <asp:RadioButtonList ID="bumenxuanze" runat="server" Width="240" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Text="1">添加处级部门</asp:ListItem>
                        <asp:ListItem Text="2">为现有处级部门添加科级部门</asp:ListItem>
                    </asp:RadioButtonList>
                    <%--   <font color="red">*</font>--%>
                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
            </tr>

            <tr class="TableUserUpTopTr">
                <td align="right"></td>
                <td align="right">
                    <asp:Button ID="Button1" runat="server" Text="下一步" align="right" OnClick="dierbu" />

                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>

            </tr>
        </table>
    </div>

    <div id="mydiv2" runat="server">
        <link href="../../CSS/ContentControl.css" rel="stylesheet" />
        <table class="TableUserUp" align="center" border="0" width="800">
            <tr class="TableAddProjectFenLan">
                <td colspan="7" align="left" style="background-color: skyblue">选择处级部门</td>
            </tr>
            <tr class="TableUserUpTopTr">
                <td align="right" height="20" width="100" style="border: thin groove #000000; background-color: #e8e8e8; text-align: left;">处级部门：</td>
                <td align="left" height="20" width="120" style="border: thin groove #000000">
                    <asp:DropDownList ID="chujibumen" runat="server" OnSelectedIndexChanged="chujibumen_SelectedIndexChanged" Width="150"></asp:DropDownList>
                    <%--  <font color="red">*</font>--%>
                </td>
                <td width="100" style="border: thin groove #000000" align="center">
                    <asp:Button ID="btnRefresh" runat="server" Text="刷 新" OnClick="btnRefresh_Click" Width="50" />
                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="200"></td>
            </tr>

            <tr class="TableUserUpTopTr">
                <td align="right"></td>
                <td align="right"></td>
                <td width="100" align="center"> <asp:Button ID="Button2" runat="server" Text="下一步" OnClick="disanbu" Width="50"/></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>

            </tr>
        </table>
    </div>

    <div id="mydiv3" runat="server">
        <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
        <table>
            <tr>
                <td class="TableViewCol1Boss" colspan="8" align="left">部门信息详情：</td>
            </tr>

            <tr class="TableUserUpTopTr">
                <td align="right" width="180" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">处级部门名称：
                </td>
                <td align="left" width="230" style="border: thin groove #000000">
                    <asp:TextBox ID="cjdepname" runat="server" Width="200" Enabled="False"></asp:TextBox>
                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
            </tr>

            <tr class="TableUserUpTopTr">
                <td align="right" width="150" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">科级部门ID：
                </td>
                <td align="left" width="230" style="border: thin groove #000000">
                    <asp:TextBox ID="depid" runat="server" Width="200" Enabled="False" OnTextChanged="depid_TextChanged"></asp:TextBox>
                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
            </tr>
            <tr class="TableUserUpTopTr">
                <td align="right" width="120" style="border: thin groove #000000; background-color: #e8e8e8; text-align: right;">科级部门名称：
                </td>
                <td align="left" width="200" style="border: thin groove #000000">
                    <asp:TextBox ID="depname" runat="server" Width="200" OnTextChanged="depname_TextChanged"></asp:TextBox>
                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
            </tr>


            <tr class="TableUserUpTopTr">
                <td align="right" width="100"></td>
                <td align="right" width="200">
                    <asp:Button ID="wancheng" runat="server" Text="完成" OnClick="wancheng_Click" Width="50"/>
                </td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
                <td width="100"></td>
            </tr>

        </table>
    </div>
</asp:Content>
