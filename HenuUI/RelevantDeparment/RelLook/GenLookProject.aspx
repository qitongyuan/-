﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/GenOffMaster.Master" AutoEventWireup="true" CodeBehind="GenLookProject.aspx.cs" Inherits="UI.HenuUI.RelevantDeparment.RelLook.GenLookProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <div style="width: 800px; margin-bottom: 2px">
       <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">采购计划基本信息</td>
        </tr>    
          <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:150px; text-align:right;" align="right">项目名称：</td>
            <td style="border: thin groove #000000;width:240px;">
                <asp:TextBox ID="lb_ProjectName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:170px; text-align:right;" align="right">申报单位：</td>
            <td style="border: thin groove #000000;width:240px;">
                <asp:TextBox ID="lb_UserId" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">申报人：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="lb_Contact" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">联系电话：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="lb_Phone" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">拟申请采购方式：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="lb_ReplyProType" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">经费科目名称及编号：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="lb_FundingName" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">归口部门：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="lb_GuiKoOrgAuditState1" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;">&nbsp;</td>
            <td style="border: thin groove #000000">&nbsp;</td>
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
                    总价：<asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Width="90px" Enabled="false"></asp:TextBox>元    
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 800px; margin-bottom: 2px">
        <table class="CaiGouTable" border="1">
            <tr class="CaiGouTableCol2">
                <td colspan="8" align="left">附件下载</td>
            </tr>
          <%--  <tr>
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
            </tr>--%>
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
                    <asp:Repeater ID="Repeater2" runat="server">
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
                                    <%--申报部门审批结果--%>
                                    <td><%#Eval("shenPiYiJian") %></td>
                                    <%--申报部门审批意见--%>
                                </tr>
                            </asp:Panel>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
             <tr>
            <td align="right">
                <asp:Label ID="LabelExportPDF" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
        </table>
    </div>
    <asp:Panel runat="server" ID="panelRecord" Width="800px">
             <table class="TableAddProject" border="1" id="tabl_record" >
         <tr class="TableViewCol1Boss">
            <td colspan="4" align="left" class="TableViewCol1">备案信息
                   <strong style="color:red">（*为必填项）</strong>
            </td>
        </tr>
       <tr>
           <td style="font-size:17px;"  align="right" class="auto-style1">
               编号：
           </td>
           <td style="text-align:left;" class="auto-style1">
                <asp:Label runat="server" ID="lab_id" Font-Size="17px"></asp:Label>
           </td>
           <td class="auto-style2"></td><td class="auto-style2"></td>
       </tr>
         <tr> 
            <td style="font-size:17px;width:200px"  align="right">
                中标人：
            </td>
            <td  style="float:left;width:200px">
                <%--<asp:Label runat="server" ID="Bid"></asp:Label>--%>
                <asp:TextBox runat="server" ID="Bid"></asp:TextBox>
                   <strong style="color:red">*</strong>
            </td>
            <td style="font-size:17px;width:200px"  align="right">
                中标金额：
            </td>
             <td style="float:left;width:200px">
           
               <asp:TextBox runat="server" ID="BidMoney"></asp:TextBox>
                    <strong style="color:red">*</strong>
            </td>
        </tr>
     
          <tr>
            <td style="font-size:17px;width:200px" align="right">备案附件：</td>
            <td  style="text-align:left;width:400px" colspan="2">
                <asp:FileUpload ID="fileupload_image" runat="server" ToolTip="点击上传图片" />
                <asp:Label ID="label_iName" runat="server"></asp:Label>
                <asp:Label ID="label_image" runat="server"></asp:Label>
            </td>
            <td style="font-size:10px;">
                 <asp:Label ID="labelTip" runat="server"  ForeColor="Red">（文件格式：".JPEG", ".JPG", ".PNG"）</asp:Label>
            </td>
        </tr>
        <tr>
             <asp:Label ID="reSubmitTip" runat="server"></asp:Label>
            <td colspan="4" style="text-align:right">
                <asp:Button ID="buttonSubmit" runat="server" Text="提交备案" OnClick="buttonSubmit_Click"/>
                
                <%--<asp:Button ID="Button2" runat="server" Text="通过" />--%>
                <%--<asp:Label runat="server" ID="labelState"></asp:Label>--%>
            </td>
        </tr>
        <tr class="TableViewCol1Boss">
           <td colspan="4"style="text-align:left">
               <asp:Label ID="lab_tableFront" runat="server">相关部门审批意见</asp:Label>  
           </td>
        </tr>
    <tr>
        <td colspan="4">
             <asp:Repeater ID="RepeaterRecord" runat="server">
                    <HeaderTemplate>
                        <table class="ProjectLSJ" border="1">
                            <thead style="background-color: ActiveCaption;">
                                <tr>
                                    <td>备案部门</td>
                                    <td>备案人</td>
                                    <td>备案时间</td>
                                    <td>备案结果</td>
                                    <td>备案意见</td>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Panel ID="plItem" runat="server">
                            <tr>
                               <td><asp:Label runat="server" ID="lblID" Text='<%#Eval("shenPiBuMen") %>'></asp:Label></td>
                                <td><%#Eval("shenPiRen") %></td>
                                <td><%#Eval("shenPiShiJian") %></td>
                                <td><%#Eval("shenPiJieGuo") %></td>   <%--申报部门审批结果--%>
                                <td><%#Eval("shenPiYiJian") %></td>         <%--申报部门审批意见--%>
                            </tr>
                        </asp:Panel>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table> 
           </FooterTemplate>
     </asp:Repeater>
        </td>
    </tr>
        <tr>
            <td colspan="4" style="text-align:right">
                <asp:Button  ID="reSubmit" Text ="重新提交" runat="server" OnClick="reSubmit_Click"/>
            </td>
        </tr>
        </table>
    </asp:Panel>
</asp:Content>
