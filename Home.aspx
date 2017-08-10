<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HManagement Patient Registration</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/StyleSheet.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="../Content/bootstrap-datepicker.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
        <script>
        $(function () {
            $('#Calender1').datepicker({
                format: "mm/dd/yyyy",
                autoclose: true,
                todayHighlight: true
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
                <%-- Menu Tab--%>
                <div class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="active"><a href="Home.aspx"><span class="glyphicon glyphicon-home"></span>Home</a> </li>
                                            </ul>
                                        <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-pencil"></span>Appointment <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#patient">Create Appointment</a></li>
                                <li><a href="#">View Appointment</a></li>
                                                            </ul>
                        </li>
                    </ul>
                                    </div>
            </div>
        </div>
                <%--SlideShow--%>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>
               <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/1a.jpg" alt="First Image" class="carousel-pos" />
                    <div class="carousel-caption">
                        <h3><b>First Image</b></h3>
                    </div>
                    </div>
                <div class="item">
                                        <img src="../Images/2a.jpg" alt="Second Image" class="carousel-pos" />
                    <div class="carousel-caption">
                        <h3><b>Second Image</b></h3>
                    </div>
                                    </div>
                <div class="item">
                    <img src="../Images/3a.jpg" alt="third Image" class="carousel-pos" />
                    <div class="carousel-caption">
                        <h3><b>Third Image</b> </h3>
                        </div>
                </div>
                <div class="item">
                    <img src="../Images/4a.jpg" alt="Fourth Image" class="carousel-pos" />
                    <div class="carousel-caption">
                        <h3><b>Fourth Image</b></h3>
                    </div>
                </div>
            </div>
               <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <hr />

        <%--Description--%>
        <div class="container">
            <div class="row">
                <div class="col-xs-4">
                    <div class="container-fluid paragraph">
                        <p>
                            Dr. Muhammad Al-Lozi is a <b>neurologist</b>, he received his medical degree from King Edward Medical University and has been in practice for more than 20 years.
       He is one of 92 doctors at Barnes-Jewish Hospital/Washington University and one of 35 at Barnes-Jewish West County Hospital who specialize in Neurology.
                        </p>
                        <img src="Images/doc1.jpg" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="container-fluid paragraph">
                        <p>
                            Dr. Bach specializes in treating <b>cardiovascular</b> disease using interventional cardiology and cardiac catheterization.
         He has clinical interest in coronary angioplasty,
         coronary ultrasonographic and cardiac critical care. 
         Dr. Bach is consistently recognized in "The Best Doctors in America" list.
                        </p>
                        <img src="Images/doc2.jpg" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="container-fluid paragraph">
                        <p>
                            Dr. Kara Sternhell-blackwell is a Dermatology Specialist in Saint Louis, Missouri. 
        She graduated with honors from Washington University School Of Medicine in 2005. 
        Having more than 12 years of diverse experiences, especially in <b>DERMATOLOGY</b>
                            Her areas of interest are Dermatology and immunocompromised pts.
                        </p>
                        <img src="Images/doc3.jpg" />
                    </div>
                </div>
            </div>
        </div>
        <hr />




        <%--Appointment Form--%>
        <a name="patient" class="pat">
            <div class="container">
                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label class="h2">Patient's Information</label>
                    </div>
                    <div class="col-xs-4"></div>
                </div>


                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>FirstName</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:TextBox ID="patF" runat="server" Class="form-control" placeholder="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="patF" ErrorMessage="* FirstName is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>

                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>LastName</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:TextBox ID="patL" runat="server" Class="form-control" placeholder="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="patL" ErrorMessage="* LastName is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>

                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>SSN</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:TextBox ID="ssn" runat="server" Class="form-control" placeholder="SSN number" CausesValidation="True"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ID="number" ControlToValidate="ssn" ErrorMessage="* Must be in xxx-xx-xxxx format" ForeColor="Red"
                                    ValidationExpression="^(?!(000|666|9))\d{3}-(?!00)\d{2}-(?!0000)\d{4}$" />
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>
                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>Date of Birth</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:TextBox ID="Calendar1" runat="server" Class="form-control" placeholder="mm/dd/yyyy"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="Calendar1" ErrorMessage="* Date of Birth is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>

                <script type="text/javascript">
                    $(document).ready(function () {
                        var dp = $("#<%=Calendar1.ClientID%>");
                        dp.datepicker({
                            format: "mm/dd/yyyy",
                            autoclose: true,
                            todayHighlight: true
                        });
                    });
                </script>

                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>Gender</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="79px">
                                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="RadioButtonList1" ErrorMessage="* Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>
                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>Address</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:TextBox ID="address" runat="server" Class="form-control" placeholder="street,city,state,zip"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ID="RegularExpressionValidator1" ControlToValidate="address" ErrorMessage="* Must be in street,city,state,zip" ForeColor="Red"
                                    ValidationExpression="^([0-9A-Za-z ]+,[a-zA-Z ]+,[a-zA-Z ]+,[ ]*\d{5}$)" />
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>
                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8">
                        <label>Mobile Number</label>
                        <div class="row">
                            <div class="col-xs-8">
                                <asp:TextBox ID="mobile" runat="server" Class="form-control" placeholder="Mobile Number"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ID="RegularExpressionValidator2" ControlToValidate="mobile" ErrorMessage="* Must be in xxxxxxxxxx" ForeColor="Red"
                                    ValidationExpression="^(?:\+\d+[- ])?\d{3}[-]?\d{3}[-]?\d{4}$" />
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4"></div>
                </div>


                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-8">
                                <label>Enter your problem in one word</label>
                                <div class="row">
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="descb" runat="server" Class="form-control" placeholder="Example: Knee, Hand, Heart" AutoPostBack="True" OnTextChanged="descb_TextChanged"></asp:TextBox>
                                        <asp:RegularExpressionValidator runat="server" Display="Dynamic" ID="RegularExpressionValidator3" ControlToValidate="descb" ErrorMessage="* Problem must be in one word" ForeColor="Red"
                                            ValidationExpression="^[a-zA-Z]+$" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>

                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-8">
                                <label>Doctor Name</label>
                                <div class="row">
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="doc_name" runat="server" Class="form-control" OnTextChanged="doc_name_TextChanged"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>

                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-8">
                                <label>Available Shifts</label>
                                <div class="row">
                                    <div class="col-xs-8">
                                        <asp:DropDownList ID="shifts" class="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>


                <div class="row">
                    <div class="col-xs-4"></div>
                    <div class="col-xs-8 space-vertical">
                        <asp:Button ID="create" runat="server" Text="Create Appointment" Class="btn btn-success" OnClick="Button1_Click1" />

                        <asp:Label ID="disperror" runat="server"></asp:Label>

                    </div>
                    <div class="col-xs-4"></div>
                </div>
            </div>
        </a>



        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Bottom to top</a></p>
                <p>&copy Sneha Vellanki &middot; <a href="../Home.aspx">Home</a> &middot; <a href="#">Departments</a></p>
            </div>

        </footer>


    </form>



</body>
</html>
