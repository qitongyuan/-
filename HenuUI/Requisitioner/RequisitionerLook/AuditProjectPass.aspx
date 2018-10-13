<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/DeclareMaster.Master" AutoEventWireup="true" CodeBehind="AuditProjectPass.aspx.cs" Inherits="UI.HenuUI.Requisitioner.RequisitionerLook.AuditProjectPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <div style="width:800px;margin-bottom:2px">
    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">采购计划基本信息</td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; width:150px;" align="right">项目名称：</td>
            <td  style="border: thin groove #000000;width:240px;">
                <asp:TextBox ID="lb_ProjectName" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:170px;" align="right">申报单位：</td>
            <td  style="border: thin groove #000000;width:240px;">
                <asp:TextBox ID="lb_UserId" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">申报人：</td>
            <td  style="border: thin groove #000000">
                <asp:TextBox ID="lb_Contact" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">联系电话：</td>
            <td  style="border: thin groove #000000">
                <asp:TextBox ID="lb_Phone" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">拟申请采购方式：</td>
            <td  style="border: thin groove #000000">
                <asp:TextBox ID="lb_ReplyProType" runat="server" Text="Label" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">经费科目名称及编号：</td>
            <td  style="border: thin groove #000000">
                <asp:TextBox ID="lb_FundingName" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8" align="right">归口部门：</td>
            <td  style="border: thin groove #000000">
                <asp:TextBox ID="lb_GuiKoOrgAuditState1" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td ></td>
            <td ></td>
        </tr>
        </table></div>

    <div style="width:800px;margin-bottom:2px;">
    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td align="left">采购计划申请明细</td>
        </tr>
        <tr class="CaiGouTableCol">
            <td align="left">
                <asp:Repeater ID="userRepeat" runat="server">
                    <HeaderTemplate>
                        <table class="ProjectLSJ" border="1">
                            <thead style="background-color: ActiveCaption;">
                                <tr>
                                    <td align="center">序号</td>
                                    <td align="center">项目内容</td>
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
                                <td><asp:TextBox ID="txt_EngineerContent" runat="server" Text='<%#Eval("EngineerContent") %>' Width="700" Enabled="false" TextMode="MultiLine"></asp:TextBox></td>
                               <%-- <td><%#Eval("UnitPrice") %></td>--%>
                        </asp:Panel>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr class="CaiGouTableCol" align="right">
            <td>总价：
                <asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Width="90px" Enabled="false"></asp:TextBox>
                   元
                </td>
            </tr>
         </table></div>


     <div style="width:800px;margin-bottom:2px;">
      <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="3" align="left">附件下载</td>
        </tr>
        <tr>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width:200px">申请采购方式理由：</td>
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
    </table></div>


     <div style="width:800px;margin-bottom:2px;">
    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td  align="left">相关部门审批意见</td>
        </tr>
        <tr class="CaiGouTableCol">
            <td align="center">
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
            <td align="right">
                <%--<asp:Button ID="Button1" runat="server" Text="导出PDF" PostBackUrl="~/PDFSS/ProjectShenHePass.aspx" />
                <asp:Button ID="Button9" runat="server" Text="取消" PostBackUrl="~/WebView/DeclareDemand.aspx" />--%>
                <asp:Button ID="BtnReAdd" runat="server" Text="复制生成新订单" OnClick="BtnReAdd_Click" />
                 <asp:Label ID="LabelExportPDF" runat="server"  Text="Label"></asp:Label>
                </td>
        </tr>
   </table>
         <asp:Panel runat="server" ID="panelRecord" >
              </table>
           <table class="TableAddProject" border="1" >
         <tr class="TableViewCol1Boss">
            <td colspan="4" align="left" class="TableViewCol1">备案信息
                <strong style="color:red">（*为必填项）</strong>
            </td>
             
        </tr>
       <tr>
           <td style="font-size:17px;width:200px;text-align:right">
               编号：
           </td>
           <td style="text-align:left;width:200px"">
                <asp:Label runat="server" ID="lab_id" Font-Size="17px"></asp:Label>
           </td>
           <td></td><td></td>
       </tr>
         <tr> 
            <td style="font-size:17px;width:200px;text-align:right">
                中标人：
            </td>
            <td  style="float:left;width:200px">
                <%--<asp:Label runat="server" ID="Bid"></asp:Label>--%>
                <asp:TextBox runat="server" ID="Bid"></asp:TextBox>
                 <strong style="color:red">
                  *
                </strong>
            </td>
            <td style="font-size:17px;width:200px;text-align:right">
                中标金额：
            </td>
             <td style="float:left;width:200px">
            <%--   <asp:Label runat="server" ID="BidMoney"></asp:Label>--%>
               <asp:TextBox runat="server" ID="BidMoney" OnTextChanged="BidMoney_TextChanged"></asp:TextBox>
                    元
                  <strong style="color:red">
                  *
                </strong>
            </td>
        </tr>
       <%-- <tr  class="TableViewCol1">
            <td colspan="4" style="text-align:left">
                附件上传
                <strong style="color:red">
                  （限制单个文件大小4MB以下，支持的格式为JPG，JPEG）
                </strong>
            </td>
        </tr>--%>
        <tr>
           <%-- <td colspan="4" style="text-align: right">
                <asp:FileUpload ID="fileupload_image" runat="server" ToolTip="点击上传图片" />
                <asp:Label ID="label_iName" runat="server"></asp:Label>
                <asp:Label ID="label_image" runat="server"></asp:Label>
            </td>--%>
            
            <td style="font-size:17px;text-align:right;width:200px">备案附件：</td>
            <td style="text-align:left;width:400px" colspan="2">
                <asp:FileUpload ID="fileupload_image" runat="server" ToolTip="点击上传图片"/>
                 <asp:Label ID="label_iName" runat="server"></asp:Label>
                <asp:Label ID="label_image" runat="server"></asp:Label>
            </td>
            <td style="font-size:10px;">
                 <asp:Label ID="labelTip" runat="server"  ForeColor="Red">（文件格式：".JPEG", ".JPG", ".PNG"）</asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align:right">
                <asp:Label ID="reSubmitTip" runat="server"></asp:Label>
                <asp:Button ID="buttonSubmit" style="margin-right:10px" runat="server" Text="提交备案" OnClick="buttonSubmit_Click"/>
                
                <%--<asp:Button ID="Button2" runat="server" Text="通过" />--%>
                <%--<asp:Label runat="server" ID="labelState"></asp:Label>--%>
            </td>
        </tr>
        <tr class="TableViewCol1Boss">
           <td colspan="4"style="text-align:left">
               <asp:Label ID="lab_tableFront" runat="server">备案审批意见</asp:Label>  
           </td>
        </tr>
    <tr>
        <td colspan="4">
             <asp:Repeater ID="RepeaterRocord" runat="server">
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
