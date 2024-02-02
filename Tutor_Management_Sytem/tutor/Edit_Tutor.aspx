<%@ Page Title="" Language="C#" MasterPageFile="~/tutor/Tutor_Dashboard.master" AutoEventWireup="true" CodeFile="Edit_Tutor.aspx.cs" Inherits="tutor_Edit_Tutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="p-4 bg-dark text-white text-center">Update Or Delete Profile</h1>
        </div>

    </div>

    <br />

    <asp:gridview id="GridView_Tutor" cssclass="table table-bordered table-hover table-striped table-dark" datakeynames="tutor_id" autogeneratecolumns="False" runat="server" onrowdeleting="GridView_Tutor_RowDeleting" onrowediting="GridView_Tutor_RowEditing" onrowcancelingedit="GridView_Tutor_RowCancelingEdit" onrowupdating="GridView_Tutor_RowUpdating">

         <Columns>
            <asp:TemplateField HeaderText="ID" >
                <EditItemTemplate >
                    <asp:TextBox ID="Id_Box" Class="form-control bg-dark text-white" width="180px" height="32px" ReadOnly="true" runat="server" Text='<%# Bind("tutor_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_Id" runat="server" Text='<%# Bind("tutor_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="Name_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
           
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
                    <asp:TextBox ID="Gender_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
              
                  <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="Gender_Box" setfocusonerror="true" display="Dynamic" forecolor="Red" errormessage="Gender is Required"></asp:requiredfieldvalidator>    
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label_Gender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="AGE">
                 <EditItemTemplate>
                    <asp:TextBox ID="Age_Box" Class="form-control bg-dark text-white" width="180px" height="32px" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
              
                 <asp:rangevalidator  runat="server"  errormessage="Enter Age Between 20 To 60" ID="Age_Range" ControlToValidate="Age_Box" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:rangevalidator>
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
                    <asp:Label ID="Label_City" runat="server" Text='<%# Bind("city") %>'></asp:Label>
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
                    <asp:TextBox ID="Number_Box" runat="server" Class="form-control bg-dark text-white" width="180px" height="32px" Text='<%# Bind("contact_number") %>'></asp:TextBox>
               
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
                    <asp:Label ID="Label_Password" runat="server" Text='<%# Bind("password") %>'></asp:Label>
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
                     &nbsp;&nbsp;<asp:LinkButton ID="Cancel_Button" runat="server" CausesValidation="False" CommandName="Cancel"  Text="Cancel"></asp:LinkButton>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="Edit_Button" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                 </ItemTemplate>
                 <ControlStyle CssClass="btn btn-success" />
             </asp:TemplateField>
           
        </Columns>

    </asp:gridview>

</asp:Content>

