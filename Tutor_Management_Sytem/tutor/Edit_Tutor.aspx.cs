using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class tutor_Edit_Tutor : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        //---CREATE SESSION FOR CHECKING USER ENTER WITH LOGIN  ------
        if (Session["admin_username"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        //------FOR SHOWING GRID VIEW DATA IN OUR PAGE -------
        if (!IsPostBack)
        {
            Bind_Gridview_Data();
        }
    }
    void Bind_Gridview_Data()
    {
        SqlConnection con = new SqlConnection(cs);
        string query = "select * from tutor_signup where username = '"+Session["tutor_username"]+"'";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable data = new DataTable();
        sda.Fill(data);
        GridView_Tutor.DataSource = data;
        GridView_Tutor.DataBind();
    }
    protected void GridView_Tutor_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
      
        //---------- FOR ACCESSING INDEX (ID) -------------
        GridViewRow row = GridView_Tutor.Rows[e.RowIndex];
        Label Item_Id = (Label)row.FindControl("Label_Id");
        string Id = Item_Id.Text;

        //------------- SQL CONNECTIO CLASS------------
        SqlConnection con = new SqlConnection(cs);

        // ---- QUERY FOR DELETING ROW DATA BY ID NUMBER -----
        string query = "delete from tutor_signup where tutor_id = @id";

        //---- SQL COMMAND CLASS FOR RUN QUERY OR CON --------
        SqlCommand cmd = new SqlCommand(query, con);

        // ADD PARAMETERS VALUE USING SQL COMMAND CLASS OBJECT------
        cmd.Parameters.AddWithValue("@id", Id);

        //----------CONNECTION OPEN FOR EXECUTING QUERY,S AND RUN CONNECTION --------------
        con.Open();

        //----- CMD = QUERY OR CONNECTION AND EXECUTENONQURY USING FOR RUN OPRATION LIKE INSERT , UPDATE , DELETE-----
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
             Response.Redirect("../Student_Login.aspx");
            
        }
        //--------FINALLY ALL OPRATION DONE THEN CONNECTION CLOSE-----------
        con.Close();

    }

    //------ROW EDITING EVENT BUTTON ------------
    protected void GridView_Tutor_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //EDIT GRIDVIEW DATA BY INDEX NUMBER (ID NUMBER)
        GridView_Tutor.EditIndex = e.NewEditIndex;

        //CALLING METHOD FOR SHOWING GRIDVIEW DATA
        Bind_Gridview_Data();
    }

    protected void GridView_Tutor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_Tutor.EditIndex = -1;
        Bind_Gridview_Data();
    }





    protected void GridView_Tutor_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        //-------CREATE VARIABLE FOR ACCESSING ROW DATA INDEXT (ID) NUMBER FOR UPDATING RECORDS---------
        int id = Convert.ToInt32(GridView_Tutor.DataKeys[e.RowIndex].Value);

        //-----CONVERT ALL TEXT BOXES IN VARIABLE NAME ------
        string name = (GridView_Tutor.Rows[e.RowIndex].FindControl("Name_Box") as TextBox).Text;
        string surname = (GridView_Tutor.Rows[e.RowIndex].FindControl("Surname_Box") as TextBox).Text;
        string gender = (GridView_Tutor.Rows[e.RowIndex].FindControl("Gender_Box") as TextBox).Text;
        int age = Convert.ToInt32((GridView_Tutor.Rows[e.RowIndex].FindControl("Age_Box") as TextBox).Text);
        string email = (GridView_Tutor.Rows[e.RowIndex].FindControl("Email_Box") as TextBox).Text;
        string marital_status = (GridView_Tutor.Rows[e.RowIndex].FindControl("Marital_Box") as TextBox).Text;
        string country = (GridView_Tutor.Rows[e.RowIndex].FindControl("Country_Box") as TextBox).Text;
        string city = (GridView_Tutor.Rows[e.RowIndex].FindControl("City_Box") as TextBox).Text;
        string address = (GridView_Tutor.Rows[e.RowIndex].FindControl("Address_Box") as TextBox).Text;
        string qualification = (GridView_Tutor.Rows[e.RowIndex].FindControl("Qualification_Box") as TextBox).Text;
        string degree = (GridView_Tutor.Rows[e.RowIndex].FindControl("Degree_Box") as TextBox).Text;
        string experience = (GridView_Tutor.Rows[e.RowIndex].FindControl("Experience_Box") as TextBox).Text;
        string contact_number = (GridView_Tutor.Rows[e.RowIndex].FindControl("Number_Box") as TextBox).Text;
        string username = (GridView_Tutor.Rows[e.RowIndex].FindControl("Username_Box") as TextBox).Text;
        string password = (GridView_Tutor.Rows[e.RowIndex].FindControl("Password_Box") as TextBox).Text;

        //--------------STORE CONNECTON STRING IN SQL CONNECTION CLASS PARAMETERS---------------
        SqlConnection con = new SqlConnection(cs);
        try
        {
            //------------CREATE QUERY FOR UPDATING ROWS ROCORDS BY ID NUMBER---------------
            //string query ="update tutor_signup set name = '"+name+"', surname = '"+surname+"', gender = '"+gender+"', age = '"+age+"', email = '"+email+"', marital_status = '"+marital_status+"', country = '"+country+"', city = '"+city+"', address = '"+address+"', qualification ='"+qualification+"', degree = '"+degree+"', experience = '"+experience+"' , contact_number = '"+contact_number+"', username = '"+username+"', password ='"+password+"' where tutor_id = '"+id+"'";
            string query = string.Format("update tutor_signup set name = '{0}', surname = '{1}', gender = '{2}', age = '{3}', email = '{4}', marital_status = '{5}', country = '{6}', city = '{7}', address = '{8}', qualification ='{9}', degree = '{10}', experience = '{11}' , contact_number = '{12}', username = '{13}', password ='{14}' where tutor_id = '{15}'", name, surname, gender, age, email, marital_status, country, city, address, qualification, degree, experience, contact_number, username, password, id);

            //------------STORE QUERY OR CONNECTION IN SQL COMMAND CLASS PARAMETERS--------------------
            SqlCommand cmd = new SqlCommand(query, con);

            //----------------CONNECTION OPEN FOR EXECUTE QUERY -------------------
            con.Open();
            int a = cmd.ExecuteNonQuery();

            //-----------CRAETE CONDITION FOR CHECKING OPRATION PERFORM SUCCESSFULLY OR NOT------------
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
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Record Updation Failed... " + username + " Already Exist... (Please Try another Username)','error')", true);
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

        //---------------EDIT INDEX = -1 FOR RESET TABLE DATA---------------
        GridView_Tutor.EditIndex = -1;

        //-------CALLING METHOD FOR SHOWING UPDATED DATA AFTER PERFORMING OPRATION-----------
        Bind_Gridview_Data();
    }
}