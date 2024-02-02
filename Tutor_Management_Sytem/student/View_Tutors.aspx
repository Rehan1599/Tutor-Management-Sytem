<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_dashboard.master" AutoEventWireup="true" CodeFile="View_Tutors.aspx.cs" Inherits="student_View_Tutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="row">
        <div class="col-md-12 bg-dark text-white p-4 text-center">
            <h1>VIEW TUTORS</h1>
        </div>
        
    </div>
    <br />
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                
                <asp:TextBox ID="Search_Text"  class="form-control" placeholder="Search Tutor" runat="server"></asp:TextBox>
                <div class="input-group-append">
                    <button id="Search_Button" runat="server" onserverclick="Search_Button_ServerClick" class="btn btn-secondary" type="button">
                        <i class="fa fa-search"></i>

                    </button>
                </div>

            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <asp:Repeater ID="Tutor_Repeater" runat="server">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size:15px; color:steelblue;">NAME</small>
                            <h3>
                                <asp:Label ID="Label_Name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </h3>
                        </div>
                        <div class="card-body">
                              <small style="font-size:15px; color:steelblue;">EMAIL</small>
                            <h5>
                                <asp:Label ID="Label_Email" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </h5>
                              <small style="font-size:15px; color:steelblue;">COUNTRY</small>
                            <h5>
                                <asp:Label ID="Country" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                            </h5>
                              <small style="font-size:15px; color:steelblue;">CITY</small>
                            <h5>
                                <asp:Label ID="Label_City" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                            </h5>
                              <small style="font-size:15px; color:steelblue;">EXPERIENCE</small>
                            <h5>
                                <asp:Label ID="Label_Experience" runat="server" Text='<%# Bind("experience") %>'></asp:Label>
                            </h5>
                              <small style="font-size:15px; color:steelblue;">CONTACT NUMBER</small>
                            <h5>
                                <asp:Label ID="Label_Contact" runat="server" Text='<%# Bind("contact_number") %>'></asp:Label>
                            </h5>
                        </div>
                        <div class="card-footer">
                              <small style="font-size:15px; color:steelblue;">QUALIFICATION</small>
                            <h4>
                                <asp:Label ID="Label_Qualification" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>

        </asp:Repeater>
    </div>
</asp:Content>

