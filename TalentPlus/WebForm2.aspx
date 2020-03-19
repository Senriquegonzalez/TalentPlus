<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TalentPlus.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>


    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" style="height: 26px" />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Button" />
        </div>
        <div>
     <asp:Panel ID="Panel1" runat="server"></asp:Panel>
</div>
        

    </form>
</body>
</html>
