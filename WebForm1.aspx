<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task_29th.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            height: 34px;
            width: 174px;
        }
        .auto-style4 {
            width: 174px;
        }
        .auto-style5 {
            height: 34px;
            width: 438px;
        }
        .auto-style6 {
            width: 438px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Customer</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Customer Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TXTname" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTname" ErrorMessage="*Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*Name must have atleast 6 Character " ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Customer Mobile</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtMobile" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTname" ErrorMessage="*Enter Mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Enter 10 Digit Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtEmail" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXTname" ErrorMessage="*Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*Enter Correct Format" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtPassword" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXTname" ErrorMessage="*Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Password Mismatch" ForeColor="#FF6600"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Label</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Reg Customer</td>
                <td class="auto-style6">
                    <asp:Button ID="BtnReg" runat="server" OnClick="Button1_Click" Text="Register" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Lblinfo" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
