using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Admin_Login : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Button_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(cs);
        string query = "select * from admin_login where username = @username and password = @password ";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", UName_Box.Text);
        cmd.Parameters.AddWithValue("@password", Pass_Box.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["admin_username"] = UName_Box.Text;
            Response.Redirect("Admin_Index.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Incorrect Username or Password','error')", true);
        }

        con.Close();

    }
}