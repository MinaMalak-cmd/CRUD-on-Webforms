<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup Page.aspx.cs" Inherits="Instructor_Profile.Signup_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            left: 50%;
            height: 364px;
        }
        .auto-style13 {
            width: 139px;
            height: 47px;
        }
        .auto-style14 {
            height: 47px;
        }
        .auto-style15 {
            width: 139px;
            height: 51px;
        }
        .auto-style16 {
            height: 51px;
        }
        .auto-style17 {
            width: 139px;
            height: 46px;
        }
        .auto-style18 {
            height: 46px;
        }
        .auto-style19 {
            width: 139px;
            height: 52px;
        }
        .auto-style20 {
            height: 52px;
        }
        .auto-style21 {
            width: 139px;
            height: 45px;
        }
        .auto-style22 {
            height: 45px;
        }
    </style>
</head>
<body style="width: 577px; height: 621px;">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" dir="auto" style="background-color: #66CCFF; text-align: left;">
                <tr>
                    <td class="auto-style17" colspan="1" style="border-style: none none solid none; border-color: #660066; border-width: 2px; margin: auto; padding: 4px;">Name</td>
                    <td class="auto-style18" style="border-style: none none solid none; border-color: #660066; border-width: 2px; margin: auto; padding: 4px;">
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" style="margin: auto; padding: 4px;">E<span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">mail</span></td>
                    <td class="auto-style20" style="margin: auto; padding: 4px;">
                        <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="margin: auto; padding: 4px;">Password</td>
                    <td class="auto-style14" style="margin: auto; padding: 4px;">
                        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" style="margin: auto; padding: 4px;">CV</td>
                    <td class="auto-style18" style="margin: auto; padding: 4px;">
                        <asp:FileUpload ID="fu_cv" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" style="margin: auto; padding: 4px;">Photo</td>
                    <td class="auto-style22" style="margin: auto; padding: 4px;">
                        <asp:FileUpload ID="fu_photo" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="margin: auto; padding: 4px;">Age</td>
                    <td class="auto-style14" style="margin: auto; padding: 4px;">
                        <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="margin: auto; padding: 4px;">Department</td>
                    <td class="auto-style16" style="margin: auto; padding: 4px;">
                        <asp:DropDownList ID="ddl_Department" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Button ID="btn_submit" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
        <p>
            <asp:Label ID="lbl_warning" runat="server" BackColor="#00FFCC" BorderColor="Lime" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Height="100px" Width="400px"></asp:Label>
            <asp:Button ID="btn_redirect" runat="server" Text="Go Departments Data" OnClick="btn_redirect_Click1" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
