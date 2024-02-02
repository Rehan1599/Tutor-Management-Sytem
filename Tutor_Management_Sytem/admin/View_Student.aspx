<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Dashboard.master" AutoEventWireup="true" CodeFile="View_Student.aspx.cs" Inherits="admin_View_Student" %>

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
            <h1 class="p-4 bg-dark text-white text-center">VIEW STUDENTS DATA</h1>
        </div>

    </div>

    <br />
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">

                <asp:textbox id="Search_Text" class="form-control" placeholder="Search Student" runat="server"></asp:textbox>
                <div class="input-group-append">
                    <button id="Search_Button" runat="server" onserverclick="Search_Button_ServerClick" class="btn btn-secondary" type="button">
                        <i class="fa fa-search"></i>

                    </button>
                </div>
            </div>
        </div>

    </div>

    <br />

    <asp:gridview id="Student_Grid_View" cssclass="table table-bordered table-hover table-striped table-dark " runat="server" datakeynames="student_id" autogeneratecolumns="False" onrowdeleting="Student_Grid_View_RowDeleting" onrowediting="Student_Grid_View_RowEditing" onrowcancelingedit="Student_Grid_View_RowCancelingEdit" onrowupdating="Student_Grid_View_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <EditItemTemplate >
                    <asp:TextBox ID="Id_Box" Class="form-control bg-dark text-white" width="180px" height="30px" ReadOnly="true" runat="server" Text='<%# Bind("student_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Id" runat="server" Text='<%# Bind("student_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME">
                 <EditItemTemplate >
                    <asp:TextBox ID="Name_Box" Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Name" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                
                     <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Name is Required"></asp:requiredfieldvalidator>
                 </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Father NAME">
                     <EditItemTemplate >
                    <asp:TextBox ID="Father_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Father Name"  runat="server" Text='<%# Bind("father_name") %>'></asp:TextBox>

                          <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="Father_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Father Name is Required"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Father_Name" runat="server" Text='<%# Bind("father_name") %>'></asp:Label>
                </ItemTemplate>


            </asp:TemplateField>
            <asp:TemplateField HeaderText="Surname">
                  <EditItemTemplate >
                    <asp:TextBox ID="Surname_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Surname" runat="server" Text='<%# Bind("surname") %>'></asp:TextBox>

                       <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="Surname_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Surname is Required"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Surname" runat="server" Text='<%# Bind("surname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Gender">
                   <EditItemTemplate >
                <asp:dropdownlist id="Gender_List" Class="form-control bg-dark text-white"   width="180px" height="32px" runat="server" Text='<%# Bind("gender") %>'>
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Gender" id="RequiredFieldValidator4" runat="server" controltovalidate="Gender_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Gender is Required"></asp:requiredfieldvalidator>
    
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Gender" runat="server" Text='<%# Bind("gender") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Age">
                   <EditItemTemplate >
                    <asp:TextBox ID="Age_Box" Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Age" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>

                         <asp:rangevalidator  runat="server"  errormessage="Enter Age Between 5 To 40" ID="Age_Range" ControlToValidate="Age_Box" Display="Dynamic" ForeColor="Red" MaximumValue="40" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:rangevalidator>
                        <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Age is Required"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Age" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Country">
                   <EditItemTemplate >
                    <asp:TextBox ID="Country_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Country" runat="server" Text='<%# Bind("country") %>'></asp:TextBox>
                
                    <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="Country_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Country is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Country" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="City">
                   <EditItemTemplate >
                    <asp:TextBox ID="City_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter City" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
                
                    <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="City_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="City is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_City" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Address">
                   <EditItemTemplate >
                    <asp:TextBox ID="Address_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Address" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                
                    <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="Address_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Address is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Address" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Class">
                   <EditItemTemplate >
                    <asp:TextBox ID="Class_Box"  Class="form-control bg-dark text-white" width="180px" height="32px" placeholder="Enter Class" runat="server" Text='<%# Bind("standard") %>'></asp:TextBox>
                
                    <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="Class_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Class is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Class" runat="server" Text='<%# Bind("standard") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
  
            <asp:TemplateField HeaderText="Going To">
                   <EditItemTemplate >
                 <asp:dropdownlist id="Going_List" Class="form-control bg-dark text-white " width="180px" height="32px" runat="server" Text='<%# Bind("going_to") %>'>
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Going To" id="RequiredFieldValidator10" runat="server" controltovalidate="Going_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Going To is Required"></asp:requiredfieldvalidator>

                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Going"  runat="server" Text='<%# Bind("going_to") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="SUBJECT">
                  <EditItemTemplate >
                    <asp:TextBox ID="Subject_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Subject" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>
                
                   <asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" controltovalidate="Subject_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Subject is Required"></asp:requiredfieldvalidator>
                  </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Subject"  runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Contact Number">
                   <EditItemTemplate >
                    <asp:TextBox ID="Number_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Contact Number" runat="server" Text='<%# Bind("contact_number") %>'></asp:TextBox>
                
                    <asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" controltovalidate="Number_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Number is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Contact" runat="server" Text='<%# Bind("contact_number") %>'></asp:Label>
                </ItemTemplate>
             <asp:TemplateField HeaderText="Tution Type">
                   <EditItemTemplate >
                    <asp:TextBox ID="Tution_Box" Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Tution Type" runat="server" Text='<%# Bind("tution_type") %>'></asp:TextBox>
               
                    <asp:requiredfieldvalidator id="RequiredFieldValidator13" runat="server" controltovalidate="Tution_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Tution Type is Required"></asp:requiredfieldvalidator>
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Tution" runat="server" Text='<%# Bind("tution_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Tutor Preferred">
                
                  <EditItemTemplate >
                    <asp:TextBox ID="Tutor_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter TUtor Preferred" runat="server" Text='<%# Bind("tution_preferred") %>'></asp:TextBox>
                
                   <asp:requiredfieldvalidator id="RequiredFieldValidator14" runat="server" controltovalidate="Tutor_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Tutor Preferred is Required"></asp:requiredfieldvalidator>
                  </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Tutor" runat="server" Text='<%# Bind("tution_preferred") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Username">
                   <EditItemTemplate >
                    <asp:TextBox ID="Username_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Username" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
           
                    <asp:requiredfieldvalidator id="RequiredFieldValidator15" runat="server" controltovalidate="Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>    
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Username" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Password">
                   <EditItemTemplate >
                    <asp:TextBox ID="Password_Box"  Class="form-control bg-dark text-white" width="180px" height="30px" placeholder="Enter Password" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
          
                    <asp:requiredfieldvalidator id="RequiredFieldValidator16" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>    
                   </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Password" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are You Sure To Delete Data ??')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger text-white" />
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Edit Data" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="Update_Button" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;&nbsp;<asp:LinkButton ID="Cancel_Button" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="Edit_Button"  runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-success text-white" />
            </asp:TemplateField>
           
        </Columns>
    </asp:gridview>




    <div class="container">


        <div class="row bg-dark text-white pb-5 rounded">

            <h1 class="p-5 bg-gradient text-white rounded text-center ">Insert New Student Data</h1>
            <div class="col-md-3">
                <asp:textbox id="Ins_Name_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Name" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator17" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Name is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Father_Name_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Father Name" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator18" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Father_Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Father Name is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Surname_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Surname" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator19" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Surname_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Surname is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Ins_Gender_List" cssclass="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Gender" validationgroup="St_Insert" id="RequiredFieldValidator20" runat="server" controltovalidate="Ins_Gender_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Gender is Required"></asp:requiredfieldvalidator>

                <br />

            </div>

            <div class="col-md-3">

                <asp:textbox id="Ins_Age_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Age" runat="server"></asp:textbox>
                <asp:rangevalidator runat="server" validationgroup="St_Insert" errormessage="Enter Age Between 5 To 40" id="Age_Range" controltovalidate="Ins_Age_Box" display="Dynamic" forecolor="Red" maximumvalue="40" minimumvalue="5" setfocusonerror="True" type="Integer"></asp:rangevalidator>
                <asp:requiredfieldvalidator id="RequiredFieldValidator21" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Age is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Country_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Country" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator22" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Country_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Country is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_City_Box" cssclass="form-control bg-dark text-white" placeholder="Enter City" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator23" validationgroup="St_Insert" runat="server" controltovalidate="Ins_City_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="City is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Address_Box" textmode="MultiLine" rows="1" columns="20" cssclass="form-control bg-dark text-white " placeholder="Enter Address" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator24" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Address_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Address is Required"></asp:requiredfieldvalidator>

                <br />


            </div>

            <div class="col-md-3">


                <asp:textbox id="Ins_Class_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Class" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator25" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Class_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Class is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Ins_Going_List" cssclass="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Going To" validationgroup="St_Insert" id="RequiredFieldValidator26" runat="server" controltovalidate="Ins_Going_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Going To is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Subject_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Subject" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator27" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Subject_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Subject is Required"></asp:requiredfieldvalidator>

                <br />

                <asp:textbox id="Ins_Contact_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Contact Number" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator28" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Contact Number is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator1" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" errormessage="Please Enter Correct 10 Digit Mobile Number"></asp:regularexpressionvalidator>

                <br />


            </div>


            <div class="col-md-3">


                <asp:textbox id="Ins_Tution_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Tution Type Online Or Physical" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator29" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Tution_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Tution Type is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Ins_Tutor_Preferred_List" cssclass="form-control bg-dark text-white" runat="server">
                    <asp:ListItem>Select Tutor Preferred</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Tutor Preferred" validationgroup="St_Insert" id="RequiredFieldValidator30" runat="server" controltovalidate="Ins_Tutor_Preferred_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Tutor Preferred is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Username_Box" cssclass="form-control bg-dark text-white" placeholder="Enter Username" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator31" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Ins_Password_Box" textmode="Password" cssclass="form-control bg-dark text-white" placeholder="Enter Password" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator32" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator2" validationgroup="St_Insert" runat="server" controltovalidate="Ins_Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})" errormessage="Please Enter Strong Password"></asp:regularexpressionvalidator>


                <br />

            </div>



            <div class="row">
                <div class="col-md-3 d-grid mx-auto mt-5">
                    <asp:button id="Insert_Button" runat="server" validationgroup="St_Insert" text="Insert" cssclass="btn btn-outline-success text-white  btn-block" onclick="Insert_Button_Click" />
                </div>
                <div class="text-center mt-1" id="Jump">
                    <a href="View_Tutor_Data.aspx" class="text-white align-content-center mt-2">You Want To Insert New Tutor ? Click Here</a>
                </div>
            </div>

        </div>


    </div>


    <br />

</asp:Content>

