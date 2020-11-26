<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="departmentData.aspx.cs" Inherits="Instructor_Profile.departmentData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:flex">
            <div style="display:inline-block">
                <h2 >Choose Department:</h2>
            </div>
            <div style="display:inline-block;margin-left:20px;">
                <asp:DropDownList ID="ddl_dept" runat="server" AutoPostBack="True" style="font-size:24px;margin-left:20px;margin-bottom:10px;text-align:center;" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged1">
                </asp:DropDownList>
            </div>
            
        </div>
        <asp:GridView ID="gv_InsData" runat="server" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align:center;margin:auto;width:30%;margin-top:60px;height:100px;font-size:28px;border:2px;" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <Columns>
                <asp:BoundField />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <p style="margin:auto;width:20%;text-align:center">
            <asp:Button ID="btn_redirect" runat="server" Text="Go to login Page" OnClick="btn_redirect_Click1"  />
        </p>
    </form>
</body>
</html>
