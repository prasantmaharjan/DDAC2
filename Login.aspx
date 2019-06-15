<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DDAC.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        margin:25% 25% 0% 25%;
        height:50%;
        width:50%;
    }
    .login {
        height:100%;
        width:100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <form>
            <table class="tbl">
                <tr>
                    <th colspan="2">Login</th>
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
                        <asp:Button Class="btn" ID="btnsignup" runat="server" Text="Sign Up" OnClick="btnsignup_Click" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</asp:Content>
