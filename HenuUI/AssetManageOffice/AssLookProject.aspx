<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssLookProject.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssLook.AssLookProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 19px;
        }
        .auto-style4 {
            width: 200px;
            height: 19px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
      <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left" class="auto-style4">采购计划基本信息</td>
           <%-- <td align="right"></td>--%>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right; width:150px" >项目名称：</td>
            <td  style="border: thin groove #000000;width:240px">
                <asp:TextBox ID="Label2" runat="server" Text=""  Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:170px; text-align:right;" >申购部门：</td>
            <td   style="border: thin groove #000000;width:240px">
                <asp:TextBox ID="lb_UserId" runat="server" Text=""  Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >申报人：</td>
            <td   style="border: thin groove #000000" >
                 <asp:TextBox ID="Label4" runat="server" Text=""  Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：</td>
            <td  style="border: thin groove #000000" >
                <asp:TextBox ID="Label5" runat="server" Text=""  Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >拟申请采购方式：</td>
            <td  style="border: thin groove #000000">
                 <asp:TextBox ID="Label6" runat="server" Text=""  Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:left;" >经费科目名称及编号：</td>
            <td  style="border: thin groove #000000">
               <asp:TextBox ID="Label7" runat="server" Text=""  Enabled="False"  Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >归口部门：</td>
            <td  style="border: thin groove #000000">
                 <asp:TextBox ID="Label8" runat="server" Text=""  Width="95%"  Enabled="False" Height="19px"></asp:TextBox>
            </td>
             <td colspan="4"></td>

        </tr>
          </table>


     <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">采购计划申请明细</td>
        </tr>
        <tr class="CaiGouTableCol">
            <td colspan="4" align="left">
                <asp:Repeater ID="userRepeat" runat="server">
                    <HeaderTemplate>
                        <table class="ProjectLSJ" border="1">
                            <thead style="background-color: ActiveCaption;">
                                <tr>
                                    <th width="100">序号</th>
                                    <th width="700">项目内容</th>
                                   
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Panel ID="plItem" runat="server">
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblID" Text='<%#Eval("EngineerInfoId") %>'></asp:Label></td>
                                 <td><asp:TextBox ID="txt_EngineerContent" runat="server" Text='<%#Eval("EngineerContent") %>' Width="700" Enabled="false"></asp:TextBox></td>
                              
                        </asp:Panel>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td colspan="4" align="right">
                总价：<asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Enabled="false" Width="90"></asp:TextBox>元
                </td>
            </tr>
         </table>

     <table class="CaiGouTable" border="1">
           <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">附件下载</td>
        </tr>
         <tr>
            <td colspan="2" align="left" style="border: thin groove #000000; background-color: #e8e8e8;width:200px" >申请采购方式理由：</td>
            <td colspan="1" align="left" style="border: thin groove #000000;width:400px">
                <asp:Label ID="txtAttachment1" runat="server" Enabled="False"></asp:Label>
            </td>
            <td colspan="1" style="border: thin groove #000000;width:200px">
                <asp:Label ID="LabelDownload1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"  align="left" style="border: thin groove #000000; background-color:#e8e8e8;">采购内容详细规格：</td>
            <td colspan="1"  align="left" style="border: thin groove #000000" >
                <asp:Label ID="txtAttachment2" runat="server" Enabled="False"  ></asp:Label>
            </td>
            <td colspan="1" style="border: thin groove #000000">
                <asp:Label ID="LabelDownload2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         </table>

     <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">相关部门审批意见</td>
        </tr>
      
        <tr class="CaiGouTableCol">
            <td colspan="4" align="left">
               <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table class="ProjectLSJ" border="1">
                            <thead style="background-color: ActiveCaption;">
                                <tr>
                                    <td width="200">审批部门</td>
                                     <td width="100">审批人</td>
                                    <td width="150">审批时间</td>
                                   
                                    <td width="100">审批结果</td>
                                    <td width="250">审批意见</td>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Panel ID="plItem" runat="server">
                             <tr>
                               <td><asp:Label runat="server" ID="lblID" Text='<%#Eval("shenPiBuMen") %>'></asp:Label></td>
                                <td><%#Eval("shenPiren") %></td>
                                  <td><%#Eval("shenPiShiJian") %></td>
                                <td><%#Eval("shenPiJieGuo") %></td>   <%--申报部门审批结果--%>
                               <%-- <td><%#Eval("shenPiYiJian") %></td>--%>         <%--申报部门审批意见--%>
                                <td><asp:TextBox ID="TextBox1" runat="server" Width="220px" Enabled="false" TextMode="MultiLine" Text=<%#Eval("shenPiYiJian") %>></asp:TextBox></td>
                            </tr>
                        </asp:Panel>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
    <%--    <tr>
            <td colspan="8" align="right">
              
              <%--  <asp:Button ID="Button9" runat="server" Text="取消" PostBackUrl="~/WebView/DeclareDemand.aspx" />--%>
           <%-- </td>
        </tr>--%>
         <tr>
             <td align="right">
                 <%--<asp:Button ID="Button1" runat="server" Text="导出PDF" PostBackUrl="~/PDFSS/ProjectShenHePass.aspx" />
                <asp:Button ID="Button9" runat="server" Text="取消" PostBackUrl="~/WebView/DeclareDemand.aspx" />--%>
                 <asp:Button ID="BtnReAdd" runat="server" Text="复制生成新订单" OnClick="BtnReAdd_Click" />
                 <asp:Label ID="LabelExportPDF" runat="server" Text="Label"></asp:Label>
                 <asp:LinkButton ID="btnEdit" runat="server" Text="编辑" OnClick="btnEdit_Click" ></asp:LinkButton>
             </td>
         </tr>
    </table>
    <asp:Panel runat="server" ID="panelRecord">
           <table class="TableAddProject" border="1">
         <tr>
            <td style="text-align:left;width:800px"  colspan="4" class="TableViewCol1Boss">备案信息</td>
        </tr>
        <tr>
            <td style="width:200px">编号：</td>
            <td style="text-align:left;width:200px">
                <asp:Label ID="lab_id" runat="server">
                </asp:Label>
            </td>
             <td style="text-align:center;width:200px" >
                中标人：
            </td>
            <td style="text-align:left;width:200px">
                <asp:Label runat="server" ID="Bid"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:200px">
                中标金额：
            </td>
            <td style="width:200px">
                <asp:Label runat="server" ID="BidMoney"></asp:Label>
            </td>
            <td style="width:200px">备案附件： </td>
            <td style="width:200px">
                 <asp:Label runat="server" ID="labelUpload">点击查看上传的图片</asp:Label>
            </td>
        </tr>
        <tr class="TableViewCol1Boss">
              <td style="text-align:left" colspan="4">备案审批意见
                   <%-- <strong style="color:red"></strong>  --%>
              </td>
        </tr>
        <tr style="text-align:left">
           <td colspan="4" align="left">
              
                    <asp:RadioButtonList  runat="server" ID="RadioButtonListAdvice" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonListAdvice_SelectedIndexChanged" AutoPostBack="true">
                   <asp:ListItem>通过</asp:ListItem>
                   <asp:ListItem>不通过</asp:ListItem>
               </asp:RadioButtonList>
           </td>
        </tr>
        <tr>
            <td class="auto-style1" >
                备案批复意见：
              </td>
             <td colspan="3" >
                 <asp:TextBox ID="text_idea" runat="server" Width="660" TextMode="MultiLine" Enabled="false" ForeColor="Gray">
                 </asp:TextBox>             
             </td>
        </tr>
        <tr>
            <td style="text-align:right"colspan="4">
                <asp:Button runat="server" Text="提交审批" ID="buttonSubmit" OnClick="buttonSubmit_Click1"/>
            </td>
        </tr>
    </table>
    </asp:Panel>
</asp:Content>
