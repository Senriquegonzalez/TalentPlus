<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TalentPlus.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            width: 97%;
            height: 227px;
        }
        .auto-style9 {
            width: 225px;
        }
        .auto-style12 {
            text-align: center;
            width: 591px;
        }
        .auto-style13 {
            width: 138px;
        }
    </style>
</head>
<body style="height: 422px; width: 593px">
    <form id="form1" runat="server">
        <div class="auto-style12">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <div class="auto-style1">
                <asp:Panel ID="Panel1" runat="server">
                    <div>
                    </div>
                </asp:Panel>
            </div>
            <div class="auto-style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <br />
            <br />
            <table class="auto-style8">
                <tr>
                    <td colspan="2">Regístrese para obtener una nueva cuenta</td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:label></td>
                    <td class="auto-style13"><asp:TextBox runat="server" ID="UserName" Height="16px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:label></td>
                    <td class="auto-style13"><asp:TextBox runat="server" TextMode="Password" ID="Password" Height="16px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:label runat="server" AssociatedControlID="Email" ID="EmailLabel">Correo electrónico:</asp:label></td>
                    <td class="auto-style13"><asp:TextBox runat="server" ID="Email" Height="16px" Width="171px"></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="El correo electr&#243;nico es obligatorio." ValidationGroup="Login1" ToolTip="El correo electr&#243;nico es obligatorio." ID="EmailRequired">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:label runat="server" AssociatedControlID="UserCodigo" ID="UserCodigoLabel">Codigo de Seguridad:</asp:label></td>
                    <td class="auto-style13"><asp:TextBox runat="server" ID="UserCodigo" Height="16px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:RequiredFieldValidator runat="server" ControlToValidate="UserCodigo" ErrorMessage="El Codigo es obligatorio." ValidationGroup="Login1" ToolTip="El Codigo es obligatorio." ID="UserCodigoRequired">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                    </td>
                    <td class="auto-style13"><asp:Button runat="server" CommandName="Login" Text="Registro" ValidationGroup="Login1" ID="LoginButton" OnClick="LoginButton_Click"></asp:Button>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
