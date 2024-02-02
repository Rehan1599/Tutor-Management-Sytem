using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class student_View_Tutors : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student_username"] == null)
        {
            Response.Redirect("../Student_Login.aspx");
        }

        if (!IsPostBack)
        {
            Bind_Repeater();
        }
    }
    void Bind_Repeater()
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from tutor_signup";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        Tutor_Repeater.DataSource = data;
        Tutor_Repeater.DataBind();


    }

    protected void Search_Button_ServerClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from tutor_signup where [name] like('%"+Search_Text.Text+ "%') or [email] like('%" + Search_Text.Text + "%') or [country] like('%" + Search_Text.Text + "%') or [city] like('%" + Search_Text.Text + "%')  or [experience] like('%" + Search_Text.Text + "%')  or  [qualification] like('%" + Search_Text.Text + "%') ";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        if(data.Rows.Count > 0)
        {
            Tutor_Repeater.DataSource = data;
            Tutor_Repeater.DataBind();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','No Record Found','error')", true);


            Tutor_Repeater.DataSource = null;
            Tutor_Repeater.DataBind();
        }

    }
}