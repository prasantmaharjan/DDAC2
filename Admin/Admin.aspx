<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DDAC.Admin.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .lbl {
        font-weight:bold;
        font-size:20px;

    }
    .txt {
        margin:5px;
        width:250px;
        height:30px;
    }
    .btn {
        margin-top:10px;
        margin-bottom:10px;
        margin-left:5px;
        width:100px;
        height:30px;
    }
    .tbl 
    {
        margin:10% 25% 25% 30%;
        height:50%;
        width:50%;
    }
    .login {
        height:100%;
        width:100%;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="login">
             <table class="tbl">
                <tr>
                    <th colspan="2" style="align:center"><h1>Login</h1></th>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="lbl" ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox Class="txt" ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="lbl" ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox Class="txt" ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button class="btn" ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
