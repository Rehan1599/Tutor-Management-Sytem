<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="admin_Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Login</title>
    <%-- <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="../Design_Files/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
    <style type="text/css">
        #Design{
            box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            -webkit-box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 7px 3px rgba(0,0,0,0.75);
            margin-top:10%;
        }
        body{
            color:whitesmoke;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" id="Design" >
                    <div class="p-5 bg-dark text-white rounded text-center mb-5 mt-3" >
                        <h2>Admin Login</h2>
                    </div>
                    <asp:TextBox ID="UName_Box" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UName_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="Pass_Box" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pass_Box" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    <br />
                    <div class="d-grid">
                         <asp:Button ID="Login_Button" OnClick="Login_Button_Click" Class="btn btn-dark btn-block" runat="server" Text="Login" />
                     </div>
                     <div class="row ">
                    <div class="col-md-12 mt-3 clearfix mb-2 mt-2 mx-auto text-center">

                       
                         <a href="../Default.aspx" class="btn btn-outline-dark">Go To Home Page</a>
                    </div>
                </div>
                    <br />
                </div>

            </div>

        </div>
    </form>

    <script src="../assets/vendor/JQuery/jquery.min.js"></script>
    <script src="../Design_Files/js/bootstrap.min.js"></script>
    
</body>
</html>
