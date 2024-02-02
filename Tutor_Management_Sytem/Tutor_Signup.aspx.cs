using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Tutor_Signup : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void clear_textbox()
    {
        Name_Box.Text = "";
        Surname_Box.Text = "";
        Gender_List.ClearSelection();
        Age_Box.Text = "";
        Email_Box.Text = "";
        Marital_List.ClearSelection();
        Country_Box.Text = "";
        City_Box.Text = "";
        Address_Box.Text = "";
        Qualification_List.ClearSelection();
        Degree_Box.Text = "";
        Experience_List.ClearSelection();
        Contact_Box.Text = "";
        Username_Box.Text = "";
        Password_Box.Text = "";
        Confirm_Pass_Box.Text = "";
    }

    protected void Tutor_Signup_Button_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(cs);

        try
        {
            string query = "insert into tutor_signup values(@name, @surname, @gender, @age, @email, @marital_status, @country, @city, @address, @qualification, @degree, @experience, @contact_number, @username, @password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", Name_Box.Text);
            cmd.Parameters.AddWithValue("@surname", Surname_Box.Text);
            cmd.Parameters.AddWithValue("@gender", Gender_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(Age_Box.Text));
            cmd.Parameters.AddWithValue("@email", Email_Box.Text);
            cmd.Parameters.AddWithValue("@marital_status", Marital_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@country", Country_Box.Text);
            cmd.Parameters.AddWithValue("@city", City_Box.Text);
            cmd.Parameters.AddWithValue("@address", Address_Box.Text);
            cmd.Parameters.AddWithValue("@qualification", Qualification_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@degree", Degree_Box.Text);
            cmd.Parameters.AddWithValue("@experience", Experience_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@contact_number", Contact_Box.Text);
            cmd.Parameters.AddWithValue("@username", Username_Box.Text);
            cmd.Parameters.AddWithValue("@password", Password_Box.Text);
            con.Open();

            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Tutor SignUp Succesfully','success')", true);
                clear_textbox();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed','error')", true);
            }
        }
        catch (SqlException ex)
        {
            if (ex.Message.Contains("UNIQUE KEY constraint"))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed... " + Username_Box.Text + " Already Exist. (Please Try another Username)','error')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed...','error')", true);
            }

        }
        finally
        {
            con.Close();
        }

    }
}