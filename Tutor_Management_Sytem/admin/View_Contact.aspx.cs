using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_View_Contact : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_username"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        if (!IsPostBack)
        {
            Bind_Gridview();
        }
    }


    void Bind_Gridview()
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from contact_tbl";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        Contact_Grid_View.DataSource = data;
        Contact_Grid_View.DataBind();
    }

    protected void Contact_Grid_View_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = Contact_Grid_View.Rows[e.RowIndex];
        Label Item_Id = (Label)row.FindControl("Label_Id");
        string Id = Item_Id.Text;
        SqlConnection con = new SqlConnection(cs);
        string query = "delete from contact_tbl where id = @id";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@id", Id);
        con.Open();

        int a = cmd.ExecuteNonQuery();
        if(a > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Data Has Been Deleted Successfully','success')", true);
            Bind_Gridview();
        }

        con.Close();
    }

  
}