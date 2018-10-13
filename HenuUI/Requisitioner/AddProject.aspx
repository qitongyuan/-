<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/DeclareMaster.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="UI.HenuUI.Requisitioner.AddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />

    <script type="text/javascript">
        function testIsNumber()
        {
            var tableID = document.getElementById("proinfo0");
            var price = tableID.rows[4].cells[3].childNodes[1].value;
            if (isNaN(price) == true) {
                alert("输入的总价必须为数字，请重新输入！");
                tableID.rows[4].cells[3].childNodes[1].value = "";
                tableID.rows[4].cells[3].childNodes[1].focus();
                return;
            }
            else {
                tableID.rows[4].cells[3].childNodes[1].value = parseFloat(price).toFixed(2);
            }
        }
        function testIsNumber1(obj) {
            var price = obj.value;
            if (isNaN(price) == true) {
                alert("输入的总价必须为数字，请重新输入！");
                obj.value = "";
                obj.focus();
                return;
            }
            else {
                obj.value = parseFloat(price).toFixed(2);
            }
        }
    </script>
    <div style="width:800px;margin-bottom:2px">
    <table class="TableAddProject" id="proinfo0" border="1">
        <tr class="TableAddProjectFenLan">
            <td colspan="4" align="left">采购计划基本信息
                 <font color="red">（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width:170px;" >项目名称：</td>
            <td style="border: thin groove #000000; width:240px;">
                <asp:TextBox ID="text_ProjectName" runat="server" Width="90%" Text="（20个字符之内）"
                    OnFocus="javascript:if(this.value=='（20个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（20个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="20"
                    ></asp:TextBox>
                <font color="red">*</font>
            </td>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width:150px;" >申购部门：</td>
            <td style="border: thin groove #000000; width:240px" >
             <asp:TextBox ID="lb_OrgName" runat="server" Text="Label" Enabled="False" Width="90%"></asp:TextBox>                
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">申报人：</td>
            <td style="border: thin groove #000000">
               <asp:TextBox ID="lb_TrueName" runat="server" Text="Label" Enabled="False" Width="90%"></asp:TextBox>
                </td>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">联系电话：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="lb_Phone" runat="server" Text="Label" Enabled="False" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">审批流程<asp:LinkButton ID="LBApproveFlowIntro" runat="server" OnClick="LBApproveFlowIntro_Click">(说明)</asp:LinkButton>：</td>
            <td style="border: thin groove #000000">
                <asp:DropDownList ID="ddl_Guiko" runat="server" Width="90%">
                    <%--<asp:ListItem Value="1">设备与实验室管理处</asp:ListItem>
                    <asp:ListItem Value="2">科研处（社科处）</asp:ListItem>--%>
                    <asp:ListItem >总务处</asp:ListItem>
                </asp:DropDownList>
                <font color="red">*</font>
            </td>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">拟申请采购方式：</td>
            <td style="border: thin groove #000000">
                <asp:DropDownList ID="ddl_ReplyProType" runat="server" Width="90%">
                    <asp:ListItem Value="1">竞争性谈判</asp:ListItem>
                    <asp:ListItem Value="2">询价</asp:ListItem>
                    <asp:ListItem Value="3">协议供货</asp:ListItem>
                    <asp:ListItem Value="4">单一来源</asp:ListItem>
                    <asp:ListItem Value="5">邀请招标</asp:ListItem>
                    <asp:ListItem>网上商城</asp:ListItem>
                </asp:DropDownList>
                <font color="red">*</font>
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">经费科目名称及编号：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="text_FundingName" runat="server" Width="90%" Text="(20个字符之内)"
                    OnFocus="javascript:if(this.value=='(20个字符之内)') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='(20个字符之内)';this.style.color='red'}" ForeColor="Gray" MaxLength="20"
                    ></asp:TextBox>
                <font color="red">*</font>
            </td>
            <td style="border: thin groove #000000; background-color: #e8e8e8;" align="right">预算总价(元)：</td>     
            <td style="border: thin groove #000000">
                <asp:TextBox ID="txtSumMoney" runat="server" Width="90%" Text="仅限数字" onchange="testIsNumber1(this)"
                    OnFocus="javascript:if(this.value=='仅限数字') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='仅限数字';this.style.color='red'}" ForeColor="Gray"             
                    ></asp:TextBox>
                <font color="red">*</font>
            </td>
        </tr>
        </table></div>


        <div style="width:800px;margin-bottom:2px;">
        <table class="TableAddProject" border="1">
        <tr class="TableAddProjectFenLan">
            <td align="left">工程内容
                <font color="red">（*为必填项）</font>
            </td>
            <td align="right">
                <asp:Button ID="Button4" runat="server" Text="添加新行" OnClick="Button4_Click" />
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="删除选中行" />
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="2" align="left" style=" width:800px">
                <asp:HiddenField ID="hfRptColumns" runat="server" Value="No,Name" />
                <table class="ProjectLSJ" border="1">
                    <tr>
                        <td>
                        <table cellpadding="1" cellspacing="0" border="1" style=" width:790px">
                            <thead>
                                <th>
                                    选择
                                </th>
                                <th>
                                    工程内容
                                </th>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="projectContent" runat="server" >
                                    <ItemTemplate >
                                        <tr >
                                            <td ><asp:CheckBox ID="checkBox" runat="server" Width="35px"/></td>
                                            <td><asp:TextBox ID="txtName" Width="700px" Text='<%#Eval("Name") %>'  runat="server" ToolTip="工程详细内容（字符任意长度）" TextMode="MultiLine"></asp:TextBox></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                      </table>
                  </td>
               </tr>

                  <%--  <tr>
                        <td  align="right">预算总价：
                        </td>
                        <td>
                            <asp:TextBox ID="txtSumMoney" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        </td>
                         <td>
                            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                        </td>
                    </tr>--%>

                </table>
            </td>
        </tr>
        </table></div>

         <table class="TableAddProject" border="1">
        <tr class="TableAddProjectFenLan">
            <td colspan="3" align="left">附件上传
                <font color=red>（限制单个文件大小4MB以下，支持的格式为doc,docx,pdf,txt）</font>
            </td>
        </tr>

       <%-- <tr class="TableAddProjectOther">
            <td colspan="3">申请采购方式理由：</td>
            <td colspan="2" align="left">
                  <table id="tabFU" runat ="server" enableviewstate ="true"  cellpadding ="0"  cellspacing ="0">
                        <tr>
                             <td >
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                   <asp:Label ID="liyou" runat="server" Text=""></asp:Label>
                             </td>
                        </tr>
                     </table>
            </td>

            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="上传" />
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="3">采购内容详细规格：</td>

            <td colspan="2" align="left">
             <asp:FileUpload ID="FileUpload_guige" runat="server" />
                      <asp:Label ID="guige" runat="server" Text=""></asp:Label>
            </td>
            <td colspan="2">
                <asp:Button ID="Button2" runat="server" Text="上传" />
            </td>
        </tr>--%>
        <tr class="TableAddProjectOther">
            <td style="width:170px;" >申请采购方式理由：</td>
            <td style="width:430px;"  align="left" >
                <table id="tabFU" runat ="server" enableviewstate ="true"  cellpadding ="0"  cellspacing ="0">
                        <tr>
                             <td>
                                 <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="只支持上传doc,docx,txt,pdf等文件" />
                                 <asp:Label ID="liyou" runat="server" Visible="False"></asp:Label>
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                             </td>
                        </tr>
                     </table>
            </td>
             
            <td style="width:100px;" rowspan="2">
                <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" ToolTip="只支持上传doc,docx,txt,pdf等文件" />
            </td>
        </tr>
        <tr class="TableAddProjectOther">
           <td >采购内容详细规格：</td>
           
               <td align="left" >
                   <asp:FileUpload ID="FileUpload_guige" runat="server" ToolTip="只支持上传doc,docx,txt,pdf等文件" />
                   <asp:Label ID="guige" runat="server" Visible="False"></asp:Label>
                   <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
               </td>
             
            <%--<td colspan="1" class="auto-style1">
                <asp:Button ID="Button2" runat="server" Text="上传" OnClick="Button2_Click" ToolTip="只支持上传doc,docx,txt,pdf等文件" />
            </td>--%>
        </tr>
        </table>

        <table class="TableAddProject" border="1">
        <tr class="TableAddProjectOther">
            <td colspan="7" align="right">
                <asp:Button ID="btn_save" runat="server" Text="保存申请" OnClick="btn_save_Click" />
                <asp:Button ID="Button3" runat="server" Text="提交申请" OnClick="Button3_Click" />
                <%--<asp:Button ID="Button5" runat="server" Text="导出PDF" PostBackUrl="~/PDFSS/AddProject.aspx" />--%>
                <asp:Button ID="Button9" runat="server" Text="取消" OnClick="Button9_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
