<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DDAC.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .txt {
        width:250px;
        height:30px;
        margin:5px;
    }
    .div {
        align-content:center;
    }
    .ta {
        width:250px;
        height:60px;
        margin:5px;
    }
    .btn {
        margin-top :10px;
        margin-bottom:10px;
        margin-left:5px;
        width:100px;
        height:30px;
    }
    .header {
        margin-top :20px;
        margin-bottom:20px;
        
    }
    .tbl 
    {
        margin:25% 25% 0% 25%;
        height:50%;
        width:50%;
    }

    .signup {
        height:100%;
        width:100%;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup">
        
            <table class="tbl">
                <tr>
                    <th colspan="3" class="header">
                        Registration
                    </th>
                    
                </tr>
                <tr>
                    <td ><b>First Name</b></td>
                    <td>
                        <asp:TextBox class="txt" ID="txtfname" runat="server" required/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td ><b>Mid Name</b></td>
                    <td>
                        <asp:TextBox class="txt" ID="txtmname" runat="server"/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td ><b> Last Name</b></td>
                    <td>
                        <asp:TextBox class="txt" ID="txtlname" runat="server" required/>
                    </td>
                    <td></td>
                </tr>
               <tr>
                    <td><b>Address</b></td>
                    <td>
                        <asp:TextBox class="txt" id="txtaddress" runat="server" required/>                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Email</b></td>
                    <td>
                        <asp:TextBox class="txt" ID="txtemail" runat="server" required/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Contact No</b></td>
                    <td>
                        <asp:TextBox class="txt" ID="txtcontactno" runat="server" required/>                   </td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>User Name</b></td>
                    <td>
                        <asp:TextBox  class="txt" ID="txtuname" runat="server" required />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td>
                        <asp:TextBox  class="txt" ID="txtpass" runat="server" TextMode="Password" required />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Confirm Password</b></td>
                    <td class="auto-style1">
                        <asp:TextBox class="txt" ID="txtconfirmpass" runat="server" TextMode="Password"  required/>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button class="btn" ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" />
                        &nbsp;&nbsp;
                        <asp:Button class="btn" ID="btnclear" runat="server" Text="Clear" OnClientClick="this.form.reset(); return false;" />
                    </td>
                    <td></td>
                </tr>

            </table>
        
    </div>
</asp:Content>
