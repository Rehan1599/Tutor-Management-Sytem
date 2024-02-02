using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Tutor_Login : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Tutor_Login_Button_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from tutor_signup where username = @username and password = @password ";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", Username_Box.Text);
        cmd.Parameters.AddWithValue("@password", Password_Box.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["tutor_username"] = Username_Box.Text;
            Response.Redirect("tutor/Tutor_Index.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Incorrect Username or Password','error')", true);
        }
        con.Close();

    }
}