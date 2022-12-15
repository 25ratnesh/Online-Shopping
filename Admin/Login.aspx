<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>ADMIN LOGIN</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style>
        body {
            background-image: url("../Content/3d-illustration-smartphone-with-blank-white-screen-cardboard-boxes-e-commerce-shipping-service-concept.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-attachment:inherit;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container" style="height: 60%; width: 35%; border: 2px hidden black; padding: 50px; margin-top: 6%; margin-left: 55">
            <div class="row">

                <div class="col-md-12 text-center">
                    <h1 style="font-family: fantasy; padding-top: 50px;">
                        <img width="80" height="40" src="https://tranzgo.com/wp-content/uploads/2022/01/logo-removebg-preview.png" class="attachment-full size-full" alt="" loading="lazy" srcset="https://tranzgo.com/wp-content/uploads/2022/01/logo-removebg-preview.png 602w, https://tranzgo.com/wp-content/uploads/2022/01/logo-removebg-preview-300x66.png 300w, https://tranzgo.com/wp-content/uploads/2022/01/logo-removebg-preview-440x96.png 440w, https://tranzgo.com/wp-content/uploads/2022/01/logo-removebg-preview-600x132.png 600w" sizes="(max-width: 602px) 100vw, 602px" /></h1>
                </div>

            </div>
            <div class="row" style="padding-top: 30px;">
                <div class="col-md-2">&nbsp;</div>
                <div class="col-md-8">
                    <asp:TextBox ID="Uname" runat="server" Class="form-control" placeholder="Username or email" ErrorMessage="Please Enter Your Username"></asp:TextBox>
                </div>
                <div class="col-md-2">&nbsp;</div>
            </div>
            <div class="row" style="padding-top: 5px;">
                <div class="col-md-2">&nbsp;</div>
                <div class="col-md-8">
                    <asp:TextBox ID="Pwd" runat="server" Class="form-control" placeholder="Password" Type="password" ErrorMessage="Please Enter Your word"></asp:TextBox>
                </div>
                <div class="col-md-2">&nbsp;</div>
            </div>
            <div class="row" style="padding-top: 20px; padding-bottom: 70px;">
                <div class="col-md-3">&nbsp;</div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" Class="form-control" Text="Log In" Style="background-color: skyblue;" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>

                </div>
                <div class="col-md-3">&nbsp;</div>
            </div>
            <div class="row">
                <div class="col-md-6">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
