<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
   <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
               Hello, <asp:Label ID="patient" runat="server"></asp:Label>
               You have successfully registered for an appointment with <asp:Label ID="doct_name" runat="server"></asp:Label> on 
        <asp:Label ID="shift_date" runat="server"></asp:Label>
     <asp:Button ID="Button1" runat="server" Text="Go back to Home" Class="btn btn-success" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
