<%@ Page Title="" Language="C#" MasterPageFile="~/tutor/Tutor_Dashboard.master" AutoEventWireup="true" CodeFile="View_Student.aspx.cs" Inherits="tutor_View_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="row">
        <div class="col-md-12 bg-dark text-white p-4 text-center">
            <h1>VIEW STUDENT</h1>
        </div>

    </div>
    <br />
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">

                <asp:TextBox ID="Search_Text" class="form-control" placeholder="Search Student" runat="server"></asp:TextBox>
                <div class="input-group-append">
                    <button id="Student_Search_Button" onserverclick="Student_Search_Button_ServerClick" runat="server" class="btn btn-secondary" type="button">
                        <i class="fa fa-search"></i>

                    </button>
                </div>

            </div>
        </div>
    </div>
    <br />

    <div class="row">
        <asp:Repeater ID="Student_Repeater" runat="server">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size: 15px; color: steelblue;">NAME</small>
                            <h3>
                                <asp:Label ID="Label_Name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </h3>
                        </div>
                        <div class="card-body">
                            <small style="font-size: 15px; color: steelblue;">GENDER</small>
                            <h5>
                                <asp:Label ID="Label_Gender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">COUNTRY</small>
                            <h5>
                                <asp:Label ID="Country" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">CITY</small>
                            <h5>
                                <asp:Label ID="Label_City" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">SUBJECT</small>
                            <h5>
                                <asp:Label ID="Label_Subject" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">GOING TO</small>
                            <h5>
                                <asp:Label ID="Label_Going" runat="server" Text='<%# Bind("going_to") %>'></asp:Label>
                            </h5>

                            <small style="font-size: 15px; color: steelblue;">CONTACT NUMBER</small>
                            <h5>
                                <asp:Label ID="Label_Contact" runat="server" Text='<%# Bind("contact_number") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">TUTION TYPE</small>
                            <h5>
                                <asp:Label ID="Label_Tution_Type" runat="server" Text='<%# Bind("tution_type") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">TUTOR PREFERRED</small>
                            <h5>
                                <asp:Label ID="Label_Tutor_Preferred" runat="server" Text='<%# Bind("tution_preferred") %>'></asp:Label>
                            </h5>

                        </div>
                        <div class="card-footer">
                            <small style="font-size: 15px; color: steelblue;">Class</small>
                            <h4>
                                <asp:Label ID="Label_Qualification" runat="server" Text='<%# Bind("standard") %>'></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>

        </asp:Repeater>
    </div>

</asp:Content>

