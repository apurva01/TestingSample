<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup1.aspx.cs" Inherits="signup1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style11
        {
            font-family: "Arial Unicode MS";
        }
        .style13
        {
            background-color: #333333;
            color: #666666;
        }
        .style14
        {
            width: 900px;
        }
        .style15
        {
            width: 307px;
            background-color: #C0C0C0;
        }
        .style16
        {
            width: 583px;
            font-family: "Arial Unicode MS";
            background-color: #C0C0C0;
        }
        .style17
        {
            color: #666666;
        }
        .style18
        {
            font-family: "Arial Unicode MS";
            color: #666666;
        }
        .style19
        {
            background-color: #C0C0C0;
        }
        .style20
        {
            font-family: "Arial Unicode MS";
            color: #000000;
        }
        .style21
        {
            color: #000000;
        }
        .style22
        {
            font-family: Default;
        }
        .style23
        {
            background-color: #333333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="900" class="style14">
        <tr>
            <td colspan="2" class="style19">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/img/0.jpg" Width="100%"/>
                  
                   <asp:ScriptManager ID="ScriptManager1" runat="server">
               
                   </asp:ScriptManager>
                  
                   <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1500">
                   </asp:Timer>
                  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
               </ContentTemplate>
               
              
                </asp:UpdatePanel>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/index.jpg" 
                    Width="297px" CssClass="style17" />
                </td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
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
            <td class="style15">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><strong><span class="style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <span class="style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender</span></strong><span 
                    class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></td>
            <td class="style16">
                <asp:RadioButtonList 
                    ID="RdoGender" runat="server" Font-Bold="True" CellPadding="0" 
                    CellSpacing="0" Height="27px" Width="100px" 
                    onselectedindexchanged="RdoGender_SelectedIndexChanged">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="RdoGender" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span> 
                <span 
                    class="style11"><span class="style21">&nbsp;<strong>Mobile No.</strong></span><span 
                    class="style17">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="10" Height="24px" 
                    Width="264px" CssClass="style17"></asp:TextBox>
                <span class="style17">&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" 
                    CssClass="style22" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Digit should be b/w 7 to 9" 
                    ValidationExpression="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                </span></span></td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
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
            <td class="style19" colspan="2">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><strong><span class="style20">Confirm Pwd</span><span class="style18">&nbsp;&nbsp;&nbsp; &nbsp; </span> </strong> 
                <span class="style17">&nbsp;&nbsp;&nbsp; </span><span class="style11">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" TextMode="Password" 
                    Width="265px" CssClass="style17"></asp:TextBox>
                </span>
                <span class="style17">&nbsp;</span><asp:CompareValidator ID="CompareValidator1" 
                    runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Please enter same password"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><span class="style11">
                <span class="style17"><strong>&nbsp;</span><span class="style21">Security Ques</span><span 
                    class="style17"> &nbsp;&nbsp; &nbsp;&nbsp; </span>
                </strong>
                <asp:DropDownList ID="DD1" runat="server" Height="53px" Width="267px" 
                    CssClass="style17">
                    <asp:ListItem>Where do you live.</asp:ListItem>
                    <asp:ListItem>What is your fav food</asp:ListItem>
                    <asp:ListItem>What is your fav place</asp:ListItem>
                    <asp:ListItem>What is your school name</asp:ListItem>
                    <asp:ListItem>What is your best friend name.</asp:ListItem>
                </asp:DropDownList>
                <br class="style17" />
                </span>
                <span class="style17">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><span class="style11">
                <strong><span class="style21">Security Ans</span><span class="style17"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="10" Height="24px" 
                    Width="265px" CssClass="style17"></asp:TextBox>
                </strong>
                </span>
                <span class="style17">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><asp:Button ID="Button1" runat="server" CssClass="style13" Font-Bold="True" 
                    ForeColor="White" Height="36px" Text="Submit" Width="89px" 
                    onclick="Button1_Click" />
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="style23" Font-Bold="True" 
                    ForeColor="White" Height="35px" onclick="Button2_Click" Text="Reset" 
                    Width="89px" />
                <br />
                </span></td>
        </tr>
    </table>
    </form>
</body>
</html>
