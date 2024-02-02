<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Dashboard.master" AutoEventWireup="true" CodeFile="Insert_Student.aspx.cs" Inherits="admin_Insert_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #Design {
            box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            -webkit-box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            padding: 30px 30px;
        }

        body {
            color: whitesmoke;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <div class="container" id="Design">

        <div class="row mb-5">
            <h1 class="mt-4 p-5 bg-dark text-light rounded text-center ">Insert New Student Data</h1>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:textbox id="Name_Box" cssclass="form-control" placeholder="Enter Name" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Name is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Father_Name_Box" cssclass="form-control" placeholder="Enter Father Name" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="Father_Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Father Name is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Surname_Box" cssclass="form-control" placeholder="Enter Surname" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="Surname_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Surname is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Gender_List" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Gender" id="RequiredFieldValidator4" runat="server" controltovalidate="Gender_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Gender is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Age_Box" cssclass="form-control" placeholder="Enter Age" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Age is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Country_Box" cssclass="form-control" placeholder="Enter Country" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="Country_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Country is Required"></asp:requiredfieldvalidator>

            </div>

            <div class="col-md-4">
                <asp:textbox id="City_Box" cssclass="form-control" placeholder="Enter City" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="City_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="City is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Address_Box" textmode="MultiLine" rows="4" columns="20" cssclass="form-control" placeholder="Enter Address" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="Address_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Address is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Class_Box" cssclass="form-control" placeholder="Enter Class" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" controltovalidate="Class_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Class is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Going_List" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Going To" id="RequiredFieldValidator7" runat="server" controltovalidate="Going_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Going To is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Subject_Box" cssclass="form-control" placeholder="Enter Subject" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" controltovalidate="Subject_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Subject is Required"></asp:requiredfieldvalidator>

                <br />

            </div>

            <div class="col-md-4">
                <asp:textbox id="Contact_Box" cssclass="form-control" placeholder="Enter Contact Number" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" controltovalidate="Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Contact Number is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" controltovalidate="Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" errormessage="Please Enter Correct 10 Digit Mobile Number"></asp:regularexpressionvalidator>

                <br />
                <asp:dropdownlist id="Tution_Type_List" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Tution Type" id="RequiredFieldValidator13" runat="server" controltovalidate="Tution_Type_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Tution Type is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Tutor_Preferred_List" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Preferred</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Tutor Preferred" id="RequiredFieldValidator14" runat="server" controltovalidate="Tutor_Preferred_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Tutor Preferred is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Username_Box" cssclass="form-control" placeholder="Enter Username" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator15" runat="server" controltovalidate="Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Password_Box" textmode="Password" cssclass="form-control" placeholder="Enter Password" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator16" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})" errormessage="Please Enter Strong Password"></asp:regularexpressionvalidator>


                <br />


            </div>
            <div class="row">
                <div class="col-md-3 d-grid mx-auto mt-5">
                    <asp:button id="Insert_Button" onclick="Insert_Button_Click" runat="server" text="Insert" cssclass="btn btn-dark btn-block" />
                </div>

            </div>

        </div>


    </div>


    <br />

</asp:Content>

