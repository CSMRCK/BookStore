using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BookStore.Pages
{
    public partial class EditBook : System.Web.UI.Page
    {
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["Id"];
        }

        protected void SubmitEditBook(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["BookStoreConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                cmd = new SqlCommand("UpdateBook", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@bookTitle", bookTitle.Value);
                cmd.Parameters.AddWithValue("@bookDescription", bookDescription.Value);
                cmd.Parameters.AddWithValue("@bookId", Label1.Text);
                
                cmd.ExecuteNonQuery();
                con.Close();
                bookTitle.Value = string.Empty;
                bookDescription.Value = string.Empty;
            }
        }
    }
}