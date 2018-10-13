<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/PurManMaster.Master" AutoEventWireup="true" CodeBehind="PurAdvicesProject.aspx.cs" Inherits="UI.HenuUI.PurchaseManager.PurAdvicesProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">采购计划基本信息</td>
        </tr>

         <tr  class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:150px; text-align:right;" align="right" >项目名称：</td>
            <td style="border: thin groove #000000;width:240px">
                <asp:TextBox ID="lb_ProjectName" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:170px; text-align:right;" align="right">申报单位：</td>
            <td style="border: thin groove #000000;width:240px">
               <asp:TextBox ID="lb_DeclareOrgName" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">申报人：</td>
            <td style="border: thin groove #000000">
               <asp:TextBox ID="lb_Contact" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">联系电话：</td>
            <td style="border: thin groove #000000">
               <asp:TextBox ID="lb_Phone" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right" >拟申请采购方式：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox1" runat="server" Text="" Enabled="False" Width="95%" Height="19px"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">经费科目名称及编号：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox2" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">归口部门：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox3" runat="server" Text="" Enabled="False" Width="95%"></asp:TextBox>
            </td>
            <td colspan="4"></td>
            </tr>
      </table>

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

        <tr class="CaiGouTableCol">
            <td align="right">总价：
                 <asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Width="90" Enabled="false"></asp:TextBox>
                        元
                </td>
            </tr>
            </table>

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


    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="2" align="left">申报单位管理者审批意见<font color="red">（必须在意见中填写未通过的理由，限50字以内）</font></td>
        </tr>
       <tr class="CaiGouTableCol">
            <td colspan="2" align="left">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:RadioButtonList ID="rdbl1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="1">通过</asp:ListItem>
                            <asp:ListItem>不通过</asp:ListItem>
                        </asp:RadioButtonList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>  
        </tr>
        <tr class="CaiGouTableCol">
             <td align="right" style="background-color: #e8e8e8;width:110px">
                 审批意见 :</td>
             <td align="left"  align="left">
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                   <ContentTemplate>
                        <asp:TextBox ID="text_idea" runat="server" Width="95%" Text="(限50个字符之内)"
                    OnFocus="javascript:if(this.value=='(限50个字符之内)') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='(限50个字符之内)';this.style.color='red'}" ForeColor="Gray" MaxLength="50"
                            ></asp:TextBox>
                    </ContentTemplate>
                  </asp:UpdatePanel>
             </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td align="right" colspan="2">
                <%--<asp:Button ID="btnDownload1" runat="server" Text="下载申请采购方式理由" OnClick="btnDownload1_Click" />--%>
                <%--<asp:Button ID="btnDownload2" runat="server" Text="下载采购内容详细规格" OnClick="btnDownload2_Click" />--%>
                <%--<asp:Button ID="Button4" runat="server" Text="导出PDF" OnClick="Button4_Click" />--%>
                <%--<asp:Label ID="LabelExportPDF" runat="server" Text="Label"></asp:Label>--%>
                <%--<asp:Button ID="Button1" runat="server" Text="保存" />--%>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                    <Triggers>
                        <asp:PostBackTrigger ControlID="Button2" />
                    </Triggers>
                   <ContentTemplate>
                        <asp:Button ID="Button2" runat="server" Text="提交审批" OnClick="Button2_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>

    </table>
</asp:Content>
