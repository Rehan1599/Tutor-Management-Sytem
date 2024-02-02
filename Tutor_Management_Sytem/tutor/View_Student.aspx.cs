using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class tutor_View_Student : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["tutor_username"] == null)
        {
            Response.Redirect("../Tutor_Login.aspx");
        }
        if (!IsPostBack)
        {
            Bind_Repeater();
        }
    }
    void Bind_Repeater()
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from student_signup";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        Student_Repeater.DataSource = data;
        Student_Repeater.DataBind();


    }

    protected void Student_Search_Button_ServerClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from student_signup where [name] like('%" + Search_Text.Text + "%') or [gender] like('%" + Search_Text.Text + "%') or [country] like('%" + Search_Text.Text + "%') or [subject] like('%" + Search_Text.Text + "%') or [going_to] like('%" + Search_Text.Text + "%') or [city] like('%" + Search_Text.Text + "%')  or [tution_type] like('%" + Search_Text.Text + "%')  or  [tution_preferred] like('%" + Search_Text.Text + "%')  or  [standard] like('%" + Search_Text.Text + "%') ";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        if (data.Rows.Count > 0)
        {
            Student_Repeater.DataSource = data;
            Student_Repeater.DataBind();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','No Record Found','error')", true);


            Student_Repeater.DataSource = null;
            Student_Repeater.DataBind();
        }
    }
}