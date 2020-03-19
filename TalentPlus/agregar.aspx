<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar.aspx.cs" Inherits="TalentPlus.agregar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 630px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: left; background-color: #FFFFFF">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:Button ID="btn_agregar" runat="server" OnClick="btn_agregar_Click" Text="Agregar" />
                    </td>
                    <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" style="height: 26px" />
                        <asp:TextBox ID="txt_buscador" runat="server" Width="190px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
        </div>

        <asp:Panel ID="Panel1" runat="server"></asp:Panel>

        
    </form>
</body>
</html>
