<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PortInfo.aspx.cs" Inherits="DDAC.Admin.PortInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .body {
            height:100%;
            width:100%;
        }

        .tbl {
            align-content:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">
        
            <table class="tbl">
                <tr>
                    <th colspan="2"><h1 style="padding:50px;">Add Port Information</h1></th>
                </tr>
                <tr>
                    <td>Port Number</td>
                    <td><asp:TextBox ID="txtportno" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Location Information</td>
                    <td><asp:TextBox ID="txtportlocation" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    
                    <td></td>
                    <td>
                        <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" />
                        <asp:Button ID="btnclear" runat="server" Text="Clear" />
                    </td>
                </tr>
            </table>
        <br/>
        <br/>
        <asp:GridView ID="gvportinfo" runat="server" AutoGenerateColumns="false" OnRowEditing="gvportinfo_RowEditing">
            <Columns>
                <asp:TemplateField HeaderText="Port Id" HeaderStyle-Width="200px">  
                    <ItemTemplate>  
                        <asp:Label ID="portid" runat="server" Text='<%# Eval("portid")%>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Port Name" HeaderStyle-Width="200px">  
                    <ItemTemplate>  
                        <asp:Label ID="portname" runat="server" Text='<%# Eval("protname")%>'></asp:Label>  
                    </ItemTemplate>  

                    <EditItemTemplate>
                        <asp:TextBox ID="txtportname" runat="server" Text='<%# Eval("protname") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Port Location" HeaderStyle-Width="200px">  
                    <ItemTemplate>  
                        <asp:Label ID="protlocation" runat="server" Text='<%# Eval("protlocation")%>'></asp:Label>  
                    </ItemTemplate>  

                    <EditItemTemplate>
                        <asp:TextBox ID="txtportlocation" runat="server" Text='<%# Eval("protlocation") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action" HeaderStyle-Width="200px">  
                    <ItemTemplate>  
                          <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>  
                          <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                        <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton> 
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
