<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepMesUserAdd.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.DepartmentMessageManage.DepMesUserAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <script src="../../../JavaScript/Js.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="AssTable">
        <tr>
            <td class="AssTableCol1" align="right">部门名称：</td>
            <td class="AssTableCol2" align="left">
                <asp:TextBox ID="text_OrgName" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right" class="AssTableCol1">部门类型：</td>
            <td align="left" class="AssTableCol2">
                <asp:DropDownList ID="ddl_OrgType" runat="server">
                   <asp:ListItem Value="1">申购单位</asp:ListItem>
                   <asp:ListItem Value="2">归口部门</asp:ListItem>
                   
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="AssTableCol1" align="right">操作员姓名：</td>
            <td class="AssTableCol2" align="left">
                <asp:TextBox ID="text_TrueName" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="AssTableCol1" align="right">联系方式：</td>
            <td class="AssTableCol2" align="left">
                <asp:TextBox ID="text_Phone" runat="server"></asp:TextBox>
            </td>
            </tr>
        <%--<tr>
            <td align="right" class="AssTableCol1">归口处：</td>
            <td align="left" class="AssTableCol2" onload="ddl">
                <asp:DropDownList ID="ddl_guikouc" runat="server">
                   <asp:ListItem Value="1">设备与实验管理处</asp:ListItem>
                   <asp:ListItem Value="2">科研处（社科处）</asp:ListItem>
                   <asp:ListItem Value="3">总务处</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>--%>
        <tr>
            <td align="right" colspan="2">
                <asp:Button ID="btn_Ok" runat="server" Text="确定" OnClick="btn_Ok_Click" />
                <asp:Button ID="btn_Cancel" runat="server" Text="取消" OnClick="btn_Cancel_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%--<table class="AssTable">
         <tr>
            <td class="AssTableCol1">部门编号：</td>
            <td class="AssTableCol2">
                <asp:Label ID="lb_OrganizationId" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="AssTableCol3">部门名称：</td>
            <td class="AssTableCol4">
                <asp:Label ID="lb_OrgName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>部门类型：</td>
            <td>
                <asp:Label ID="lb_OrgType" runat="server" Text="Label"></asp:Label>
            </td>
            <td>用户名：</td>
            <td>
                <asp:Label ID="lb_TrueName" runat="server" Text="Admin"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <asp:Label ID="lb_UserPassword" runat="server" Text="123456"></asp:Label>
            </td>
            <td>
                联系电话：
            </td>
            <td>
                <asp:Label ID="lb_Phone" runat="server" Text="13600000000"></asp:Label>
            </td>

        </tr>
    </table>--%>
            </td>
        </tr>
        <tr>
            <td colspan="2">

               
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
