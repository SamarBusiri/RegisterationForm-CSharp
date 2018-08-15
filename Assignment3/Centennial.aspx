<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Centennial.aspx.cs" Inherits="Assignment3.Centennial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Change title logo -->
    <title>Centennial</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
        #Submit1 {
            width: 104px;
        }
        #btnRegister {
            width: 120px;
        }
        #btnClear {
            width: 121px;
        }
        .auto-style2 {
            width: 70px;
            height: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="auto-style1"><strong style="font-size: x-large">Member Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <!-- Change page logo -->
                <img class="auto-style2" src="Logo/CentennialLogo.jpg" /></p>
            <h5>Please complete the following fields:</h5>
        </div>
        <!-- First Name (mandatory) -->
        First Name<span class="auto-style2" style="color: #FF0000">*</span>:&nbsp;&nbsp;
        <asp:TextBox ID="fName" runat="server"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="fName" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <!-- Last Name (mandatory) -->
        Last Name<span class="auto-style2" style="color: #FF0000">*</span>:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="lName" runat="server"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="lName" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <!-- Address (mandatory) -->
        Address:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="address" runat="server" Width="289px"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="address" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <!-- City (mandatory) -->
        City:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="city" runat="server"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="city" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <!-- Province (mandatory) and assigned to Province_TextChange method to chnage the input text to uppercase-->
        Province:<span class="auto-style2" style="color: #FF0000">*</span>
        <asp:TextBox ID="province" runat="server" Width="37px" OnTextChanged="province_TextChanged" 
            MaxLength="2"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="province" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <!-- Pastol Code (mandatory) -->
        Postal Code:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;&nbsp;
        <asp:TextBox ID="postalCode" runat="server"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="postalCode" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <!--check if the user input is following the regular expression of Canadian Pastol code otherwise show error message-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="postalCode" 
            ErrorMessage="Invalid Pastol Code!"
            ForeColor="#CC0000" 
            ValidationExpression="[a-zA-Z][0-9][a-zA-Z] ?[0-9][a-zA-Z][0-9]">
            </asp:RegularExpressionValidator>
        <br />
        <br />
        <!-- Age (mandatory) -->
        Age:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;&nbsp;
        <asp:TextBox ID="age" runat="server" Width="43px"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="age" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <!--check if the user age range between 18 to 120 otherwise show error message-->
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="age" 
            ErrorMessage="Please enter age between 18 to 120!" 
            ForeColor="#CC0000" 
            MaximumValue="120" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <!-- Password (mandatory) -->
        Password:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="password" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <!--check if the user input is following the regular expression of passwords otherwise show error message-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="password" 
            ErrorMessage="Passwords must have at least 6 characters and must contain at least one digit and one upper-case character." 
            ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <!-- Confirm Password (mandatory) -->
        Confirm Passwod:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;
        <asp:TextBox ID="rePassword" runat="server"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="rePassword" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <!--check if the rePassword matches chosen password otherwise show error message-->
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="password" ControlToValidate="rePassword" 
            ErrorMessage="Passwords do not match!" ForeColor="#CC0000"></asp:CompareValidator>
        <br />
        <br />
        <!-- Email (mandatory) -->
        Email:<span class="auto-style2" style="color: #FF0000">*</span>&nbsp;
        <asp:TextBox ID="email" runat="server" Width="227px"></asp:TextBox>
        <!--check if the textbox is blank otherwise show error message-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="email" Display="Dynamic" ErrorMessage="This field is requierd!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <!--check if the user input is following the regular experssion of the email otherwise show error message-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
            runat="server" ControlToValidate="email" ErrorMessage="Invalid Email" 
            ForeColor="#CC0000" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
        </asp:RegularExpressionValidator>
        <br />
        <br />
        <!--Alternative Email-->
        Alternative Email:&nbsp;
        <asp:TextBox ID="alterEmail" runat="server" Width="227px"></asp:TextBox>
        <br />
        <br />
        <!--Phone -->
        Phone:&nbsp;
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <br />
        <br />
        <!--Enter another member check box-->
        Enter another member?
        <asp:CheckBox ID="CheckBox" runat="server" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <!--Register button assigned to register_Click method-->
        <asp:Button ID="register" runat="server" OnClick="register_Click" Text="Register" Width="105px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp;&nbsp;
        <!--Clear Button to clear all the text boxs-->
        <asp:Button ID="clear" runat="server" Text="Clear" Width="100px" OnClick="clear_Click" />
        <br />
        @ Copyright your student info here</form>
</body>
</html>
