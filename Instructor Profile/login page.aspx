<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login page.aspx.cs" Inherits="Instructor_Profile.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 569px;
        }
        .auto-style2 {
            width: 99px;
        }
        .auto-style3 {
            width: 257px;
        }
        .auto-style4 {
            margin-left: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="margin:auto;" class="auto-style1">
        <h1 style="text-align:center;margin-top:20px;">Login Page</h1>
        <div style="margin:auto;">
            <table class="auto-style1" dir="auto" style="text-align: left;margin:auto;">                
                <tr>
                    <td class="auto-style3" colspan="1" style="border-style: none none solid none;  margin: auto; padding: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                    <td class="auto-style2" style=" padding: 4px;padding-left:0;margin-left:0;">
                        <asp:TextBox ID="txt_name" runat="server" CssClass="auto-style4 "  style="margin-left:5px;"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>              
                <tr>
                    <td class="auto-style3" style="margin: auto; padding: 4px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</td>
                    <td class="auto-style2" style="margin: auto; padding: 4px;">
                        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>                             
            </table>
        </div>
        <p style="width:50%;margin:auto;text-align:center"  >
            <asp:Button ID="btn_submit" runat="server" OnClick="Button1_Click"  Text="Login" />
        </p>
        <p style="margin:auto;text-align:center;">
            <asp:Label ID="lbl_warning" runat="server"  BorderColor="Lime" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
