<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssetAdvices.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssetAdvices"
    EnableEventValidation="false" 
     %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
   
    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="4" align="left">采购计划基本信息</td>
           
        </tr>

         <tr  class="CaiGouTableCol">

            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" width:"150px">项目名称：</td>
            <td  style="border: thin groove #000000;width:240px"  >
            
              <asp:TextBox ID="TextBox1" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8; width:170px; text-align:right;" >申购部门：</td>
            <td  style="border: thin groove #000000;width:240px" >
               <asp:TextBox ID="TextBox2" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right; " width:"200" >申报人：</td>
            <td   style="border: thin groove #000000">
              <asp:TextBox ID="TextBox3" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：</td>
            <td   style="border: thin groove #000000">
             <asp:TextBox ID="Label5" runat="server" Text=""  Enabled="False" Width="95%" ></asp:TextBox>
            </td>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" width:"120">拟申请采购方式：</td>
            <td    style="border: thin groove #000000">
                <asp:TextBox ID="Label6" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
            <td  style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >经费科目名称及编号:</td>
            <td style="border: thin groove #000000" >
               <asp:TextBox ID="Label7" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" width:"200">审批流程名称：</td>
            <td  style="border: thin groove #000000" >
                <asp:TextBox ID="Label8" runat="server" Text="" Width="95%" Enabled="False" Height="19px"></asp:TextBox>
            </td>
            <td colspan="2"></td>
            </tr>
          </table>


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
                                    <td>编号</td>
                                    <td>采购名称</td>
                                    <td>参考型号</td>
                                    <td>技术系数与要求</td>
                                     <td>数量</td>
                                     <td>单项单价</td>
                                     <td>单项总价</td>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Panel ID="plItem" runat="server">
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblID" Text='<%#Eval("ProInfoId") %>'></asp:Label></td>
                                <td><%#Eval("ProName") %></td>
                                <td><%#Eval("GuiGe") %></td>
                                <td><%#Eval("CanShu") %></td>
                                <td><%#Eval("Amount") %></td>
                                <td><%#Eval("UnitPrice") %></td>
                                <td><%#Eval("TotaledPrice") %></td>
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
               总价：<asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Enabled="false" Width="90"></asp:TextBox> 元
                </td>
            </tr>
         </table>

        <table class="CaiGouTable" border="1">
         <tr class="CaiGouTableCol2">
            <td colspan="8" align="left">附件下载</td>
        </tr>
         <tr>
            <td colspan="2" align="left" style="border: thin groove #000000; background-color: #e8e8e8;width:200px" width="200">申请采购方式理由：</td>
            <td colspan="3" align="left" style="border: thin groove #000000;width:400px">
                <asp:Label ID="txtAttachment1" runat="server" Enabled="False" ></asp:Label>
            </td>
            <td colspan="3" style="border: thin groove #000000;width:200px">
                <asp:Label ID="LabelDownload1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"  align="left" style="border: thin groove #000000; background-color: #e8e8e8;" width="200">采购内容详细规格：</td>
            <td colspan="3"  align="left" style="border: thin groove #000000">
                <asp:Label ID="txtAttachment2" runat="server" Enabled="False" ></asp:Label>
            </td>
            <td colspan="3" style="border: thin groove #000000">
                <asp:Label ID="LabelDownload2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
             </table>

     <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="8" align="left">相关部门审批意见</td>
        </tr>
        <tr class="CaiGouTableCol">
            <td colspan="8" align="left">
                 <asp:Repeater ID="Repeater1" runat="server">
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
         </table>
        <%--  <tr class="TableAddProjectFenLan">
            <td  colspan="8" align="left">附件下载</td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="2" align="left">申请采购方式理由：</td>
            <td colspan="4" align="left">
             
                <table id="Table2" runat="server"  cellpadding="0" cellspacing="0">
                        <tr>
                             <td >
                                   <asp:Label ID="liyou" runat="server" Text="文件名"></asp:Label>
                             </td>
                        </tr>
                     </table>
            </td>
             
            <td colspan="2">
                <asp:Button ID="Button3" runat="server" Text="下载"  />
            </td>
        </tr>
        <tr class="TableAddProjectOther">
           <td colspan="2" align="left">采购内容详细规格：</td>
           
               <td colspan="4" align="left">
                   <table id="Table1" runat="server"  cellpadding="0" cellspacing="0">
               
                       <tr>
                           <td>
                               <asp:Label ID="Label1" runat="server" Text="文件名"></asp:Label>
                           </td>
                       </tr>
                   </table>
            </td>
             
            <td colspan="2">
                <asp:Button ID="Button5" runat="server" Text="下载"  />
            </td>
        </tr>--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

      <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
           <Triggers>
              <asp:PostBackTrigger ControlID="Button2" />
           </Triggers>
        <ContentTemplate>
        <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="8" align="left">国资办审批意见<font color="red">（必须在意见中填写未通过的理由，限50字以内）</font></td>
        </tr>
       <tr class="CaiGouTableCol">
            <td colspan="8" align="left" >
              
                <asp:RadioButtonList ID="rdbl1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbl1_SelectedIndexChanged" AutoPostBack="True" >
                    <asp:ListItem Text="1">通过</asp:ListItem>
                    <asp:ListItem Text="2">不通过</asp:ListItem>
                </asp:RadioButtonList>
                 <%--    </ContentTemplate>
                 </asp:UpdatePanel>--%>
            </td>  
        </tr>
          <tr >
            <td  colspan="1" align="left" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label2" runat="server" Text="组织形式：" Width="130px" ></asp:Label>
            </td>

              <td  colspan="2" align="left">
                  <%--  <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>--%>
                 <%-- <asp:TextBox ID="zuzhixingshi" runat="server"></asp:TextBox>--%>
                 <asp:DropDownList ID="zuzhixing" runat="server" Width="150px"  OnSelectedIndexChanged="zuzhixing_SelectedIndexChanged" AutoPostBack="true" Enabled="false" >
                      <asp:ListItem>自行组织</asp:ListItem>
                      <asp:ListItem>学校组织</asp:ListItem>
                      <asp:ListItem>归口部门组织</asp:ListItem>
                  </asp:DropDownList>
                    <asp:DropDownList ID="OrgForm_GK" runat="server" >
                  </asp:DropDownList>
                        <%--       </ContentTemplate>
                 </asp:UpdatePanel>--%>
            </td>

            <td  colspan="1" align="left" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label3" runat="server" Text="采购方式：" Width="80px"></asp:Label>
            </td>

                <td  colspan="2" align="left">
                   <%--  <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>--%>
                    <asp:DropDownList ID="caigoufangshi" runat="server" Width="150px"  OnSelectedIndexChanged="caigoufangshi_SelectedIndexChanged" AutoPostBack="true" Enabled="false">
                        <asp:ListItem>竞争性谈判</asp:ListItem>
                        <asp:ListItem>询价</asp:ListItem>
                        <asp:ListItem>网上商城</asp:ListItem>
                        <asp:ListItem>单一来源</asp:ListItem>
                        <asp:ListItem>邀请招标</asp:ListItem>
                        <asp:ListItem>商家库随机抽取</asp:ListItem>
                        <asp:ListItem>用户选定</asp:ListItem>
                        <asp:ListItem>竞争性磋商</asp:ListItem>
                    </asp:DropDownList>
                      <%-- </ContentTemplate>
                 </asp:UpdatePanel>--%>
            </td>

             <%--  <td  colspan="1" align="left" style="border: thin groove #000000; background-color: #C0C0C0;">
           
                   <asp:Label ID="Label4" runat="server" Text="采购编号：" Width="80px"></asp:Label>
            </td>

               <td  colspan="1" align="left">
                   <asp:TextBox ID="bianhao" runat="server" Enabled="false" TextMode="MultiLine"></asp:TextBox>
              </td>

        </tr>--%>
        <tr class="CaiGouTableCol">
             <td align="left" style="border: thin groove #000000; background-color: #e8e8e8;">
                 审批意见：
             </td> 
             <td align="left" colspan="7" align="left">
                <%--  <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>--%>
                 <asp:TextBox ID="text_idea" runat="server" Width="660"  TextMode="MultiLine" OnTextChanged="text_idea_TextChanged" Enabled="false" 
                     ForeColor="Gray" ></asp:TextBox>
                           <%--   </ContentTemplate>
                 </asp:UpdatePanel>--%>
             </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td align="right" colspan="8">
              <%--  <asp:Button ID="xiazai1" runat="server" Text="下载申请采购方式理由" OnClick="xiazai1_Click" />
                <asp:Button ID="xiazai2" runat="server" Text="下载采购内容详细规格" OnClick="xiazai2_Click" />
                <asp:Button ID="Button4" runat="server" Text="导出PDF" />--%>
            <%-- <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>--%>
                <asp:Button ID="Button2" runat="server" Text="提交审批" OnClick="Button2_Click" />
                <%--  </ContentTemplate>
                 </asp:UpdatePanel>--%>
            </td>
        </tr>

    </table>
                             </ContentTemplate>
                 </asp:UpdatePanel>
</asp:Content>
