using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Contact : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void Reset_Contact()
    {
        Name_Box.Text = "";
        Email_Box.Text = "";
        Sub_List.ClearSelection();
        Message_Box.Text = "";
    }
    protected void Submit_Button_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        string sp = "spContact_Insert";
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name",Name_Box.Text);
        cmd.Parameters.AddWithValue("@email",Email_Box.Text);
        cmd.Parameters.AddWithValue("@subject", Sub_List.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@message",Message_Box.Text);

        con.Open();
        int a = cmd.ExecuteNonQuery();
        if(a > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Success_Contact();", true);
            Reset_Contact();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Error_Contact();", true);
        }

    }
}