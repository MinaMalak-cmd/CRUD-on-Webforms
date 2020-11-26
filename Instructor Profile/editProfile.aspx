<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editProfile.aspx.cs" Inherits="Instructor_Profile.editProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        body{
            margin:auto;
        }
        #btn_submit{
            margin:auto;

        }
        .auto-style23 {
            width: 192px;
            margin:auto;
        }
    </style>
</head>
<body style="width: 500px; height: 509px;">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" dir="auto" style="background-color: #66CCFF; text-align: left;margin-top:20px;">
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
        <p class="auto-style23">
            <asp:Button ID="btn_savechange" runat="server" OnClick="Button1_Click" Text="Save Changes" />
        </p>
    </form>
</body>
</html>
