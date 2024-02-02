<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Dashboard.master" AutoEventWireup="true" CodeFile="View_Tutor_Data.aspx.cs" Inherits="admin_View_Tutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #Jump a {
            text-decoration: none;
        }

            #Jump a:hover {
                text-decoration: underline;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="p-4 bg-dark text-white text-center">VIEW TUTOR DATA</h1>
        </div>

    </div>
    <br />
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">

                <asp:textbox id="Search_Text" cssclass="form-control" placeholder="Search Tutor" runat="server"></asp:textbox>
                <div class="input-group-append">
                    <button id="Search_Button" runat="server" onserverclick="Search_Button_ServerClick" class="btn btn-secondary" type="button">
                        <i class="fa fa-search"></i>

                    </button>
                </div>

            </div>
        </div>
    </div>

    <br />

    <asp:gridview id="GridView_Tutor" cssclass="table table-bordered table-hover table-striped table-dark" datakeynames="tutor_id" autogeneratecolumns="False" runat="server" onrowdeleting="GridView_Tutor_RowDeleting" onrowediting="GridView_Tutor_RowEditing" onrowcancelingedit="GridView_Tutor_RowCancelingEdit" onrowupdating="GridView_Tutor_RowUpdating">

         <Columns>
            <asp:TemplateField HeaderText="ID" >
                <EditItemTemplate >
                    <asp:TextBox ID="Id_Box"  Class="form-control bg-dark text-white" width="180px" height="32px" ReadOnly="true" runat="server" Text='<%# Bind("tutor_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Id" runat="server" Text='<%# Bind("tutor_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="Name_Box"  Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
           
                     <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Name is Required"></asp:requiredfieldvalidator>    
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

               <asp:TemplateField HeaderText="SURNAME">
                   <EditItemTemplate>
                    <asp:TextBox ID="Surname_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("surname") %>'></asp:TextBox>
                
                     <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="Surname_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Surname is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Surname" runat="server" Text='<%# Bind("surname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="GENDER">
                 <EditItemTemplate>
                    <asp:TextBox ID="Gender_Box" Class="form-control bg-dark text-white" width="180px" height="32px"  runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
              
                  <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="Gender_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Gender is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Gender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="AGE">
                 <EditItemTemplate>
                    <asp:TextBox ID="Age_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
              
                     
                   <asp:rangevalidator  runat="server"  errormessage="Enter Age Between 20 To 65" ID="Age_Range" ControlToValidate="Age_Box" Display="Dynamic" ForeColor="Red" MaximumValue="65" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:rangevalidator>
                  <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" controltovalidate="Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Age is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Age" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="EMAIL">
                  <EditItemTemplate>
                    <asp:TextBox ID="Email_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                
                    <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="Email_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Email is Required"></asp:requiredfieldvalidator>
                  </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Email" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="MARITAL STATUS">
                  <EditItemTemplate>
                    <asp:TextBox ID="Marital_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("marital_status") %>'></asp:TextBox>
              
                   <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="Marital_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Marital Status is Required"></asp:requiredfieldvalidator>    
                  </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Marital" runat="server" Text='<%# Bind("marital_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="COUNTRY">
                 <EditItemTemplate>
                    <asp:TextBox ID="Country_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("country") %>'></asp:TextBox>
               
                  <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="Country_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Country is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Country" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="CITY">
                 <EditItemTemplate>
                    <asp:TextBox ID="City_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
               
                  <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="City_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="City is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_City"  runat="server" Text='<%# Bind("city") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="ADDREES">
                 <EditItemTemplate>
                    <asp:TextBox ID="Address_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
               
                  <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="Address_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Address is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Address" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="QUALIFICATION">
                 <EditItemTemplate>
                    <asp:TextBox ID="Qualification_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
              
                  <asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" controltovalidate="Qualification_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Qualification is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Qualification" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="DEGREE">
                 <EditItemTemplate>
                    <asp:TextBox ID="Degree_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("degree") %>'></asp:TextBox>
             
                  <asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" controltovalidate="Degree_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Degree is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Degree" runat="server" Text='<%# Bind("degree") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="EXPERIENCE">
                <EditItemTemplate>
                    <asp:TextBox ID="Experience_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("experience") %>'></asp:TextBox>
            
                 <asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" controltovalidate="Experience_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Experience is Required"></asp:requiredfieldvalidator>    
                </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Experience" runat="server" Text='<%# Bind("experience") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             
             <asp:TemplateField HeaderText="CONTACT NUMBER">
                 <EditItemTemplate>
                    <asp:TextBox ID="Number_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("contact_number") %>'></asp:TextBox>
               
                    <asp:requiredfieldvalidator id="RequiredFieldValidator13" runat="server" controltovalidate="Number_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Contact Number is Required"></asp:requiredfieldvalidator>         
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Contact" runat="server" Text='<%# Bind("contact_number") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
             <asp:TemplateField HeaderText="USERNAME">
                 <EditItemTemplate>
                    <asp:TextBox ID="Username_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
            
                  <asp:requiredfieldvalidator id="RequiredFieldValidator14" runat="server" controltovalidate="Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Username" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             
             <asp:TemplateField HeaderText="PASSWORD">
                 <EditItemTemplate>
                    <asp:TextBox ID="Password_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
             
                  <asp:requiredfieldvalidator id="RequiredFieldValidator15" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Password"  runat="server" Text='<%# Bind("password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are You Sure To Delete Data ??')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger text-white" />

            </asp:TemplateField>
           
             <asp:TemplateField HeaderText="EDIT" ShowHeader="False">
                 <EditItemTemplate>
                     <asp:LinkButton ID="Update_Button" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                     &nbsp; &nbsp;<asp:LinkButton ID="Cancel_Button" runat="server" CausesValidation="False" CommandName="Cancel"  Text="Cancel"></asp:LinkButton>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="Edit_Button" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                 </ItemTemplate>
                 <ControlStyle CssClass="btn btn-success" />
             </asp:TemplateField>
           
        </Columns>

    </asp:gridview>



    <div class="container">
        <div class="row bg-dark text-white pb-5 rounded">

            <h1 class="p-5 bg-gradient text-white rounded text-center ">Insert New Tutor Data</h1>
            <div class="col-md-3">
                <asp:textbox id="Ins_Name_Box" class="form-control bg-dark text-white" placeholder="Enter Name" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator21" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Name is Required"></asp:requiredfieldvalidator>

                <br />

                <asp:textbox id="Ins_Surname_Box" class="form-control bg-dark text-white" placeholder="Enter Surname" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator22" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Surname_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Surname is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Ins_Gender_List" class="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Gender" id="RequiredFieldValidator23" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Gender_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Gender is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Age_Box" class="form-control bg-dark text-white" placeholder="Enter Age" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator24" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Age is Required"></asp:requiredfieldvalidator>
                <asp:rangevalidator id="RangeValidator10" runat="server" validationgroup="Ttr_Insert" controltovalidate="Ins_Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Enter Age Between 20 to 60" maximumvalue="60" minimumvalue="20" type="Integer"></asp:rangevalidator>
                <br />
            </div>

            <div class="col-md-3">
                <asp:textbox id="Ins_Email_Box" class="form-control bg-dark text-white" placeholder="Enter Email" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator25" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Email_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Email is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator11" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Email_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Please Enter Valid Email" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>

                <br />

                <asp:dropdownlist id="Ins_Marital_List" class="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Marital Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Seperated</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Marital Status" validationgroup="Ttr_Insert" id="RequiredFieldValidator26" runat="server" controltovalidate="Ins_Marital_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Marital Status is Required"></asp:requiredfieldvalidator>


                <br />
                <asp:textbox id="Ins_Country_Box" class="form-control bg-dark text-white" placeholder="Enter Country" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator27" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Country_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Country is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_City_Box" class="form-control bg-dark text-white" placeholder="Enter City" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator28" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_City_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="City is Required"></asp:requiredfieldvalidator>

                <br />

            </div>

            <div class="col-md-3">

                <asp:dropdownlist id="Ins_Qualification_List" class="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Qualification" validationgroup="Ttr_Insert" id="RequiredFieldValidator29" runat="server" controltovalidate="Ins_Qualification_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Qualification is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Address_Box" textmode="MultiLine" rows="4" columns="20" class="form-control bg-dark text-white" placeholder="Enter Address" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator30" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Address_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Address is Required"></asp:requiredfieldvalidator>

                <br />

                <asp:textbox id="Ins_Degree_Box" class="form-control bg-dark text-white" placeholder="Enter Degree" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator31" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Degree_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Degree is Required"></asp:requiredfieldvalidator>

                <br />



            </div>

            <div class="col-md-3">


                <asp:dropdownlist id="Ins_Experience_List" class="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1 Year</asp:ListItem>
                    <asp:ListItem>2 Years</asp:ListItem>
                    <asp:ListItem>3 Years</asp:ListItem>
                    <asp:ListItem>4 Years</asp:ListItem>
                    <asp:ListItem>5 Years</asp:ListItem>
                    <asp:ListItem>5+ Years</asp:ListItem>
                    <asp:ListItem>8+ Years</asp:ListItem>
                    <asp:ListItem>10+ Years</asp:ListItem>
                    <asp:ListItem>15+ Years</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Experience" validationgroup="Ttr_Insert" id="RequiredFieldValidator32" runat="server" controltovalidate="Ins_Experience_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Experience is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Contact_Box" class="form-control bg-dark text-white" placeholder="Enter Contact Number" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator33" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Contact Number is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator34" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" errormessage="Please Enter Correct 10 Digit Mobile Number"></asp:regularexpressionvalidator>

                <br />

                <asp:textbox id="Ins_Username_Box" class="form-control bg-dark text-white" placeholder="Enter Username" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator35" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Password_Box" textmode="Password" class="form-control bg-dark text-white" placeholder="Enter Password" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator36" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator2" validationgroup="Ttr_Insert" runat="server" controltovalidate="Ins_Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})" errormessage="Please Enter Strong Password"></asp:regularexpressionvalidator>


                <br />

            </div>

            <div class="row">
                <div class="col-md-3 d-grid mx-auto mt-5">
                    <asp:button id="Tutor_Inser_Button" onclick="Tutor_Inser_Button_Click" runat="server" validationgroup="Ttr_Insert" text="Insert" cssclass="btn btn-outline-success btn-block" />
                </div>

            </div>
            <div class="text-center mt-1" id="Jump">
                <a href="View_Student.aspx" class="text-white align-content-center mt-2">You Want To Insert New Student ? Click Here</a>
            </div>
        </div>

    </div>
</asp:Content>

