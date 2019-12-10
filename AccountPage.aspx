<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="Doctor_connect.AccountPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-image: url(landing-page.jpg) ;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: black;
  
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background-color:white;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 500px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
    .auto-style1 {
        font-size: xx-large;
    }
    .auto-style2 {
        width: 63%;
    }
    .auto-style3 {
        height: 603px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">

<header>
  <h2 class="auto-style1">Doctor Connect</h2>
</header>

<section>
  <nav class="auto-style3">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Image ID="Image1" runat="server" Height="194px" ImageUrl="~/512x512bb.jpg" Width="231px" />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Account" Width="230px" OnClick="Button1_Click" />
      <br />
      <br />
      &nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button5" runat="server" Text="Profile" Width="230px" OnClick="Button2_Click" />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Logout" Width="230px" OnClick="Butto10_Click" />
      <br />
  </nav>
  
  <article class="auto-style2">
  
      <p><center><h1>View Your Account Information!!!</h1></center></p>
      
       Enter the registered Email ID: <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="VIEW" OnClick="Button3_Click" />
           
  
      <br />
      <br />
      <br />
     FirstName:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
      <br />
      <br />
      LastName:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
      <br />
      <br />
      Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
      <br />
      <br />
      
      Total Amount: <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
      &nbsp;<br />
      <br />
      Amount Paid: <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
      &nbsp;<br />
      <br />
      Amount Due: <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
      <br />
      <br />
      <asp:Button ID="Button4" runat="server" Text="UPDATE" OnClick="Button4_Click" />
     
           
  </article>
</section>


        <div>
        </div>
    </form>
</body>
</html>
