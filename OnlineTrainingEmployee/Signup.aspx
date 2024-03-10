<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Signup.aspx.vb" Inherits="OnlineTrainingEmployee.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        $(document).ready(function () {

            var Validation = (function () {
                var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                var digitReg = /^\d+$/;

                var isEmail = function (email) {
                    return emailReg.test(email);
                };
                var isNumber = function (value) {
                    return digitReg.test(value);
                };
                var isRequire = function (value) {
                    return value == "";
                };
                var countChars = function (value, count) {
                    return value.length == count;
                };
                var isChecked = function (el) {
                    var hasCheck = false;
                    el.each(function () {
                        if ($(this).prop('checked')) {
                            hasCheck = true;
                        }
                    });
                    return hasCheck;
                };
                return {
                    isEmail: isEmail,
                    isNumber: isNumber,
                    isRequire: isRequire,
                    countChars: countChars,
                    isChecked: isChecked
                };
            })();

            var required = $('form').find('[data-required]');
            var numbers = $('form').find('[data-number]');
            var emails = $('form').find('[data-email]');
            var once = $('form').find('[data-once]');
            var radios = $('.form-item-triple');
            var groups = [];
            radios.each(function () {
                groups.push($(this).find('[data-once]'));
            });
            var counts = $('form').find('[data-count]');

            $('#submit').on('click', function () {
                required.each(function () {
                    if (Validation.isRequire($(this).val())) {
                        $(this).siblings('small.errorReq').show();
                    }
                });
                emails.each(function () {
                    if (!Validation.isEmail($(this).val())) {
                        $(this).siblings('small.errorEmail').show();
                    }
                });
                $.each(groups, function () {
                    if (!Validation.isChecked($(this))) {
                        $(this).parents('.form-item').find('small.errorOnce').show();
                    }
                });
                numbers.each(function () {
                    if (!Validation.isNumber($(this).val())) {
                        $(this).siblings('small.errorNum').show();
                    }
                });
                counts.each(function () {
                    if (!Validation.countChars($(this).val(), $(this).data('count'))) {
                        $(this).siblings('small.errorChar').show();
                    }
                });
            });

            required.on('keyup blur', function () {
                if (!Validation.isRequire($(this).val())) {
                    $(this).siblings('small.errorReq').hide();
                }
            });
            emails.on('keyup blur', function () {
                if (Validation.isEmail($(this).val())) {
                    $(this).siblings('small.errorEmail').hide();
                }
            });
            once.on('change', function () {
                $.each(groups, function (i) {
                    if (Validation.isChecked(groups[i])) {
                        groups[i].parents('.form-item').find('small.errorOnce').hide();
                    }
                });
            });
            numbers.on('keyup blur', function () {
                if (Validation.isNumber($(this).val())) {
                    $(this).siblings('small.errorNum').hide();
                }
            });
            counts.on('keyup blur', function () {
                if (Validation.countChars($(this).val(), $(this).data('count'))) {
                    $(this).siblings('small.errorChar').hide();
                }
            });

        });
    </script>
    <style>@import url('https://fonts.googleapis.com/css?family=PT+Sans:400,700');
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    box-sizing: border-box;
}
*, *:before, *:after {
    padding: 0;
    box-sizing: inherit;
            margin-right: 0;
            margin-top: 0;
            margin-bottom: 0;
        }
