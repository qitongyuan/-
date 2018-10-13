<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssetAdvicesProject.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssetAdvicesProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    <table class="CaiGouTable" border="1">
        <tr class="CaiGouTableCol2">
            <td colspan="8" align="left">采购计划基本信息</td>
         
        </tr>
         <tr  class="CaiGouTableCol">

            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" width:"150px">项目名称：</td>
            <td colspan="3" style="border: thin groove #000000;width:240px" >
            
              <asp:TextBox ID="TextBox1" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;width:170px; text-align:right;" >申购部门：</td>
            <td colspan="3" style="border: thin groove #000000;width:240px" >
               <asp:TextBox ID="TextBox2" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right; " width:"200" >申报人：</td>
            <td colspan="3"  style="border: thin groove #000000">
              <asp:TextBox ID="TextBox3" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >联系电话：</td>
            <td colspan="3"  style="border: thin groove #000000">
             <asp:TextBox ID="Label5" runat="server" Text=""  Enabled="False" Width="95%" ></asp:TextBox>
            </td>
        </tr>
         <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" width:"120">拟申请采购方式：</td>
            <td colspan="3"   style="border: thin groove #000000">
                <asp:TextBox ID="Label6" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
            <td  style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" >经费科目名称及编号：</td>
            <td colspan="3" style="border: thin groove #000000" >
               <asp:TextBox ID="Label7" runat="server" Text="" Width="95%" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td style="border: thin groove #000000; background-color: #e8e8e8; text-align:right;" width:"200">审批流程名称：</td>
            <td colspan="3" style="border: thin groove #000000" >
                <asp:TextBox ID="Label8" runat="server" Text="" Width="95%" Enabled="False" Height="19px"></asp:TextBox>
            </td>
            <td colspan="4"></td>
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
                            <thead >
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
                                <td><%#Eval("EngineerContent") %></td>
                               
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
                总价：<asp:TextBox ID="lb_sumTotalPrice" runat="server" Text="Label" Enabled="false" Width="90"></asp:TextBox>元
                </td>
            </tr>
         </table>


     <table class="CaiGouTable" border="1">
         <tr class="CaiGouTableCol2">
            <td colspan="8" align="left">附件下载</td>
        </tr>
         <tr>
            <td colspan="2" align="left" style="border: thin groove #000000; background-color: #e8e8e8; width:200px" width="200">申请采购方式理由：</td>
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
                 
                <asp:RadioButtonList ID="rdbl1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbl1_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="1">通过</asp:ListItem>
                    <asp:ListItem Text="2">不通过</asp:ListItem>
                </asp:RadioButtonList>
                              
            </td>  
        </tr>
          <tr >
            <td  colspan="1" align="left" style="border: thin groove #000000; background-color:#e8e8e8;">
                <asp:Label ID="Label2" runat="server" Text="组织形式：" Width="130px" ></asp:Label>
            </td>

              <td  colspan="2" align="left">
                 
                 <%-- <asp:TextBox ID="zuzhixingshi" runat="server"></asp:TextBox>--%>
                  <asp:DropDownList ID="zuzhixing" runat="server" Width="150px" OnSelectedIndexChanged="zuzhixing_SelectedIndexChanged" Enabled="false">
                      <asp:ListItem>学校组织</asp:ListItem>
                      <asp:ListItem>自行组织</asp:ListItem>
                      <asp:ListItem>归口部门组织</asp:ListItem>
                  </asp:DropDownList>
                                
                  <asp:DropDownList ID="OrgForm_GK" runat="server"  Visible="false">
                  </asp:DropDownList>
                                
            </td>

            <td  colspan="1" align="left" style="border: thin groove #000000; background-color: #e8e8e8;">
                <asp:Label ID="Label3" runat="server" Text="采购方式：" Width="80px"></asp:Label>
            </td>

                <td  colspan="4" align="left">
                  
                    <asp:DropDownList ID="caigoufangshi" runat="server" Width="150px"  AutoPostBack="true" OnSelectedIndexChanged="caigoufangshi_SelectedIndexChanged" Enabled="false">
                        <asp:ListItem>竞争性谈判</asp:ListItem>
                        <asp:ListItem>询价</asp:ListItem>
                        <asp:ListItem>网上商城</asp:ListItem>
                        <asp:ListItem>单一来源</asp:ListItem>
                        <asp:ListItem>邀请招标</asp:ListItem>
                        <asp:ListItem>商家库随机抽取</asp:ListItem>
                        <asp:ListItem>用户选定</asp:ListItem>
                        <asp:ListItem>竞争性磋商</asp:ListItem>
                    </asp:DropDownList>
                             
            </td>

              <%-- <td  colspan="1" align="left" style="border: thin groove #000000; background-color: #C0C0C0;">
                   <asp:Label ID="Label4" runat="server" Text="采购编号：" Width="80px"></asp:Label>
            </td>--%>

             <%--  <td  colspan="1" align="left">
                   <asp:TextBox ID="bianhao" runat="server" TextMode="MultiLine" Enabled="false"></asp:TextBox>
            </td>--%>

        </tr>
        <tr class="CaiGouTableCol">
             <td align="left" style="border: thin groove #000000; background-color: #e8e8e8;">
                 审批意见：

             </td> 
             <td align="left" colspan="7" align="left">
                
                 <asp:TextBox ID="text_idea" runat="server" Width="660"  TextMode="MultiLine" OnTextChanged="text_idea_TextChanged" Enabled="false"
                       ForeColor="Gray"></asp:TextBox>
                             
             </td>
        </tr>
        <tr class="CaiGouTableCol">
            <td align="right" colspan="8">
               
             
                <asp:Button ID="Button2" runat="server" Text="提交审批" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    
                             </ContentTemplate>
                 </asp:UpdatePanel>
</asp:Content>
