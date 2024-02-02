using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_Insert_Student : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_username"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
    }


    void clear_textbox()
    {
        Name_Box.Text = "";
        Father_Name_Box.Text = "";
        Surname_Box.Text = "";
        Gender_List.ClearSelection();
        Age_Box.Text = "";
        Country_Box.Text = "";
        City_Box.Text = "";
        Address_Box.Text = "";
        Class_Box.Text = "";
        Going_List.ClearSelection();
        Subject_Box.Text = "";
        Contact_Box.Text = "";
        Tution_Type_List.ClearSelection();
        Tutor_Preferred_List.ClearSelection();
        Username_Box.Text = "";
        Password_Box.Text = "";

    }


    protected void Insert_Button_Click(object sender, EventArgs e)
    {

      
            SqlConnection con = new SqlConnection(cs);

            try
            {
                //string query = "insert into student_signup values(@name, @father_name, @surname, @gender, @age, @country, @city, @address, @standard, @going_to, @subject, @contact_number, @tution_type, @tution_preferred, @username, @password)";
                string query = "insert into student_signup values('"+ Name_Box.Text +"','" + Father_Name_Box.Text + "', '"+ Surname_Box.Text + "', '" + Gender_List.SelectedItem.ToString() +"','" + Convert.ToInt32(Age_Box.Text) + "', '"+ Country_Box.Text + "', '"+ City_Box.Text + "','" + Address_Box.Text + "', '" + Class_Box.Text +"', '" + Going_List.SelectedItem.ToString() + "', '" + Subject_Box.Text + "', '"+ Contact_Box.Text + "', '"+ Tution_Type_List.SelectedItem.ToString() + "', '"+ Tutor_Preferred_List.SelectedItem.ToString() + "', '"+Username_Box.Text+"', '"+Password_Box.Text+"')";
                SqlCommand cmd = new SqlCommand(query, con);
          
                con.Open();

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Student Data Insert Succesfully','success')", true);
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
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Insertion Failed... " + Username_Box.Text + " Already Exist. (Please Try another Username)','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Insertion Failed...','error')", true);
                }

            }
            finally
            {
                con.Close();
            }

        }
    }