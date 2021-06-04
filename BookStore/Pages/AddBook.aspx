<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="BookStore.Pages.AddBook" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
   
        
   <h3>Add new book</h3> 
        <div class="container">
            <table class="table table-hover">
                <tr>
                    <td>
                        <asp:Label ID="lblbookTitle" runat="server" Text="Title"  CssClass="label label-default" Font-Size="Medium"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="bookTitle" required="required" runat="server" CssClass="input-sm"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblbookGenre" runat="server" Text="Genre" CssClass="label label-default" Font-Size="Medium"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="bookGenre" runat="server">
                            <asp:ListItem>Classics</asp:ListItem>
                            <asp:ListItem>Novel</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                            <asp:ListItem>Documentation</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblbookDescription" runat="server" Text="Description" CssClass="label label-default" Font-Size="Medium"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="bookDescription" required="required" runat="server" CssClass="input-sm"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblbookAuthor" runat="server" Text="Author" CssClass="label label-default" Font-Size="Medium"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="bookAuthor" required="required" runat="server" CssClass="input-sm"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="Save Data" CssClass="btn btn-danger" OnClick="SubmitNewBook" />
        </div>
    


</asp:Content>
