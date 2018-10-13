<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UI.HenuUI.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>河南大学政府采购申报管理系统-登录</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #016aa9;
            overflow: hidden;
        }
        .STYLE1{
            color:#000000;
            font-size:15px;
        }
        .auto-style1 {
            width: 100px;
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
        }
        -->
    </style>
    <script type="text/javascript">

        function reSet()
        {
            document.getElementById("text_User").value = "";
            document.getElementById("text_psd").value = "";
        }

        function examine()
        {
            if (document.getElementById("text_User").value == "")
            {
                alert("请填写用户名！");
                return false;
            } else if (document.getElementById("text_psd").value == "")
            {
                alert("请填写密码！");
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table height="92%" border="0" align="center" cellpadding="0" cellspacing="0" style="width:73%">
                <tr>
                    <td height="134" valign="bottom">
                        <p></p></td>
                </tr>

                <tr>
                     <td ><table height="346" border="0" align="center" cellpadding="0" cellspacing="0" style="width: 927px">
                </tr>

                <tr>
                    <td height="246" ><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                <td style="height: 101px"> <table width="72%" height="51" border="0" align="center">
          <tr>
            <td style="height: 57px"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2);
    WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 30pt; margin-top:5pt; margin-right:20pt">
              <div align="center" class="STYLE5">
                 河南大学政府采购申报管理系统</div>
            </div></td>
          </tr>
        </table>
            </td>
              </tr>
              <tr>
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 200px; background-image: url(/Images/logininfo.png);background-repeat:no-repeat;background-position:50% 90%;" >
                  <tr>
                    <td style="width: 12%; height: 319px"> </td>
                    <td width="82%" style="height: 319px" valign="top">
                        <br />
                        <br />
                        <br />
                        <br />
                        <table border="0" align="center" cellpadding="0" cellspacing="0" style="width: 42%;">
                
                        <tr>
                          <td height="30" style="width: 100px;FONT-WEIGHT: bold;"><div align="right"><span class="STYLE1">用户名：</span></div></td>
                          <td width="79%" height="40">
                              <asp:TextBox ID="text_User" runat="server" Width="138px" style="height:25px; width:200px;
                                    border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></asp:TextBox></td>
                        </tr>

                        <tr>
                          <td height="30" style="width: 100px;FONT-WEIGHT: bold;"><div align="right"><span class="STYLE1">密码：</span></div></td>
                          <td height="30">
                              <asp:TextBox ID="text_psd" runat="server" TextMode="Password" style="height:25px; width:200px;
                                    border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></asp:TextBox></td>
                        </tr>
                  
                        <tr>
                          <td style="FONT-WEIGHT: bold;" class="auto-style1"><div align="right"><span class="STYLE1">类型：</span></div></td>
                          <td class="auto-style2">
                              <asp:DropDownList ID="ddl_orgType" runat="server" style="height:25px; width:204px;
                                    border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></asp:DropDownList>
                          </td>
                        </tr>


                        <tr>
                          <td style="width: 100px; height: 22px;"> </td>
                          <td style="height: 30px">
                              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="examine();" Text="登陆" />
                              <input id="Button2" type="button" value="重置" onclick="reSet()" />
                          </td>
                       </tr>
                       <tr><td colspan="2"><asp:Label ID="Label_Tips" runat="server" ForeColor="Red">为保证系统正常运行,建议使用IE、谷歌等浏览器</asp:Label></td></tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>
    
    
        </div>
    </form>
</body>
</html>
