<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_dashboard.master" AutoEventWireup="true" CodeFile="Edit_Profile.aspx.cs" Inherits="student_Edit_Prifile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="p-4 bg-dark text-white text-center">EDIT OR DELETE PROFILE</h1>
        </div>

    </div>

    <asp:GridView ID="Student_Grid_View" CssClass="table table-bordered table-hover table-striped table-dark" runat="server" DataKeyNames="student_id" AutoGenerateColumns="False" OnRowDeleting="Student_Grid_View_RowDeleting" OnRowEditing="Student_Grid_View_RowEditing" OnRowCancelingEdit="Student_Grid_View_RowCancelingEdit" OnRowUpdating="Student_Grid_View_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <EditItemTemplate>
                    <asp:TextBox ID="Id_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" ReadOnly="true" runat="server" Text='<%# Bind("student_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Id" runat="server" Text='<%# Bind("student_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="Name_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Name" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Father NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="Father_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Father Name" runat="server" Text='<%# Bind("father_name") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Father_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Father_Name" runat="server" Text='<%# Bind("father_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Surname">
                <EditItemTemplate>
                    <asp:TextBox ID="Surname_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Surname" runat="server" Text='<%# Bind("surname") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Surname_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Surname" runat="server" Text='<%# Bind("surname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <EditItemTemplate>
                    <asp:TextBox ID="Gender_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Gender" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Gender_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Gender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age">
                <EditItemTemplate>
                    <asp:TextBox ID="Age_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Age" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>

                    <asp:RangeValidator runat="server" ErrorMessage="Enter Age Between 5 To 40" ID="Age_Range" ControlToValidate="Age_Box" Display="Dynamic" ForeColor="Red" MaximumValue="40" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Age_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Age" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <EditItemTemplate>
                    <asp:TextBox ID="Country_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Country" runat="server" Text='<%# Bind("country") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Country_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Country" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <EditItemTemplate>
                    <asp:TextBox ID="City_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter City" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="City_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_City" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="Address_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Address" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Address_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Address" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Class">
                <EditItemTemplate>
                    <asp:TextBox ID="Class_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Class" runat="server" Text='<%# Bind("standard") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Class_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Class" runat="server" Text='<%# Bind("standard") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Going To">
                <EditItemTemplate>
                    <asp:TextBox ID="Going_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Going To" runat="server" Text='<%# Bind("going_to") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Going_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Going To is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Going" runat="server" Text='<%# Bind("going_to") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SUBJECT">
                <EditItemTemplate>
                    <asp:TextBox ID="Subject_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Subject" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Subject_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Subject" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Number">
                <EditItemTemplate>
                    <asp:TextBox ID="Number_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Contact Number" runat="server" Text='<%# Bind("contact_number") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Number_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Number is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Contact" runat="server" Text='<%# Bind("contact_number") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tution Type">
                <EditItemTemplate>
                    <asp:TextBox ID="Tution_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Tution Type" runat="server" Text='<%# Bind("tution_type") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Tution_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Tution Type is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Tution" runat="server" Text='<%# Bind("tution_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tutor Preferred">
                <EditItemTemplate>
                    <asp:TextBox ID="Tutor_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Totor Preferred" runat="server" Text='<%# Bind("tution_preferred") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Tutor_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Tutor Preferred is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Tutor" runat="server" Text='<%# Bind("tution_preferred") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username">
                <EditItemTemplate>
                    <asp:TextBox ID="Username_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Username" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="Username_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Username" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="Password_Box" Class="form-control bg-dark text-white" Width="180px" Height="32px" placeholder="Enter Password" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="Password_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
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
                    <asp:LinkButton ID="Edit_Button" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-success text-white" />
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

</asp:Content>

