<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Tutor_Login.aspx.cs" Inherits="Tutor_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        #Design {
            box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            -webkit-box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            margin-top: 10%;
        }

        body {
            color: whitesmoke;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" id="Design">
                <div class="p-5 bg-dark text-white rounded text-center mb-5 mt-3">
                    <h2>Tutor Login</h2>
                </div>
                <asp:textbox id="Username_Box" placeholder="Enter Username" cssclass="form-control" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="Username_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Username is Required"></asp:requiredfieldvalidator>
                <br />
                <asp:textbox id="Password_Box" textmode="Password" placeholder="Enter Password" cssclass="form-control" runat="server"></asp:textbox>

                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="Password_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Password is Required"></asp:requiredfieldvalidator>
                <br />
                <div class="d-grid">
                    <asp:button id="Tutor_Login_Button" onclick="Tutor_Login_Button_Click" class="btn btn-dark btn-block" runat="server" text="Login" />
                </div>
                <div class="text-center mt-1">
                    <a href="Tutor_Signup.aspx" class="text-dark align-content-center">Not Registered Yet ? Register Now</a>
                </div>
                <br />
                <div class="row ">
                    <div class="col-md-12 mt-3 clearfix mb-4 mx-auto text-center">

                        <a href="Student_Login.aspx" class="btn btn-outline-dark float-start">Login As Student</a>
                         <a href="Default.aspx" class="btn btn-outline-dark float-end ">Go To Home Page</a>
                    </div>

                </div>
            </div>

        </div>


    </div>
    <br />


</asp:Content>

