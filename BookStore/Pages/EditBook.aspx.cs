using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore.Pages
{
    public partial class EditBook : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

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
                cmd.Parameters.AddWithValue("@bookId", bookId.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                bookTitle.Value = string.Empty;
                bookDescription.Value = string.Empty;
            }
        }
    }
}