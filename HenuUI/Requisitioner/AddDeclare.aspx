<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/DeclareMaster.Master" AutoEventWireup="true" CodeBehind="AddDeclare.aspx.cs" Inherits="UI.HenuUI.Requisitioner.AddDeclare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../CSS/ContentControl.css" rel="stylesheet" />
    
    <script type="text/javascript">
        function calculatorSum()
        {
            //var count = document.getElementById("txtCount").value;
            //var price = document.getElementById("txtBugetPrice").value;

            ////if (count == "" || price == "") {
            //    return;
            //}
            //else {
            //    if (isNaN(count) == true) {
            //        alert("输入的数量必须为数字，请重新输入！");
            //        document.getElementById("txtCount").value = "";
            //        document.getElementById("txtCount").focus();
            //        return;
            //    }
            //    else if (isNaN(price) == true) {
            //        alert("输入的单价必须为数字，请重新输入！");
            //        document.getElementById("txtBugetPrice").value = "";
            //        document.getElementById("txtBugetPrice").focus();
            //        return;
            //    }

            //    var c = parseFloat(count);
            //    var d = parseFloat(price);

            //    var e = c * d;
            //    document.getElementById("lblTotalPrice").value = e.toFixed(2);
            //}
            var sum = 0.0;
            var tableID = document.getElementById("proinfo2");
            for (var i = 1; i < tableID.rows.length; i++) {
                var count = tableID.rows[i].cells[4].firstChild.value;
                var price = tableID.rows[i].cells[5].firstChild.value;
                if (count == "" && price == "") {
                   continue;
                }
                else if (count == "" || price == "")
                {
                    if (count != "")
                    {
                        if (isNaN(count) == true) {
                            alert("输入的数量必须为数字，请重新输入！");
                            tableID.rows[i].cells[4].firstChild.value = "";
                            tableID.rows[i].cells[4].firstChild.focus();
                            return;
                        }

                        if (count.indexOf(".") > -1) {
                            alert("输入的数量必须为整数，请重新输入！");
                            tableID.rows[i].cells[4].firstChild.value = "";
                            tableID.rows[i].cells[4].firstChild.focus();
                            return;
                        }
                    }

                    if (price != "")
                    {
                        if (isNaN(price) == true) {
                            alert("输入的单价必须为数字，请重新输入！");
                            tableID.rows[i].cells[5].firstChild.value = "";
                            tableID.rows[i].cells[5].firstChild.focus();
                            return;
                        }
                    }

                }
                else {
                    if (isNaN(count) == true) {
                        alert("输入的数量必须为数字，请重新输入！");
                        tableID.rows[i].cells[4].firstChild.value = "";
                        tableID.rows[i].cells[4].firstChild.focus();
                        return;
                    }
                    else if (isNaN(price) == true) {
                        alert("输入的单价必须为数字，请重新输入！");
                        tableID.rows[i].cells[5].firstChild.value = "";
                        tableID.rows[i].cells[5].firstChild.focus();
                        return;
                    }
                    if (count.indexOf(".") > -1)
                    {
                        alert("输入的数量必须为整数，请重新输入！");
                        tableID.rows[i].cells[4].firstChild.value = "";
                        tableID.rows[i].cells[4].firstChild.focus();
                        return;
                    }

                    var c = parseFloat(count);
                    var d = parseFloat(price);

                    var e = c * d;
                    sum = sum + e;
                    tableID.rows[i].cells[6].firstChild.value = e.toFixed(2);
                }

            }
            
            var tableID_outside = document.getElementById("proinfo0");
            tableID_outside.rows[7].cells[0].childNodes[1].value = sum.toFixed(2);
        }
        function removeZero()
        {
            var tableID = document.getElementById("proinfo2");
            for (var i = 1; i < tableID.rows.length; i++) {
                var count = tableID.rows[i].cells[4].firstChild.value;
                //var price = tableID.rows[i].cells[5].firstChild.value;
                if (count != "") {
                    tableID.rows[i].cells[4].firstChild.value = parseFloat(count);
                   // tableID.rows[i].cells[5].firstChild.value = parseFloat(price);
                }
            }
        }
        function removeZero1() {
            var tableID = document.getElementById("proinfo2");
            for (var i = 1; i < tableID.rows.length; i++) {
                //var count = tableID.rows[i].cells[4].firstChild.value;
                var price = tableID.rows[i].cells[5].firstChild.value;
                if (price != "") {
                    //tableID.rows[i].cells[4].firstChild.value = parseFloat(count);
                     tableID.rows[i].cells[5].firstChild.value = parseFloat(price);
                }
            }
        }

        function setInformation(obj,type)
        {
            var filePath = obj.value;
            var getActiveXObject, getFile, someMessage;
            getAXO = new ActiveXObject("Scripting.FileSystemObject");
            getF = getAXO.GetFile(filePath);0
            if (type == '1')
            {
                someMessage = "FileName:" + getF.Name + "Filesize:" + getF.size + " bytes.";
                alert(someMessage);
            }
            else if (type == '2')
            {

            }
        }
    </script>
    
    <table class="TableAddProject"  border="1" id="proinfo0">
         <tr class="TableAddProjectFenLan">
            <td colspan="7" align="left">采购计划基本信息
                 <font color=red>（*为必填项）</font>
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="3" style="background-color: #e8e8e8;text-align:right;width:150px; ">项目名称：</td>
            <td style="width:250px;">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Double" Width="190" Text="申购项目名称（20个字符之内）"
                    OnFocus="javascript:if(this.value=='申购项目名称（20个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='申购项目名称（20个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="20" 
                    ></asp:TextBox>
                <font color=red>*</font>
            </td>
            <td style="background-color: #e8e8e8;text-align:right;width:150px ">申购部门：</td>
            <td colspan="2" style="width:250px">
                <asp:Textbox ID="lb_OrgName" runat="server" Text="Label" BorderStyle="Double" Enabled="False" Width="190"></asp:Textbox>     
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="3" style="background-color: #e8e8e8;text-align:right ">申报人：</td>
            <td>
               <%-- <asp:Label ID="lb_TrueName" runat="server" Text="Label"></asp:Label>--%>
                <asp:TextBox ID="lb_TrueName" runat="server" Enabled="False" BorderStyle="Double" Width="190"></asp:TextBox>
            </td>
            <td style="background-color: #e8e8e8;text-align:right ">联系电话：</td>
            <td colspan="2">
               <asp:Textbox ID="lb_Phone" runat="server" Text="Label"  BorderStyle="Double" Enabled="False" Width="190"></asp:Textbox>
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="3" style="background-color: #e8e8e8;text-align:right ">审批流程<asp:LinkButton ID="LBApproveFlowIntro" runat="server" OnClick="LBApproveFlowIntro_Click">(说明)</asp:LinkButton>：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200">
                    <asp:ListItem>设备与实验室管理处</asp:ListItem>
                    <asp:ListItem>科研处</asp:ListItem>
                    <asp:ListItem>社科处</asp:ListItem>
                    <asp:ListItem>总务处</asp:ListItem>
                </asp:DropDownList>
                <font color=red>*</font>
            </td>
            <td style="background-color: #e8e8e8;text-align:right ">拟申请采购方式：</td>
            <td colspan="2">
                 <asp:DropDownList ID="DropDownList3" runat="server" Width="200">
                     <asp:ListItem>竞争性谈判</asp:ListItem>
                     <asp:ListItem>询价</asp:ListItem>
                     <asp:ListItem>网上商城</asp:ListItem>
                     <asp:ListItem>单一来源</asp:ListItem>
                     <asp:ListItem>邀请招标</asp:ListItem>
                    
                 </asp:DropDownList>
                <font color=red>*</font>
            </td>
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="3" style="background-color: #e8e8e8;text-align:right ">经费科目名称及编号</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  BorderStyle="Double" Width="190" Text="(20个字符之内)"
                    OnFocus="javascript:if(this.value=='(20个字符之内)') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='(20个字符之内)';this.style.color='red'}" ForeColor="Gray" MaxLength="20" 
                    ></asp:TextBox>
                <font color=red>*</font>
            </td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr class="TableAddProjectFenLan">
            <td colspan="6" align="left">货物与服务明细
                <font color=red>（*为必填项）</font>
            </td>
            <td align="right">
            <asp:Button ID="Button4" runat="server" Text="添加新行" OnClick="Button4_Click" />
                 <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="删除选中行" style="height: 21px" />
           </td>
        </tr>

        <tr class="TableAddProjectOther">
              <td colspan="7" align="left" style=" width:800px">
                 <asp:HiddenField ID="hfRptColumns" runat="server" Value="No,Name,Model,Requirement,Count,BugetPrice,TotalPrice" />
                 <table class="ProjectLSJ" border="1" id="proinfo1">
                     <tr>
                        <td colspan="7">
                        <table cellpadding="1" cellspacing="0" border="1" style=" width:800px" id="proinfo2">
                            <thead>
                                <th>
                                    选择
                                </th>
                                <th>
                                    采购名称
                                </th>
                                <th>
                                    品牌型号
                                </th>
                                <th>
                                    技术系数与要求   <font color=red>（字数为100以内）</font>
                                </th>
                                <th>
                                    数量
                                </th>
                                <th>
                                    预算单价(元)
                                </th>
                                <th>
                                    单项总价(元)
                                </th>  
                            </thead>
                            <tbody>
                                <asp:Repeater ID="projectContent" runat="server" >
                                    <ItemTemplate >
                                        <tr >
                                           <%--  <td><%# Container.ItemIndex+1 %></td>--%>
                                           <td ><asp:CheckBox ID="checkBox" runat="server" Width="35px"/></td>
                                            <td><asp:TextBox ID="txtName" Width="110px" Text='<%#Eval("Name") %>'  runat="server" ToolTip="采购内容名，20个字符之内" MaxLength="20"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtModel" Width="130px" Text='<%#Eval("Model") %>' runat="server" ToolTip="型号参数，20个字符之内"  MaxLength="20"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtRequirement" runat="server"  onkeyup="if(this.value>100) this.value=this.value.substring(0,100);" onchange="if(this.value>100) this.value=this.value.substring(0,100);" Width="200px" Text='<%#Eval("Requirement") %>' TextMode="MultiLine" ToolTip="技术系数与要求，100个字符以内"  MaxLength="100"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtCount" runat="server" onkeyup="calculatorSum();" onchange="removeZero();" Width="50px" Text='<%#Eval("Count") %>'  MaxLength="6" ToolTip="购买设备的数量，要求为正整数字"></asp:TextBox></td>
                                            <%--<td><asp:TextBox ID="txtBugetPrice" onkeyup="calculatorSum();" onchange="removeZero1();" Width="95px" Text='<%#Eval("BugetPrice") %>'  runat="server" MaxLength="8" ToolTip="购买设备的单项价格，要求为数字"></asp:TextBox></td>--%>
                                            <td><asp:TextBox ID="txtBugetPrice"  runat="server"  Width="95px" Text='<%#Eval("BugetPrice") %>'  onkeyup="calculatorSum();" onchange="removeZero1();" MaxLength="8" ToolTip="购买设备的单项价格，要求为数字"></asp:TextBox></td>
                                            <td><asp:TextBox  ID="lblTotalPrice" runat="server"   BorderStyle="Double" Width="100" Text='<%#Eval("TotalPrice") %>'  ></asp:TextBox></td>
                                            
        
                                 
                                            <%--<td><asp:Label ID="lblTotalPrice" Text='<%#Eval((int)Eval("Count")*(int) Eval("BugetPrice"))%>' runat="server" ></asp:Label></td>--%>
                                       
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        </td>
                     </tr>
                </table>
            </td>         
        </tr>
    
         <tr>
            <td align="right" colspan="7">总价：
                <asp:TextBox ID="TextBoxSumMoney" runat="server"  ></asp:TextBox>元
            </td>                  
        </tr> 
          
        <tr class="TableAddProjectFenLan">
            <td colspan="7" align="left" class="auto-style1">附件上传
                <font color=red>（限制单个文件大小4MB以下，支持的格式为doc,docx,pdf,txt）</font>
            </td>           
        </tr>
        <tr class="TableAddProjectOther">
            <td colspan="7" align="left">
                <table class="TableAddProject"  border="1" >
                    <tr class="TableAddProjectOther">
                        <td style="width:170px;">申请采购方式理由：</td>
                        <td style="width:430px;" align="left">
                            <table id="tabFU" runat ="server" enableviewstate ="true"  cellpadding ="0"  cellspacing ="0">
                                    <tr>
                                         <td>
                                             <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="只支持上传doc,docx,txt,pdf等文件"/>
                                             <asp:Label ID="liyou" runat="server" Visible="False"></asp:Label>
                                             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                         </td>
                                    </tr>
                                 </table>
                        </td>
             
                        <td style="width:100px;" rowspan="2">
                            <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>--%>
                                    <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" ToolTip="只支持上传doc,docx,txt,pdf等文件" />
                                <%--</ContentTemplate>
                            </asp:UpdatePanel>--%>
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
            </td>
        </tr>
       
<%--        <tr class="TableAddProjectOther">
            <td colspan="7">
                <table style="width: 100%;">
                    <tr>
                        <td style="border: thin groove #000000; width:100px;" align="right">上传附件：</td>
                        <td style="border: thin groove #000000; width:600px;" align="left">
                            <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="只支持上传doc,docx,txt,pdf等文件" />
                            <asp:Label ID="liyou" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="guige" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
                            &nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="border: thin groove #000000; width:100px;" align="left">
                            <asp:Button ID="BtnUpload" runat="server" Text="上传" OnClick="BtnUpload_Click" /></td>
                    </tr>
                </table>
            </td>
        </tr>--%>
        <tr class="TableAddProjectOther">
            <td colspan="7" align="right">
                <asp:Button ID="Button5" runat="server" Text="保存申请" OnClick="Button5_Click" />
                <asp:Button ID="Button3" runat="server" Text="提交申请" OnClick="Button3_Click1" />
                <%--<asp:Button ID="Button6" runat="server" Text="导出PDF" OnClick="Button6_Click"  />--%>
                <asp:Button ID="Button9" runat="server" Text="取消" OnClick="Button9_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
