<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function Success_Contact() {
            Swal.fire({
                title: "Success",
                text: "Form Has Been Submitted Successfully",
                icon: "success"
            });
        }
        function Error_Contact() {
            Swal.fire({
                title: "Failur",
                text: "Form Insertion Failed",
                icon: "error"
            });
        }
    </script>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <main id="main">

        <!-- ======= Contact Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Contact</h2>
                    <ol>
                        <li><a href="Default.aspx">Home</a></li>
                        <li>Contact</li>
                    </ol>
                </div>

            </div>
        </section>
        <!-- End Contact Section -->

        <!-- ======= Contact Section ======= -->
        <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
            <div class="container">

                <div class="row">

                    <div class="col-lg-6">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="info-box">
                                    <i class="bx bx-map"></i>
                                    <h3>Our Address</h3>
                                    <p>A108 Adam Street, New York, NY 535022</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-box">
                                    <i class="bx bx-envelope"></i>
                                    <h3>Email Us</h3>
                                    <p>info@example.com<br>
                                        contact@example.com</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-box">
                                    <i class="bx bx-phone-call"></i>
                                    <h3>Call Us</h3>
                                    <p>+1 5589 55488 55<br>
                                        +1 6678 254445 41</p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-6">

                        <div class="row">
                            <div class="col-md-6 form-group">
                                <%-- <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>--%>
                                <asp:textbox id="Name_Box" class="form-control" placeholder="Your Name" runat="server"></asp:textbox>
                                <asp:requiredfieldvalidator id="RequiredFieldValidator1" controltovalidate="Name_Box" forecolor="Red" setfocusonerror="true" display="Dynamic" runat="server" errormessage="Name is required"></asp:requiredfieldvalidator>
                            </div>
                            <div class="col-md-6 form-group mt-3 mt-md-0">
                                <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>--%>
                                <asp:textbox id="Email_Box" class="form-control" placeholder="Your Email" runat="server"></asp:textbox>
                                <asp:requiredfieldvalidator id="RequiredFieldValidator2" controltovalidate="Email_Box" forecolor="Red" setfocusonerror="true" display="Dynamic" runat="server" errormessage="Email is required"></asp:requiredfieldvalidator>
                                <asp:regularexpressionvalidator controltovalidate="Email_Box" id="RegularExpressionValidator1" setfocusonerror="true" forecolor="Red" display="Dynamic" runat="server" errormessage="Please Enter valid Email" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <asp:dropdownlist id="Sub_List" runat="server" class="form-control">
                      <asp:ListItem>Select</asp:ListItem>
                      <asp:ListItem>Suggetion</asp:ListItem>
                      <asp:ListItem>Feedback</asp:ListItem>
                      <asp:ListItem>Complain</asp:ListItem>
                  </asp:dropdownlist>
                            <asp:requiredfieldvalidator initialvalue="Select" id="RequiredFieldValidator3" controltovalidate="Sub_List" forecolor="Red" setfocusonerror="true" display="Dynamic" runat="server" errormessage="Please Select Subject"></asp:requiredfieldvalidator>
                        </div>
                        <div class="form-group mt-3">

                            <asp:textbox id="Message_Box" textmode="MultiLine" columns="50" rows="5" class="form-control" placeholder="Enter Message" runat="server"></asp:textbox>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator4" controltovalidate="Message_Box" forecolor="Red" setfocusonerror="true" display="Dynamic" runat="server" errormessage="Message is required"></asp:requiredfieldvalidator>
                        </div>
                        <div class="text-center mt-3">
                            <asp:button id="Submit_Button" cssclass="btn btn-info" runat="server" text="Submit" onclick="Submit_Button_Click" />
                        </div>



                    </div>

                </div>

            </div>
        </section>
        <!-- End Contact Section -->

        <!-- ======= Map Section ======= -->
        <section class="map mt-2">
            <div class="container-fluid p-0">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15070528.339072188!2d57.410900749999975!3d22.75319800000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3963029c8772bdbd%3A0xf5117d10890d47d1!2sOswal%20Computers%20%26%20Consultants%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1701094012962!5m2!1sen!2sin" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
            </div>
        </section>
        <!-- End Map Section -->

    </main>
    <!-- End #main -->





</asp:Content>