body {
    font-family: 'PT Sans', sans-serif;
    font-size: 16px;
    line-height: 1.428571429;
    font-weight: 400;
    color: #fff;
}
.row{
    display: flex;
    align-items: center;
    justify-content: center;
}
.section{
    background-color: #3D4067;
    position: relative;
    overflow: hidden;
    display: flex;
    justify-content: center;
    flex-direction: column;
}
header,
main,
footer{
    display: block;
    position: relative;
    z-index: 1;
}
header{
    padding: 48px;
    @media (max-width: 440px){
        padding: 48px 24px;
    }
    >h3{
        font-size: 44px;
        font-weight: 700;
        margin-bottom: 8px;
    }
    >h4{
        font-size: 22px;
        font-weight: 400;
        letter-spacing: 1px;
    }
}
main{
    flex: 1;
    padding: 0 48px;
    @media (max-width: 440px){
        padding: 0 24px;
    }
}
footer{
    width: 100%;
    background-color: #524F81;
    padding: 16px;
    align-self: center;
    text-align: center;
    margin-top: 32px;
    a{
        color: #fff;
        font-weight: 700;
        text-decoration: none;
        &:hover{
            text-decoration: underline;
        }
    }
}
form{
    height: 100%;
    display: flex;
    justify-content: center;
    flex-direction: column;
}
.label{
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
small{
    display: none;
    &.errorOnce{
        margin-top: 2px;
    }
}
.form-item{
    input[type="text"],
    input[type="number"],
    input[type="email"]{
        display: block;
        color: #E2E3E8;
        font-size: 16px;
        width: 100%;
        background-color: transparent;
        border: none;
        border-bottom: 1px solid #75759E;
        padding: 8px 0;
        appearance: none;
        outline: none;
    }
    small{
        /*letter-spacing: 1px;*/
    }
    i{
        font-size: 12px;
        color: red;
    }
}
.box-item{
    height: px;
    margin-bottom: 16px;
}
.form-item-double{
    display: flex;
    .form-item{
        flex: 1 1 auto;
    }
    .form-item:nth-child(1){
        padding-right: 16px;
    }
    .form-item:nth-child(2){
        padding-left: 16px;
    }
}
.form-item-triple{
    display: flex;
    align-items: center;
    padding-top: 6px;
    .radio-label{
        flex: 1 1 auto;
        text-align: left;
        label{
            display: inline-block;
            vertical-align: middle;
        }
    }
    .form-item{
        flex: 3 1 auto;
        text-align: center;
        margin: 0;
        label,input[type="radio"]{
            display: inline-block;
            vertical-align: middle;
            margin: 0 4px;
        }
    }
}

::-webkit-input-placeholder { /* WebKit, Blink, Edge */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
    opacity:  1;
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
    opacity:  1;
}
:-ms-input-placeholder { /* Internet Explorer 10-11 */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
::-ms-input-placeholder { /* Microsoft Edge */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
.submit{
    display: inline-block;
    font-size: 18px;
    font-weight: 700;
    letter-spacing: 1px;
    padding: 8px 48px;
    margin-top: 32px;
    border: 2px solid #75759E;
    border-radius: 20px;
    cursor: pointer;
    transition: all ease .2s;
    &:hover{
        background-color: #EDA261;
        border: 2px solid #EDA261;
    }
}
.wave{
  position: absolute;
  top: 0;
  left: 50%;
  width: 800px;
  height: 800px;
  margin-top: -600px;
  margin-left: -400px;
  background: #252E45;
  border-radius: 40%;
  animation: shift 20s infinite linear;
  z-index: 0;
}
@keyframes shift{
  from{
    transform: rotate(360deg);
  }
}
.submit-container {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.submit {
    display: inline-block;
    font-size: 18px;
    font-weight: 700;
    letter-spacing: 1px;
    padding: 8px 48px;
    border: 2px solid #75759E;
    border-radius: 20px;
    cursor: pointer;
    transition: all ease .2s;
}

.submit:hover {
    background-color: #EDA261;
    border: 2px solid #EDA261;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <di>
    <div class="row">
  <section class="section">
    <header>
      <h3>Register</h3>
      <h4>Please fill your information bellow</h4>
    </header>
    <main>
      <form>
        <div class="form-item box-item">
         <asp:Label ID="Label1" runat="server" Text="Company  "></asp:Label>
            <asp:DropDownList runat="server" ID="empdeComid" CssClass="form-item" AppendDataBoundItems="true" AutoPostBack="True">
                                
                            </asp:DropDownList>
        </div>
        <div class="form-item box-item">
         
             <asp:TextBox ID="txtFn" runat="server" placeholder="First Name" Height="21px" Width="315px"></asp:TextBox>
          
        </div>
           <div class="form-item box-item">

           
               <asp:TextBox ID="txtln" runat="server" placeholder="Last Name" Height="21px" Width="315px"></asp:TextBox>
 </div>
          <div class="form-item box-item">

           
  <asp:TextBox ID="txtage" runat="server"  placeholder="Age" Height="21px" Width="315px"></asp:TextBox>
 </div>
        <div class="form-item box-item">
          <div class="form-item-triple">
            <div class="radio-label"> 
              <label class="label">Gender</label>
            </div>
            <div class="form-item"> 
              <asp:RadioButton ID="Rb1" runat="server" Text="Male" GroupName="rr" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rb2" runat="server" Text="Female" GroupName="rr" />
              
            </div>
           
          </div>
          <small class="errorOnce"><i class="fa fa-asterisk" aria-hidden="true"></i> choose at least one</small>
        </div>
       
        
        <div class="form-item-double box-item">
          <div class="form-item ">
<asp:TextBox ID="txtemail1" runat="server" placeholder="Email" Height="21px" Width="315px"></asp:TextBox>
            
          </div>
          <div class="form-item">
                                <asp:TextBox ID="emppass" runat="server"  Textmode="Password" placeholder="Password" Height="21px" Width="315px"></asp:TextBox>
          </div>
        </div>
       <div class="form-item box-item">
         <asp:Label ID="Label7" runat="server" Text="Designation  "></asp:Label>
            <asp:DropDownList runat="server" ID="empdesigid" CssClass="form-item" AppendDataBoundItems="true" AutoPostBack="True">
                                
                            </asp:DropDownList>
        </div>
           <div class="form-item box-item">
         <asp:Label ID="Label8" runat="server" Text="Department  "></asp:Label>
               <asp:DropDownList runat="server" ID="empdepartid" CssClass="form-item" AppendDataBoundItems="true" AutoPostBack="True">
                                
                            </asp:DropDownList>
            
        </div>
           <asp:Label ID="Label10" runat="server" Text="Qualification  "></asp:Label>
             <%--<asp:DropDownList ID="empquaid" runat="server"  Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>--%>
          <asp:DropDownList runat="server" ID="empquaid" CssClass="form-item" AppendDataBoundItems="true" AutoPostBack="True">
                                
                            </asp:DropDownList>
        </div>
        <div class="form-item">
     <asp:Button ID="Btnreg" runat="server" BackColor="#66CCFF" BorderColor="Black" Text="Sign Up" style="margin-left: 567px" Width="387px" />
        </div>
      </form>
    </main>
    <footer>
      <p>Already have an account? <a href="EmpSignin.aspx">Login here</a></p>
    </footer>
    <i class="wave"></i>
  </section>
</div>
    </div>
    </form>
</body>
</html>
