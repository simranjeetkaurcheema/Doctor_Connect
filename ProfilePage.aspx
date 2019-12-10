<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Doctor_connect.ProfilePage" %>

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
  
  width: 80%;
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
        width: 65%;
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
      <asp:Button ID="Button4" runat="server" Text="Profile" Width="230px" OnClick="Button10_Click" />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Logout" Width="230px" OnClick="Button2_Click" PostBackUrl="~/MainPage.aspx" />
      <br />
  </nav>
  
  <article class="auto-style2">
     <p><center><h1>Welcome to Doctor Connect!!!</h1></center></p>
      <p>Doctor Connect has became a centralized place where you can View  your Information.</p>

      Enter the registered Email ID: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="VIEW" OnClick="Button3_Click" />
           
  
      <br />
      <br />
      <br />
     FirstName:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      <br />
      <br />
      LastName:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
      <br />
      <br />
      Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
      <br />
      <br />
      
      Gender:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
      &nbsp;<br />
      <br />
      Expertise: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

           
  </article>
</section>


        <div>
        </div>
    </form>
</body>
</html>
