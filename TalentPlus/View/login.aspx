<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TalentPlus.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
            </asp:Login>
            <br />
            <br />
            <br />
            Recuperar contraseña
            <br />
            Correo
            <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="correoRequired" runat="server" ControlToValidate="txtcorreo" ErrorMessage="El correo es obligatorio." ToolTip="El correo es obligatorio." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
            <asp:Button ID="btncorreo" runat="server" CommandName="Login" OnClick="btncorreo_Click" Text="ENVIAR" ValidationGroup="Login2" />
            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
            <br />
        </div>
    </form>
</body>
</html>
