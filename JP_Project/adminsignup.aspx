<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminsignup.aspx.cs" Inherits="adminsignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style19
        {
            background-color: #C0C0C0;
        }
        .style17
        {
            color: #666666;
        }
        .style21
        {
            color: #000000;
        }
        .style20
        {
            font-family: "Arial Unicode MS";
            color: #000000;
        }
        .style18
        {
            font-family: "Arial Unicode MS";
            color: #666666;
        }
        
        .style11
        {
            font-family: "Arial Unicode MS";
        }
        .style14
        {
            width: 900px;
        }
        .style13
        {
            background-color: #333333;
            color: #666666;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="900" class="style14">
        <tr>
            <td class="style19">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><span class="style21">&nbsp;</span><span class="style20"><strong>Email ID</strong></span><span 
                    class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="317px" 
                    CssClass="style17"></asp:TextBox>
                <span class="style17">&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="&quot;ex@example.com&quot;" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </span></td>
        </tr>
        <tr>
            <td class="style19">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <span class="style11"><span class="style17"><strong>&nbsp;</span><span 
                    class="style21">Password</span><span class="style17">&nbsp;&nbsp;&nbsp;
                </span> </strong><span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span><asp:TextBox 
                    ID="TextBox2" runat="server" Height="24px" TextMode="Password" 
                    Width="266px" CssClass="style17"></asp:TextBox>
                </span><span class="style17">&nbsp;</span><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" 
                    CssClass="style11" ErrorMessage="*"></asp:RequiredFieldValidator>
                
                </asp:RegularExpressionValidator>
                
            </td>
        </tr>
        <tr>
            <td class="style19">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><strong><span class="style20">Confirm Pwd</span><span class="style18">&nbsp;&nbsp;&nbsp; &nbsp; </span> </strong> 
                <span class="style17">&nbsp;&nbsp;&nbsp; </span><span class="style11">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" TextMode="Password" 
                    Width="265px" CssClass="style17"></asp:TextBox>
                </span>
                <span class="style17">&nbsp;</span><asp:CompareValidator ID="CompareValidator1" 
                    runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Please enter same password"></asp:CompareValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" CssClass="style13" Font-Bold="True" 
                    ForeColor="White" Height="36px" Text="Submit" Width="89px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
