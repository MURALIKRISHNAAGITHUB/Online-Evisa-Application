<%@ Page Title="" Language="C#" MasterPageFile="~/visa.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineVisaApplictaion.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5">
     <div class="card">
         <div class="card-header">
                <h2 class="text-center">User Registration</h2>
                <a href="Signup.aspx">Signup.aspx</a>   
         </div>
         <div class="card-body">
             <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <div class="form-group row">
                <label  class="col-sm-3 col-form-label">Name:</label>
         
                <div class="col-sm-9">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtName" ControlToValidate="txtName" runat="server" ErrorMessage="Please Enter Name" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <label  class="col-sm-3 col-form-label">Phone Number:</label>
                <div class="col-sm-9">
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" placeholder="Enter your phone number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtPhonenumber" ControlToValidate="txtPhoneNumber" runat="server" ErrorMessage="Please Enter the Mobile Number" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rgtxtPhoneNumber" ControlToValidate="txtPhoneNumber" ValidationExpression="^\d{10}$" runat="server" ErrorMessage="Please Enter the valid Mobile Number" CssClass="text-danger"></asp:RegularExpressionValidator>
 
                </div>
            </div>
             <div class="form-group row">
                  <label  class="col-sm-3 col-form-label">Email ID:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmailID" CssClass="form-control" placeholder="Enter the Email iD" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfxtxtEmailID" ControlToValidate="txtEmailID" runat="server" ErrorMessage="Please Enter the EmailID" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  runat="server" ErrorMessage="Please Enter the Valid Email ID" CssClass="text-danger"></asp:RegularExpressionValidator>
                        </div>
                </div>
                <div class="form-group row">
      
                <label class="col-sm-3 col-form-label">Username:</label>
          
                <div class="col-sm-9">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtUsername" CssClass="text-danger" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="form-group row">
    
                <label  class="col-sm-3 col-form-label">Password:</label>
         
                <div class="col-sm-9">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" ControlToValidate="txtPassword" runat="server" ErrorMessage="Please Enter the Password"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="form-group row">
    
                    <label  class="col-sm-3 col-form-label">Confirm Password:</label>
         
                    <div class="col-sm-9">
                    <asp:TextBox ID="txtcnfmpwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your confirm password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" ControlToValidate="txtcnfmpwd" runat="server" ErrorMessage="Please Enter the Confirm Password"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtcnfmpwd" ControlToCompare="txtPassword" runat="server" ErrorMessage="Please ENetr the same passwor and confirm password" CssClass="text-danger"></asp:CompareValidator>
                    </div>
                </div>
              <div class="form-group row">
     
 <label for="txtSecurityQuestion" class="col-sm-3 col-form-label">Security Question:</label>
       
 <div class="col-sm-9">
 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
 <asp:ListItem Value="">Select</asp:ListItem>
 <asp:ListItem Value="What is first School Name?" Text="What is first School Name?"></asp:ListItem>
 <asp:ListItem Value="What is your pet animal?" Text="What is your pet animal?"></asp:ListItem>
 <asp:ListItem Value="What is first Maiden Name?" Text="What is first Maiden Name?"></asp:ListItem>
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" ControlToValidate="DropDownList1"  runat="server" ErrorMessage="Please Select the Security Question"></asp:RequiredFieldValidator>
 </div>
 </div>
<div class="form-group row">
    
<label  class="col-sm-3 col-form-label">Answer:</label>
       
<div class="col-sm-9">
<asp:TextBox ID="txtAnswer1" runat="server"  CssClass="form-control" placeholder="Enter your Answer"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvtxtAnswer" CssClass="text-danger" ControlToValidate="txtAnswer1" runat="server" ErrorMessage="Please Enter the Answer"></asp:RequiredFieldValidator>
</div>
</div>

 </div>
             <div class="card-footer text-center">
    <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign Up"  CssClass="btn btn-primary" />
    </div>
         </div>
         </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
