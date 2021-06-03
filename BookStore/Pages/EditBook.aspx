<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="BookStore.Pages.EditBook" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

  <h3>Edit book</h3>  


    <form>

     <div class="form-group">
    <label for="exampleInputEmail1">Id</label>
    <input type="number" class="form-control" id="bookId" name="bookId" runat="server">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">bookTitle</label>
    <input type="text" class="form-control" id="bookTitle" 
       name="bookTitle" placeholder="bookTitle" runat="server" required="required">
  </div>

  <div class="form-group">
    <label for="bookDescription">bookDescription</label>
    <input type="text" id="bookDescription" name="bookDescription" class="form-control"
         required="required" placeholder="bookDescription" runat="server">
  </div>

  <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Save" OnClick="SubmitEditBook" />
</form>
    

   

</asp:Content>