<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile page.aspx.cs" Inherits="Instructor_Profile.profile_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            border: 1px solid #000000;
            /*background-color: #CCFF99;*/
        }
        
        
       
       
        
    </style>
</head>
<body>
    <form id="form1" runat="server" style="margin:auto;" class="body1">
        <div>
            <h1 style="background-color:lawngreen;text-align:center" class="auto-style4">My Profile </h1>
                <table style="margin:auto" border="1" class="auto-style1">
                <tr>
                    <td class="auto-style3"  colspan="2">
                        <asp:Image ID="img" runat="server" Height="124px" Width="182px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"style="text-align:right">Name</td>
                    <td style="text-align:center">
                        <asp:Label ID="lbl_name" runat="server" Text="Label" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right">Email</td>
                    <td style="text-align:center">
                        <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"style="text-align:right">CV</td>
                    <td style="text-align:center">
                        <asp:HyperLink ID="hl_cv" runat="server" Font-Size="Large">Download my CV</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right">Age</td>
                    <td style="text-align:center">
                        <asp:Label ID="lbl_age" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>                
                </table>
            <div style="margin:auto;width:10%;margin-top:6px;">
                 <asp:Button ID="btn_editprofile" runat="server" CssClass="auto-style5" style="text-align:center;" Text="Edit Profile" OnClick="btn_editprofile_Click" />
            </div>
               
           

        </div>
    </form>
</body>
</html>
