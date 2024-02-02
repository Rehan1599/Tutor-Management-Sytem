<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Tutor_Signup.aspx.cs" Inherits="Tutor_Signup" %>

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
    <br />
    <br />
    <br />


    <div class="container" id="Design">

        <div class="row mb-5">
            <h1 class="mt-4 p-5 bg-dark text-light rounded text-center ">Tutor SignUp</h1>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:textbox id="Name_Box" cssclass="form-control" placeholder="Enter Name" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="Name_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Name is Required"></asp:requiredfieldvalidator>

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
                <asp:rangevalidator id="RangeValidator1" runat="server" controltovalidate="Age_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Enter Age Between 20 to 60" maximumvalue="60" minimumvalue="20" type="Integer"></asp:rangevalidator>
                <br />
                <asp:textbox id="Email_Box" cssclass="form-control" placeholder="Enter Email" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="Email_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Email is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator3" runat="server" controltovalidate="Email_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Please Enter Valid Email" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>

                <br />
                <asp:dropdownlist id="Marital_List" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Marital Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Seperated</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Marital Status" id="RequiredFieldValidator18" runat="server" controltovalidate="Marital_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Marital Status is Required"></asp:requiredfieldvalidator>


            </div>

            <div class="col-md-4">
                <asp:textbox id="Country_Box" cssclass="form-control" placeholder="Enter Country" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="Country_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Country is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="City_Box" cssclass="form-control" placeholder="Enter City" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="City_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="City is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Address_Box" textmode="MultiLine" rows="6" columns="20" cssclass="form-control" placeholder="Enter Address" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="Address_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Address is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:dropdownlist id="Qualification_List" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>

                <asp:requiredfieldvalidator initialvalue="Select Qualification" id="RequiredFieldValidator19" runat="server" controltovalidate="Qualification_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Qualification is Required"></asp:requiredfieldvalidator>

                <br />


            </div>

            <div class="col-md-4">
                <asp:textbox id="Degree_Box" cssclass="form-control" placeholder="Enter Degree" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="Degree_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Degree is Required"></asp:requiredfieldvalidator>

                <br />

                <asp:dropdownlist id="Experience_List" cssclass="form-control" runat="server">
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

                <asp:requiredfieldvalidator initialvalue="Select Experience" id="RequiredFieldValidator10" runat="server" controltovalidate="Experience_List" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Experience is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Contact_Box" cssclass="form-control" placeholder="Enter Contact Number" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" controltovalidate="Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Contact Number is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" controltovalidate="Contact_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" errormessage="Please Enter Correct 10 Digit Mobile Number"></asp:regularexpressionvalidator>

                <br />

                <asp:textbox id="Username_Box" cssclass="form-control" placeholder="Enter Username" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator15" runat="server" controltovalidate="Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>

                <br />
                <asp:textbox id="Password_Box" textmode="Password" cssclass="form-control" placeholder="Enter Password" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator16" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" validationexpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})" errormessage="Please Enter Strong Password"></asp:regularexpressionvalidator>


                <br />
                <asp:textbox id="Confirm_Pass_Box" textmode="Password" cssclass="form-control" placeholder="Re-Enter Password" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator17" runat="server" controltovalidate="Confirm_Pass_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Confirm Password is Required"></asp:requiredfieldvalidator>
                <asp:comparevalidator id="CompareValidator1" runat="server" controltovalidate="Confirm_Pass_Box" controltocompare="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Please Enter Correct Password"></asp:comparevalidator>
                <br />

            </div>
            <div class="row">
                <div class="col-md-3 d-grid mx-auto mt-5">
                    <asp:button id="Tutor_Signup_Button" onclick="Tutor_Signup_Button_Click" runat="server" text="Signup" cssclass="btn btn-dark btn-block" />
                </div>

            </div>
            <div class="text-center mt-1">
                <a href="Tutor_Login.aspx" class="text-dark align-content-center">Already Have Account ? Login Now</a>
            </div>

            <div class="row ">
                <div class="col-md-4 text-center mx-auto mt-3 clearfix">

                    <a href="Student_Signup.aspx" class="btn btn-outline-dark ">Signup As Student</a>
                    <a href="Default.aspx" class="btn btn-outline-dark float-end ">Go To Home Page</a>
                </div>

            </div>
        </div>


    </div>


    <br />

</asp:Content>

