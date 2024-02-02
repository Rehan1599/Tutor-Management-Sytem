<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Dashboard.master" AutoEventWireup="true" CodeFile="View_Contact.aspx.cs" Inherits="admin_View_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="p-4 bg-dark text-white text-center">VIEW CONTACT DETAILS</h1>
        </div>

    </div>

    <asp:GridView ID="Contact_Grid_View" CssClass="table table-bordered table-hover table-striped table-dark" runat="server" AutoGenerateColumns="False" OnRowDeleting="Contact_Grid_View_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="Label_Id" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME">
                <ItemTemplate>
                    <asp:Label ID="Label_Name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EMAIL">
                 <ItemTemplate>
                    <asp:Label ID="Label_Email" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SUBJECT">
                 <ItemTemplate>
                    <asp:Label ID="Label_Subject" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MESSAGE">
                 <ItemTemplate>
                    <asp:Label ID="Label_Message" runat="server" Text='<%# Bind("message") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are You Sure To Delete Data ??')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger text-white" />

            </asp:TemplateField>
           
        </Columns>
    </asp:GridView>

</asp:Content>

