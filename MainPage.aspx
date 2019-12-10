
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Doctor_connect.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url(hjk.jpg);
        }
        table {
            border-spacing: 30px 10px;
        }
h1{
    color:darkblue;
}
      
    </style>
</head>
<body >
    <form id="form1" runat="server">
        
        <br /><br /><br /><br /><br /><br /><br /><br /><br />
            <table style="margin:auto;border:2px solid black">
          <tr><th><h1>DoctorConnect&nbsp; </h1><br /></th></tr>
           
           <tr><td> <asp:TextBox ID="username" runat="server" placeholder="Email" Width="220px" Height="30px"></asp:TextBox>
               <br />
&nbsp;<br />
               </td></tr>

          <tr><td>  <asp:TextBox ID="Password" runat="server" placeholder="Password" Width="220px" TextMode="Password"  OnTextChanged="password_TextChanged" Height="28px" ForeColor="Black"></asp:TextBox>
              <br />
              <br />
              </td></tr>
            
          <tr><td>  <asp:Button ID="signin" runat="server" Text="Sign-In" Width="103px" Height="31px" OnClick="signin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="signup" runat="server" Text="Sign-Up" Width="98px" Height="31px" PostBackUrl="~/Registration.aspx" /></td></tr>
        </table>
    </form>
</body>
</html>
