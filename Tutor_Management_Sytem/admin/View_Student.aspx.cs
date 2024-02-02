using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_View_Student : System.Web.UI.Page
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
        string query = "select * from student_signup";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        Student_Grid_View.DataSource = data;
        Student_Grid_View.DataBind();
    }



    protected void Student_Grid_View_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = Student_Grid_View.Rows[e.RowIndex];
        Label Item_Id = (Label)row.FindControl("Label_Id");
        string Id = Item_Id.Text;
        SqlConnection con = new SqlConnection(cs);
        string query = "delete from student_signup where student_id = @id";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@id", Id);
        con.Open();

        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Data Has Been Deleted Successfully','success')", true);
        
        Bind_Gridview();
        }

        con.Close();

    }

    protected void Student_Grid_View_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Student_Grid_View.EditIndex = e.NewEditIndex;
        Bind_Gridview();
    }

    protected void Student_Grid_View_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Student_Grid_View.EditIndex = -1;
        Bind_Gridview();
    }

   
    protected void Student_Grid_View_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

       
        int id = Convert.ToInt32(Student_Grid_View.DataKeys[e.RowIndex].Value);


        string name = (Student_Grid_View.Rows[e.RowIndex].FindControl("Name_Box") as TextBox).Text;
        string father_name = (Student_Grid_View.Rows[e.RowIndex].FindControl("Father_Box") as TextBox).Text;
        string surname = (Student_Grid_View.Rows[e.RowIndex].FindControl("Surname_Box") as TextBox).Text;
        string gender = (Student_Grid_View.Rows[e.RowIndex].FindControl("Gender_List") as DropDownList).SelectedValue.ToString();
        int age = Convert.ToInt32((Student_Grid_View.Rows[e.RowIndex].FindControl("Age_Box") as TextBox).Text);
        string country = (Student_Grid_View.Rows[e.RowIndex].FindControl("Country_Box") as TextBox).Text;
        string city = (Student_Grid_View.Rows[e.RowIndex].FindControl("City_Box") as TextBox).Text;
        string address = (Student_Grid_View.Rows[e.RowIndex].FindControl("Address_Box") as TextBox).Text;
        string standard = (Student_Grid_View.Rows[e.RowIndex].FindControl("Class_Box") as TextBox).Text;
        string going_to = (Student_Grid_View.Rows[e.RowIndex].FindControl("Going_List") as DropDownList).SelectedValue.ToString();
        string subject = (Student_Grid_View.Rows[e.RowIndex].FindControl("Subject_Box") as TextBox).Text;
        string contact_number = (Student_Grid_View.Rows[e.RowIndex].FindControl("Number_Box") as TextBox).Text;
        string tution = (Student_Grid_View.Rows[e.RowIndex].FindControl("Tution_Box") as TextBox).Text;
        string tutor = (Student_Grid_View.Rows[e.RowIndex].FindControl("Tutor_Box") as TextBox).Text;
        string username = (Student_Grid_View.Rows[e.RowIndex].FindControl("Username_Box") as TextBox).Text;
        string password = (Student_Grid_View.Rows[e.RowIndex].FindControl("Password_Box") as TextBox).Text;

        SqlConnection con = new SqlConnection(cs);
        try
        {

            string query = string.Format("update student_signup set name = '{0}', father_name = '{1}', surname = '{2}', gender = '{3}', age = '{4}', country = '{5}', city = '{6}', address = '{7}', standard = '{8}', going_to ='{9}', subject = '{10}', contact_number = '{11}' , tution_type = '{12}', tution_preferred = '{13}', username ='{14}', password ='{15}' where student_id = '{16}'", name, father_name, surname, gender, age, country, city, address, standard, going_to, subject, contact_number, tution, tutor, username, password, id);
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Record Upadate Successfully','success')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure',Record Updation Failed','error')", true);
            }
          
        }
        //------ CATCH BLOCK FOR SQL UNIQUE KEY constraint EXEPTION ( SqlException USING FOR HANDELING ALL SQL RELATED EXCEPTIONS------------
        catch (SqlException ex)
        {
            if (ex.Message.Contains("UNIQUE KEY constraint"))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Record Updation Failed... " + username + " Already Exist. (Please Try another Username)','error')", true);
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

        Student_Grid_View.EditIndex = -1;
        Bind_Gridview();
    }
  
    protected void Search_Button_ServerClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from student_signup where [name] like('%" + Search_Text.Text + "%') or [father_name] like('%" + Search_Text.Text + "%') or [surname] like('%" + Search_Text.Text + "%') or [gender] like('%" + Search_Text.Text + "%') or [age] like('%" + Search_Text.Text + "%') or [country] like('%" + Search_Text.Text + "%') or [city] like('%" + Search_Text.Text + "%') or [address] like('%" + Search_Text.Text + "%') or [standard] like('%" + Search_Text.Text + "%') or [going_to] like('%" + Search_Text.Text + "%') or [subject] like('%" + Search_Text.Text + "%') or [contact_number] like('%" + Search_Text.Text + "%') or [tution_type] like('%" + Search_Text.Text + "%')  or  [tution_preferred] like('%" + Search_Text.Text + "%')  or  [username] like('%" + Search_Text.Text + "%') or [password] like('%" + Search_Text.Text + "%') ";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        if (data.Rows.Count > 0)
        {
            Student_Grid_View.DataSource = data;
            Student_Grid_View.DataBind();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','No Rocord Found','error')", true);
            Student_Grid_View.DataSource = null;
            Student_Grid_View.DataBind();
        }
    }


    //---clear text box method---------

    void clear_textbox()
    {
        Ins_Name_Box.Text = "";
        Ins_Father_Name_Box.Text = "";
        Ins_Surname_Box.Text = "";
        Ins_Gender_List.ClearSelection();
        Ins_Age_Box.Text = "";
        Ins_Country_Box.Text = "";
        Ins_City_Box.Text = "";
        Ins_Address_Box.Text = "";
        Ins_Class_Box.Text = "";
        Ins_Going_List.ClearSelection();
        Ins_Subject_Box.Text = "";
        Ins_Contact_Box.Text = "";
        Ins_Tution_Box.Text = "";
        Ins_Tutor_Preferred_List.ClearSelection();
        Ins_Username_Box.Text = "";
        Ins_Password_Box.Text = "";
      
    }
    protected void Insert_Button_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(cs);

        try
        {

            string query = "insert into student_signup values(@name, @father_name, @surname, @gender, @age, @country, @city, @address, @standard, @going_to, @subject, @contact_number, @tution_type, @tution_preferred, @username, @password)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", Ins_Name_Box.Text);
            cmd.Parameters.AddWithValue("@father_name", Ins_Father_Name_Box.Text);
            cmd.Parameters.AddWithValue("@surname", Ins_Surname_Box.Text);
            cmd.Parameters.AddWithValue("@gender", Ins_Gender_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(Ins_Age_Box.Text));
            cmd.Parameters.AddWithValue("@country", Ins_Country_Box.Text);
            cmd.Parameters.AddWithValue("@city", Ins_City_Box.Text);
            cmd.Parameters.AddWithValue("@address", Ins_Address_Box.Text);
            cmd.Parameters.AddWithValue("@standard", Ins_Class_Box.Text);
            cmd.Parameters.AddWithValue("@going_to", Ins_Going_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subject", Ins_Subject_Box.Text);
            cmd.Parameters.AddWithValue("@contact_number", Ins_Contact_Box.Text);
            cmd.Parameters.AddWithValue("@tution_type", Ins_Tution_Box.Text);
            cmd.Parameters.AddWithValue("@tution_preferred", Ins_Tutor_Preferred_List.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@username", Ins_Username_Box.Text);
            cmd.Parameters.AddWithValue("@password", Ins_Password_Box.Text);

            
            con.Open();

         
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
               
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Student SignUp Succesfully','success')", true);

                clear_textbox();

              
                Bind_Gridview();
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
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed... " + Ins_Username_Box.Text + " Already Exist. (Please Try another Username)','error')", true);
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
        Student_Grid_View.EditIndex = -1;
        Bind_Gridview();
    }
}



