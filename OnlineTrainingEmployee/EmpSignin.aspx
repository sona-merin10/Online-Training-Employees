﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmpSignin.aspx.vb" Inherits="OnlineTrainingEmployee.EmpSignin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   

    <style>
     * {
  transition: .1s ease;
}

body {
  background: #d8d8d8;

  font-family: 'Montserrat';
  margin: 0;
}

a {
  text-decoration: none;
}

.container-shadow {
  position: absolute;
  width: 525px;
  height: 675px;
  left: 50%;
  margin-left: -262.5px;
  margin-top: 60px;
  box-shadow: 0px 30px 50px -20px #000;
}

.container {
  position: absolute;
  width: 525px;
  height: 675px;
  left: 50%;
  margin-left: -262.5px;
  margin-top: 60px;
/*   background: url('https://bit.ly/2kBRtBE'); */
/*   background: #673AB7; */
background-color: #7f53ac;
background-image: linear-gradient(315deg, #7f53ac 0%, #647dee 74%);

  box-shadow: 0px 0px 50px -20px #000;
}

.wrap {
  position: relative;
  width: 400px;
  margin: 0 auto;
}

.headings {
  position: relative;
  margin: 90px auto 70px;
}

.headings > a:first-child {
  margin-left: 20px;
  margin-right: 45px;
}

.headings > a {
  color: rgba(255, 255, 255, 0.7);
  padding-bottom: 10px;
  border-bottom: solid 2px rgba(17, 97, 237, 0);
  display: inline-block;
}

.headings > a:hover {
  color: rgba(255, 255, 255, 1);
}

.headings > a.active {
  color: rgba(255, 255, 255, 1);
  border-bottom: solid 2px rgba(17, 97, 237, 1);
}

.headings > a span {
  font-size: 22px;
  letter-spacing: 1px;
  text-transform: uppercase;
}

label {
  color: rgba(255, 255, 255, 0.8);
  text-transform: uppercase;
  padding: 13px 20px;
  position: relative;
  display: block;
  font-size: 14px;
}

input {
  width: 100%;
  color: #fff;
  font-weight: 700;
  font-size: 14px;
  letter-spacing: 1px;
  background: rgba(255, 255, 255, 0.1);
  padding: 10px 20px;
  border: none;
  border-radius: 20px;
  outline: none;
  box-sizing: border-box;
  border: 2px solid rgba(255, 255, 255, 0);
  margin-bottom: 10px;
}

input:active,
input:focus {
  border: 2px solid rgba(255, 255, 255, 0.7);
}

#password {
  padding-right: 50px;
}

#password + i {
  color: rgba(255, 255, 255, 0.7);
  font-size: 25px;
  float: right;
  position: relative;
  top: -43px;
  right: 15px;
  cursor: pointer;
}

#password + i:hover {
  color: rgba(255, 255, 255, 1);
}

input[type='checkbox'] {
  width: inherit;
  padding: 0;
  margin: 20px 5px 30px 20px;
}

input[type='checkbox'] + span {
  color: #fff;
}

#rlabel {
  display: inline-block;
  padding: 0;
  top: 1px;
}

#remember:hover,
#rlabel:hover {
  cursor: pointer;
}

input[type='submit'] {
  width: 100%;
  background: #4082f5;
  text-transform: uppercase;
  padding: 12px;
  cursor: pointer;
  box-shadow: 0px 10px 40px 0px rgba(17, 97, 237, 0.4);
}

input[type='submit']:hover {
  background: #5a96ff;
}

#sign-up-form input[type='submit'] {
  margin-top: 50px;
}

footer .hr {
  border-bottom: 2px solid rgba(255, 255, 255, 0.1);
  margin: 60px 0px 40px;
}

footer .fp {
  text-align: center;
}

footer .fp a {
  color: rgba(255, 255, 255, 0.6);
  cursor: pointer;
}

footer .fp a:hover {
  color: rgba(255, 255, 255, 1);
}

#sign-in-form {
  display: block;
}

#sign-up-form {
  display: none;
}

@media (max-width: 524px) {
  .container-shadow {
    width: 400px;
    margin-top: 60px;
    left: 50%;
    margin-left: -200px;
  }
  .container {
    width: 400px;
    margin-top: 60px;
    left: 50%;
    margin-left: -200px;
  }
  .wrap {
    width: 300px;
  }
  footer .hr {
    margin-top: 50px;
  }
}

@media (max-width: 399px) {
  .container-shadow {
    width: 100%;
    margin: 0px;
    left: inherit;
  }
  .container {
    width: 100%;
    margin: 0px;
    left: inherit;
  }
  .wrap {
    width: 80%;
  }
}

@media (max-width:330px) {
  .wrap {
    width: 90%
  }
}
    </style>
    <script>
        $(document).ready(function () {

            $('#sign-up').click(function () {
                $('#sign-in').removeClass('active');
                $('#sign-in-form').hide();
                $('#sign-up').addClass('active');
                $('#sign-up-form').show();
            });
            $('#sign-in').click(function () {
                $('#sign-in').addClass('active');
                $('#sign-in-form').show();
                $('#sign-up').removeClass('active');
                $('#sign-up-form').hide();
            });

            $('#show-pw').click(function () {
                $('#show-pw').toggleClass('fa-eye');
                $('#show-pw').toggleClass('fa-eye-slash')
                $('#password').togglePassword();
            })

        });
    </script>
</head>
    
	
        <body>
            <form id="form1" runat="server">
                <div>
                    <div class="container-shadow">
  </div>
  <div class="container">
    <div class="wrap">
      <div class="headings">
        <a id="sign-in" href="#" class="active"><span>Log In</span></a>
        <a id="sign-up" href="#"><span><asp:LinkButton ID="LinkButton1" runat="server">SIGN UP</asp:LinkButton></span></a>
      </div>
      <div id="sign-in-form">
        <form>
          <label for="email">Email</label>
          <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
					
			
          <label for="password">Password</label>
           <asp:TextBox ID="txtpass" TextMode="Password" runat="server" ></asp:TextBox>

          <i id="show-pw" class="fa fa-eye"></i>
          <input id="remember" type="checkbox">
          <label for="remember" id="rlabel">Keep me Signed in</label><br />
          <asp:Button ID="Button1" runat="server" BackColor="#573B8A" Text="Sign In" Width="100px" Height="39px" style="cursor: pointer;" />
        </form>

        <footer>
          <div class="hr"></div>
          <div class="fp"><a href="">Forgot Password?</a></div>       
        </footer>
      </div>
      <%--<div id="sign-up-form">
        <form>
          <label for="username">Username</label>
          <input type="text" name="username">
          <label for="password">Password</label>
          <input id="password1" type="password" name="password">
          <label for="password0">Re-Enter Password</label>
          <input id="password0" type="password" name="password0">
          <input type="submit" name="submit" value="Create Account">
        </form>
      </div>--%>
    </div>
  </div>
  </div>
           </form>
</body>
</html>
