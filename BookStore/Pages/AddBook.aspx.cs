using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BookStore.Pages
{
    public partial class AddBook : System.Web.UI.Page
    {
        SqlCommand cmd;
        protected void SubmitNewBook(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["BookStoreConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                cmd = new SqlCommand("InsertNewBook", con);
               
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@bookTitle", bookTitle.Text);
                cmd.Parameters.AddWithValue("@bookDescription", bookDescription.Text);
                cmd.Parameters.AddWithValue("@bookGenre", bookGenre.SelectedValue);
                cmd.Parameters.AddWithValue("@bookAuthor", bookAuthor.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                bookTitle.Text = string.Empty;
                bookDescription.Text = string.Empty;
              
                bookAuthor.Text = string.Empty;
                
            }
        }


    }
}