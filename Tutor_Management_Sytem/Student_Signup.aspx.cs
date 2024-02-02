using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Student_Signup : System.Web.UI.Page
{
    //---------CONNETION STRING------------------------

    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }
    //---------------METHOD FOR CLEAR TEXT BOXES ---------------
    void clear_textbox()
    {
        Name_Box.Text = "";
        Father_Name_Box.Text = "";
        Surname_Box.Text = "";
        Gender_List.ClearSelection();
        Age_Box_1.Text = "";
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
        Confirm_Pass_Box.Text = "";
    }

    //------------SIGNUP BUTTON EVENT-------------------------
    protected void Signup_Button_Click(object sender, EventArgs e)
    {
        //----------SQL CONNECTION CLASS------------------------

        SqlConnection con = new SqlConnection(cs);


        //-------------EXEPTION HANDLING (TRY,CATCH,FINALLY)-------------
        try
        {
            //--------------QUERY FOR INERTING DATA IN DATABASE -----------

        string query = "insert into student_signup values(@name, @father_name, @surname, @gender, @age, @country, @city, @address, @standard, @going_to, @subject, @contact_number, @tution_type, @tution_preferred, @username, @password)";

            //--------------SQL COMMAND CLASS---------------

        SqlCommand cmd = new SqlCommand(query, con);

            //---------- USING SQL COMMAND CLASS OJECT FOR ADDING VALUE IN PARAMETERS ---------------

        cmd.Parameters.AddWithValue("@name", Name_Box.Text);
        cmd.Parameters.AddWithValue("@father_name", Father_Name_Box.Text);
        cmd.Parameters.AddWithValue("@surname", Surname_Box.Text);
        cmd.Parameters.AddWithValue("@gender", Gender_List.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@age", Convert.ToInt32(Age_Box_1.Text));
        cmd.Parameters.AddWithValue("@country", Country_Box.Text);
        cmd.Parameters.AddWithValue("@city", City_Box.Text);
        cmd.Parameters.AddWithValue("@address", Address_Box.Text);
        cmd.Parameters.AddWithValue("@standard", Class_Box.Text);
        cmd.Parameters.AddWithValue("@going_to", Going_List.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@subject", Subject_Box.Text);
        cmd.Parameters.AddWithValue("@contact_number", Contact_Box.Text);
        cmd.Parameters.AddWithValue("@tution_type", Tution_Type_List.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@tution_preferred", Tutor_Preferred_List.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@username", Username_Box.Text);
        cmd.Parameters.AddWithValue("@password", Password_Box.Text);

            //----------CONNECTION OPEN---------
        con.Open();
        
            //------- RUN COMANND WITH EXECUTENONQUERY ----------------
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                //Response.Write("<script>alert('Student SignUp Successfully')</script>");

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Student SignUp Succesfully','success')", true);



                clear_textbox();
            }
            else
            {
                //Response.Write("<script>alert('Student SignUp Failed')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed','error')", true);
            }
        }

        //------ CATCH BLOCK FOR SQL UNIQUE KEY constraint EXEPTION ( SqlException USING FOR HANDELING ALL SQL RELATED EXCEPTIONS------------
        catch (SqlException ex)
        {
            if(ex.Message.Contains("UNIQUE KEY constraint"))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed... "+Username_Box.Text+" Already Exist. (Please Try another Username)','error')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed...','error')", true);
            }

        }
        // ----------FINALLY BLOCK FOR CLOSE CONNECTION
        finally
        {
            con.Close();
        }

    }
}