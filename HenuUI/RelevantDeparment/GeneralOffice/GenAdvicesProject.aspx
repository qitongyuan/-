﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/GenOffMaster.Master" AutoEventWireup="true" CodeBehind="GenAdvicesProject.aspx.cs" Inherits="UI.HenuUI.RelevantDeparment.GeneralOffice.GenAdvicesProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <div style="width: 800px; margin-bottom: 2px">
        <table class="CaiGouTable" border="1">
            <tr class="CaiGouTableCol2">
                <td colspan="4" align="left">采购计划基本信息</td>
            </tr>
            <tr class="CaiGouTableCol">
                <td style="border: thin groove #000000; background-color: #e8e8e8;width:150px;text-align:right;" align="right">项目名称：</td>
                <td style="border: thin groove #000000;width:240px">
                    <asp:TextBox ID="lb_ProjectName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
                <td style="border: thin groove #000000; background-color: #e8e8e8;width:170px; text-align:right;" align="right">申报单位：</td>
                <td style="border: thin groove #000000;width:240px">
                    <asp:TextBox ID="lb_DeclareOrgName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr class="CaiGouTableCol">
                <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">申报人：</td>
                <td style="border: thin groove #000000">
                    <asp:TextBox ID="lb_Contact" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
                <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">联系电话：</td>
                <td style="border: thin groove #000000">
                    <asp:TextBox ID="lb_Phone" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr class="CaiGouTableCol">
                <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">拟申请采购方式：</td>
                <td style="border: thin groove #000000">
                    <asp:TextBox ID="lb_ProTypeName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
                <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">经费科目名称及编号：</td>
                <td style="border: thin groove #000000">
                    <asp:TextBox ID="lb_FundingName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
            </tr>
            <tr class="CaiGouTableCol">
                <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">归口部门：</td>
                <td style="border: thin groove #000000">
                    <asp:TextBox ID="lb_GuiKoOrgName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
                </td>
                <td colspan="2"></td>
            </tr>
        </table>
    </div>
    <div style="width: 800px; margin-bottom: 2px">
        <table class="CaiGouTable" border="1">
            <tr class="CaiGouTableCol2">
                <td colspan="8" align="left">采购计划申请明细</td>
            </tr>

            <tr class="CaiGouTableCol">
                <td colspan="8" align="left">
                    <asp:Repeater ID="userRepeat" runat="server">
                        <HeaderTemplate>
                            <table class="ProjectLSJ" border="1">
                                <thead style="background-color: ActiveCaption;">
                                    <tr>
                                        <td>序号</td>
                                        <td>项目内容</td>
                                        <%--<td>单项总价</td>--%>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="plItem" runat="server">
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblID" Text='<%#Eval("EngineerInfoId") %>'></asp:Label></td>
                                    <%--<td><%#Eval("EngineerContent") %></td>--%>
                                    <td>
                                        <asp:TextBox ID="txt_EngineerContent" runat="server" Text='<%#Eval("EngineerContent") %>' Width="700" Enabled="false"></asp:TextBox></td>
                                    <%-- <td><%#Eval("UnitPrice") %></td>--%>
                            </asp:Panel>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>

            <tr class="CaiGouTableCol">
                <td colspan="8" align="right">
                   总价：<asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Width="90" Enabled="false"></asp:TextBox>元 
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 800px; margin-bottom: 2px">
        <%--<table class="CaiGouTable" border="1">
            <tr class="CaiGouTableCol2">
                <td colspan="8" align="left">附件下载</td>
            </tr>
            <tr>
                <td colspan="2" align="right" style="border: thin groove #000000; background-color: #e8e8e8;">申请采购方式理由：</td>
                <td colspan="3" align="left" style="border: thin groove #000000">
                    <asp:Label ID="txtAttachment1" runat="server" Enabled="False"></asp:Label>
                </td>
                <td colspan="3" style="border: thin groove #000000">
                    <asp:Label ID="LabelDownload1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right" style="border: thin groove #000000; background-color: #e8e8e8;">采购内容详细规格：</td>
                <td colspan="3" align="left" style="border: thin groove #000000">
                    <asp:Label ID="txtAttachment2" runat="server" Enabled="False"></asp:Label>
                </td>
                <td colspan="3" style="border: thin groove #000000">
                    <asp:Label ID="LabelDownload2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>--%>
         <table class="CaiGouTable" border="1">
          <tr class="CaiGouTableCol2">
            <td colspan="3" align="left">附件下载</td>
        </tr>
         <tr>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;width:200px">申请采购方式理由：</td>
            <td align="left" style="border: thin groove #000000;width:400px">
                <asp:Label ID="txtAttachment1" runat="server" Enabled="False" ></asp:Label>
            </td>
            <td  style="border: thin groove #000000;width:200px">
                <asp:Label ID="LabelDownload1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">采购内容详细规格：</td>
            <td align="left" style="border: thin groove #000000">
                <asp:Label ID="txtAttachment2" runat="server" Enabled="False" ></asp:Label>
            </td>
            <td style="border: thin groove #000000">
                <asp:Label ID="LabelDownload2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        </table>
    </div>
    <div style="width: 800px; margin-bottom: 2px">
        <table class="CaiGouTable" border="1">
            <tr class="CaiGouTableCol2">
                <td colspan="8" align="left">相关部门审批意见</td>
            </tr>
            <tr class="CaiGouTableCol">
                <td colspan="8" align="left">
                    <asp:Repeater ID="RepeaterSB" runat="server">
                        <HeaderTemplate>
                            <table class="ProjectLSJ" border="1">
                                <thead style="background-color: ActiveCaption;">
                                    <tr>
                                        <td>审批部门</td>
                                        <td>审批人</td>
                                        <td>审批时间</td>
                                        <td>审批结果</td>
                                        <td>审批意见</td>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="plItem" runat="server">
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblID" Text='<%#Eval("shenPiBuMen") %>'></asp:Label></td>
                                    <td><%#Eval("shenPiRen") %></td>
                                    <td><%#Eval("shenPiShiJian") %></td>
                                    <td><%#Eval("shenPiJieGuo") %></td>
                                    <td><%#Eval("shenPiYiJian") %></td>
                                </tr>
                            </asp:Panel>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 800px; margin-bottom: 2px">
        <table class="CaiGouTable" border="1">
            <tr class="CaiGouTableCol2">
                <td colspan="8" align="left">归口部门总务处审批意见<font color="red">（必须在意见中填写未通过的理由，限50字以内）</font></td>
            </tr>
            <tr class="CaiGouTableCol">
                <td colspan="8" align="left">
                    <asp:RadioButtonList ID="rdbl1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="1">通过</asp:ListItem>
                        <asp:ListItem>不通过</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="CaiGouTableCol">
               <td width="80px" align="left">审批意见:</td>
                <td align="left" colspan="7" align="left" width="720px">
                    <asp:TextBox ID="text_idea" runat="server" Width="80%" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr class="CaiGouTableCol">
                <td align="right" colspan="8">
                    <%--<asp:Button ID="Button4" runat="server" Text="导出PDF" />
                <asp:Button ID="Button1" runat="server" Text="保存" />--%>
                    <asp:Button ID="Button2" runat="server" Text="提交审批" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
