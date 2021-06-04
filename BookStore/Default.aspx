<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BookStore._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="display-3">List of books</h1>
    <asp:Repeater ID="repeaterBooks" runat="server" >
    <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1" class="table table-striped">
            <tr>
                <th  scope="col" style="width: 120px">
                    Id
                </th>
                <th scope="col" style="width: 120px">
                    Book Title
                </th>
                <th scope="col" style="width: 100px">
                    Book Description
                </th>
                <th scope="col" style="width: 100px">
                    Book Genre
                </th>
                <th scope="col" style="width: 100px">
                    Author
                </th>
                <th scope="col" style="width: 15px">
                    
                </th>
                
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tbody>
        <tr>
            <td scope="row">
                <asp:Label ID="labelBookId" runat="server" Text='<%# Eval("Identifier") %>' />
            </td>
            <td>
                <asp:Label ID="labelBookTitle" runat="server" Text='<%# Eval("BookTitle") %>' />
            </td>
            <td>
                <asp:Label ID="labelBookDescription" runat="server" Text='<%# Eval("BookDescription") %>' />
            </td>
            <td>
                <asp:Label ID="labelGenre" runat="server" Text='<%# Eval("GenreTitle") %>' />
            </td>
            <td>
                <asp:Label ID="labelAuthor" runat="server" Text='<%# Eval("AuthorName") %>' />
            </td>
            <td>
                 <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit" NavigateUrl='<%# "~/Pages/EditBook.aspx?Id=" + Eval("Identifier") %>' ></asp:HyperLink>
               
            </td>
        </tr>
            </tbody>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>

</asp:Content>
