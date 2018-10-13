<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AssManOffMaster.Master" AutoEventWireup="true" CodeBehind="AssetReqServer.aspx.cs" Inherits="UI.HenuUI.AssetManageOffice.AssetReqServer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../../CSS/ContentControl.css" rel="stylesheet" />
    <script src="../../../JavaScript/laydate.js"></script>
    <script type="text/javascript">
        function testIsNumber() {
            var tableID = document.getElementById("proinfo0");
            var price = tableID.rows[9].cells[3].childNodes[1].value;
            if (isNaN(price) == true) {
                alert("输入的成交价格必须为数字，请重新输入！");
                tableID.rows[9].cells[3].childNodes[1].value = "";
                tableID.rows[9].cells[3].childNodes[1].focus();
                return;
            }
            else {
                tableID.rows[9].cells[3].childNodes[1].value = parseFloat(price).toFixed(2);
            }
        }
        function testIsNumber2()
        {
            var tableID = document.getElementById("proinfo2");
            for (var i = 1; i < tableID.rows.length; i++)
            {
                var price = tableID.rows[i].cells[4].childNodes[1].value;
                var Year = tableID.rows[i].cells[5].childNodes[1].value;
                if (price == "") {
                    continue;
                }
                else {
                    if (isNaN(price) == true) {
                        alert("输入的单价必须为数字，请重新输入！");
                        //alert(price);
                        tableID.rows[i].cells[4].childNodes[1].value = "";
                        tableID.rows[i].cells[4].childNodes[1].focus();
                        return;
                    }
                    else if (isNaN(Year) == true)
                    {
                        alert("输入的质保期必须为数字，请重新输入！");
                        //alert(price);
                        tableID.rows[i].cells[5].childNodes[1].value = "";
                        tableID.rows[i].cells[5].childNodes[1].focus();
                        return;
                    }
                    else {
                        tableID.rows[i].cells[4].childNodes[1].value = parseFloat(price).toFixed(2);
                    }
                }
            }
        }

        function Count(text,long) 
        {
            var maxlength = new Number(long); // Change number to your max length.
            if (text.value.length > maxlength) {
                text.value = text.value.substring(0, maxlength);
                alert("最大支持" + long + "个字符！");
            }
        }
    </script>
    <table class="Review" style="border: thin groove #000000" id="proinfo0">
        <tr>
            <td class="TableViewCol1Boss" colspan="4" align="left">评审报告
                <font color=red>（*为必填项）</font>
            </td>
        </tr>

        <tr>
            <td style="border: thin groove #000000; background-color: #e8e8e8; width: 150px;" align="right">项目名称：</td>
            <td style="border: thin groove #000000; width: 250px;">
                <asp:TextBox ID="TextBox1" runat="server" align="left" Enabled="False" Width="200px"></asp:TextBox>
            </td>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width: 150px;">申购单位：</td>
            <td style="border: thin groove #000000; width: 250px;">
                <asp:TextBox ID="TextBox2" runat="server" align="left" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">联系人：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox3" runat="server" align="left" Enabled="False" Width="200px"></asp:TextBox>
            </td>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">联系电话：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox4" runat="server" align="left" Enabled="False" Width="200px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">评审时间：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox5" runat="server" align="left" Width="200px" onclick="laydate()" Text="点击选取时间"
                    OnFocus="javascript:if(this.value=='点击选取时间') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='点击选取时间';this.style.color='red'}" ForeColor="Gray" 
                    
                    ></asp:TextBox>
                 <font color="red">*</font>
            </td>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">评审地点：</td>
            <td style="border: thin groove #000000">
                <asp:TextBox ID="TextBox6" runat="server" align="left" Width="200px" Text="（20个字符之内）"
                    OnFocus="javascript:if(this.value=='（20个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（20个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="20" 
                    ></asp:TextBox>
                 <font color="red">*</font>
            </td>
        </tr>
        <tr>
            <td class="TableViewCol1Boss" colspan="4" align="left">评审专家
                <font color=red>（*为必填项）</font>
            </td>
        </tr>
        <tr>
            <td align="right" style="border: thin groove #000000; background-color: #e8e8e8;">专家姓名：</td>
            <td colspan="3" style="border: thin groove #000000">
                <asp:TextBox ID="txtExpertName" runat="server" Width="600px" align="left" Text="（100个字符之内）"
                    OnFocus="javascript:if(this.value=='（100个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（100个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="100" 
                    ></asp:TextBox>
                 <font color="red">*</font>
            </td>
        </tr>

        <tr style="background-color: skyblue;">
            <td colspan="3" align="left">供应商
                <font color=red>（*为必填项）</font>
            </td>
            <td align="right">
                <asp:Button ID="Button4" runat="server" Text="添加新行" OnClick="Button4_Click" />
                <asp:Button ID="Button10" runat="server" Text="删除选中行" OnClick="Button10_Click" />
            </td>
        </tr>

        <tr style="width: 800px">
            <td colspan="4" align="left" style="width: 800px">
                <asp:HiddenField ID="hfRptColumns" runat="server" Value="No,Name,Model,Requirement,Count,BugetPrice,TotalPrice" />
                <table class="ProjectLSJ" border="1">
                    <tr>
                        <td colspan="4">
                            <table cellpadding="1" cellspacing="0" border="1" style="width: 800px" id="proinfo2">
                                <thead>
                                    <th>选择</th>
                                    <th>单位名称</th>
                                    <th>联系人</th>
                                    <th>联系方式</th>
                                    <th>最终报价(元)</th>
                                    <th>质保期(年)</th>
                                    <th>交货期(天)</th>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="projectContent" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <%--  <td><%# Container.ItemIndex+1 %></td>--%>
                                                <td>
                                                    <asp:CheckBox ID="checkBox" runat="server" Width="35px" /></td>
                                                <td>
                                                    <asp:TextBox ID="txtSupplierOrgName" Width="110px" Text='<%#Eval("Name") %>' runat="server" ToolTip="20个字符之内" MaxLength="20"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="txtSupplierContact" Width="150px" Text='<%#Eval("Model") %>' runat="server" ToolTip="10个字符之内" MaxLength="10"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="txtSupplierPhone" Width="150px" Text='<%#Eval("Requirement") %>' runat="server" ToolTip="12个字符之内" MaxLength="12"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="txtoffer" Width="100px" onchange="testIsNumber2()"  Text='<%#Eval("Count") %>' runat="server" MaxLength="20" ToolTip="必须为数字"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="txtYear" Width="95px" Text='<%#Eval("BugetPrice") %>' onkeyup="testIsNumber2();" runat="server" MaxLength="8"  ToolTip="8个字符之内，必须为数字"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox Width="80" ID="txtDeliveryTime" onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" Text='<%#Eval("TotalPrice") %>' runat="server" ToolTip="20个字符之内，必须为数字" MaxLength="20"></asp:TextBox></td>
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
                    <%--<tr>
            <td align="left" class="auto-style2">供应商联系人：</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td align="left">供应商联系方式：</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>

        </tr>--%>


                    <tr>
                        <td class="TableViewCol1Boss" align="left" colspan="4">评审结果
                            <font color=red>（*为必填项）</font>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width: 150px">成交供应商名称：</td>
                        <td style="border: thin groove #000000; width: 250px" align="left">
                            <asp:TextBox ID="txtSuccessSupplierName" runat="server" Width="200px" Text="（20个字符之内）"
                    OnFocus="javascript:if(this.value=='（20个字符之内）') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='（20个字符之内）';this.style.color='red'}" ForeColor="Gray" MaxLength="20" 
                                ></asp:TextBox>
                             <font color="red">*</font>
                        </td>
                        <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width: 150px">成交价格(元)：</td>
                        <td align="left" style="border: thin groove #000000; width: 150px">
                            <asp:TextBox ID="txtSuccessPrice" runat="server" Width="100px" onchange="testIsNumber()" Text="数字(单位元)"
                    OnFocus="javascript:if(this.value=='数字(单位元)') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='数字(单位元)';this.style.color='red'}" ForeColor="Gray"
                                ></asp:TextBox>
                             <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="border: thin groove #000000; background-color: #e8e8e8; width: 150px" class="auto-style1">推荐理由：</td>
                        <td colspan="3" style="border: thin groove #000000">
                            <asp:TextBox ID="txtRecommendReasons" runat="server" Width="601px" Height="70px" align="left" TextMode="MultiLine" Text="1000字符以内"
                    OnFocus="javascript:if(this.value=='1000字符以内') {this.value='';this.style.color='blue'}"
                    OnBlur="javascript:if(this.value==''){this.value='1000字符以内';this.style.color='red'}" ForeColor="Gray" onKeyUp="Count(this,1000)" onChange="Count(this,1000)"
                                
                                ></asp:TextBox>
                             <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="4">
                            <%--<asp:Button ID="btn_ok" runat="server" Text="保存" OnClick="btn_ok_Click" />--%>
                            <asp:Label ID="LabelExportPDF" runat="server" Text="Label"></asp:Label>
                            <asp:Button ID="btn_submit" runat="server" Text="保存并导出PDF" OnClick="btn_submit_Click" />
                            <%--<asp:Button ID="Button3" runat="server" Text="导出PDF" OnClick="Button3_Click" />--%>
                        </td>
                    </tr>
                </table>
</asp:Content>

