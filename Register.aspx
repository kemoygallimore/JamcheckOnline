﻿<%@ Page Title="" Language="C#" MasterPageFile="~/JamCheck.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyfirstWebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        .Form-center{
            width: max-content;
            margin: 0 auto;
            min-height: 60vh;
            padding-top: 5em;
            padding-bottom:5em;
        }
        .Half{
            width:50%;
            padding:5px 0 5px 0;
        }
        .right{
            text-align:right;
            padding-right:8px;
        } 
        .button-area{
            padding-top:20px;
        }
        .buttonlink{
            text-decoration:none;
            color:black;
            padding:1px 0;
            background-color:#F0F0F0;
            font-size:13px;
            font-family:Arial;
            padding: 3px 25px;
            border: 2px solid black;
        }
        .register-title{
            color:White;
            background-color:#00CC00;
            font-size:x-large;
            font-weight:bold;
            font-family: 'Segoe UI';
            padding:8px 0px;
            border-radius:20px 20px 0 0;
            text-align:center;
        }
        .register_labels{
           color:#00CC00;
           font-family:'Segoe UI';
           font-weight:700;
        }
        .register_boxes{
            padding:2px 5px;
        }
    </style>
    
    <div class="Form-center">
        <div style="width:480px;background:#ffffbb;border-radius:20px;">
            <asp:Panel ID="Panel1" runat="server">

                <h2 class="register-title">Create Account</h2>
                <table style="padding: 20px 40px 0px 40px">
                    <tbody>
                        <tr>
                            <td class="Half right">
                                <asp:Label ID="Label1" runat="server" Text="First Name" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="fnametxtbx" runat="server" Font-Size="13pt" Width="170px" Font-Names="Arial Narrow" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ErrorMessage="First Name is Required" ControlToValidate="fnametxtbx">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="Half right">
                                <asp:Label ID="Label14" runat="server" Text="Last Name" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="lnametxtbx" runat="server" Font-Size="13pt" Width="170px" Font-Names="Arial Narrow" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="lnametxtbx" ErrorMessage="Last Name is required">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                        
                            <td class="Half right ">
                                <asp:Label ID="Label13" runat="server" Text="TRN #" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="TRNtxtbx" runat="server" Font-Size="13pt" Width="170px" TextMode="Number" Font-Names="Arial Narrow" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="TRNRequired" runat="server" ControlToValidate="TRNtxtbx" ErrorMessage="TRN is required">*</asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr>
                        
                            <td class="Half right " >
                                <asp:Label ID="Label12" runat="server" Text="D.O.B" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="DOBtxtbx" placeholder="DD/MM/YYYY" runat="server" Width="170px" TextMode="Date" Font-Names="Arial Narrow" Font-Size="13pt" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="DOBRequired" runat="server" ControlToValidate="DOBtxtbx" ErrorMessage="Date of Birth is missing" Visible="False">*</asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr>
                        
                            <td class="Half right ">
                                <asp:Label ID="Label11" runat="server" Text="Email" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="Eamiltxtbx" runat="server" Font-Size="13pt" Width="170px" TextMode="Email" Font-Names="Arial Narrow" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Eamiltxtbx" ErrorMessage="Email is required">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                        
                            <td class="Half right ">
                                <asp:Label ID="Label10" runat="server" Text="Password" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="Passwordtxtbx" runat="server" Font-Size="13pt" Width="170px" Font-Names="Arial Narrow" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Passwordtxtbx" ErrorMessage="Password is cannot be empty">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                        
                            <td class="Half right ">
                                <asp:Label ID="Label9" runat="server" Text="Confirm Password" Font-Size="14pt" CssClass="register_labels"></asp:Label>
                            </td>
                            <td class="Half">
                                <asp:TextBox ID="PasswordConftxtbx" runat="server" Font-Size="13pt" Width="170px" Font-Names="Arial Narrow" CssClass="register_boxes"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordConfirmation" runat="server" ControlToValidate="PasswordConftxtbx" ErrorMessage="Passwords do not match">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                <table style="width:100%">
                    <tbody>
                        <tr>
                            <td style="text-align:center" class="half button-area">
                                <asp:Button ID="Testbtn" runat="server" Text="Test Button" OnClick="Testbtn_Click1" BackColor="#00CC00" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Segoe UI" Font-Size="Large" ForeColor="White" Font-Bold="True" Width="250px" />
                                <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#00CC00" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Segoe UI" Font-Size="Large" ForeColor="White" Font-Bold="True" Width="250px" />
                                <p style="text-align:center;margin-top:10px">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Already have an account? (Click Here)</asp:HyperLink>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </asp:Panel>
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="You have to be 18 or older to be come a member." Type="Date" ControlToValidate="DOBtxtbx"></asp:RangeValidator><br />
            <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToCompare="Passwordtxtbx" ControlToValidate="PasswordConftxtbx" ErrorMessage="Passwords do not match"></asp:CompareValidator><br />
            <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Eamiltxtbx" Visible="True" ErrorMessage="Incorrect Email Format"></asp:RegularExpressionValidator><br />
            <asp:RegularExpressionValidator ID="TRNFormat" runat="server" ValidationExpression="\d{3}-\d{3}-\d{3}" ControlToValidate="TRNtxtbx"></asp:RegularExpressionValidator>
                            
        </div>
        <asp:Panel ID="ConfirmationScreen" runat="server" Visible="False">
            <div>
                <h2 style="text-align:center;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;padding:6em 0">Account Successfully Created</h2>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
