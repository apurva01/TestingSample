<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addproduct.aspx.cs" Inherits="Admin_Addproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 23%;
        }
        .style4
        {
            color: red;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            font-size: x-large;
        }
        .style9
        {
            background-color: #808080;
        }
        .style10
        {
            background-color: #333333;
        }
        .style11
        {
            color: #FFFFFF;
            background-color: #333333;
        }
        .style12
        {
            width: 368px;
            background-color: #808080;
        }
        .style13
        {
            font-size: xx-large;
        }
        .style15
        {
            width: 387px;
            background-color: #808080;
        }
        .style16
        {
            color: white;
            background-color: #808080;
            width: 163px;
        }
        #form1 {
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="view1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>Welcome :<span class="style13"> </span><span class="style4">
        <span class="style13">ADMIN </span></span><span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbsignout" runat="server" CssClass="style5" 
            onclick="lbsignout_Click">Sign out</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;<span class="style6">Choose from below:-</span><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1">
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        Font-Bold="True" ForeColor="White">Women Ethic Wear</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        Font-Bold="True" ForeColor="White">Women Trousers/Jeans</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                        ForeColor="White" OnClick="LinkButton3_Click">Women Tops/Shirts</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" style="font-weight: 700; color: #FFFFFF">Women Footwear</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton5" runat="server" style="font-weight: 700; color: #FFFFFF">Men Shirts/T-Shirts</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" style="font-weight: 700; color: #FFFFFF">Men Trousers/Jeans</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Underline="True" style="color: #FFFFFF">Men Footwear</asp:LinkButton>
                    </strong>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </asp:View>
    <asp:View ID="view2" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <table>
    <tr align="center">
    <td class="style16"><strong>Product_ID</strong></td><td class="style15"><asp:TextBox ID="txtproductid" runat="server" Enabled="false"></asp:TextBox></td>
     </tr>
     <tr align="center"><td class="style16"><strong>&nbsp;&nbsp;&nbsp; Unique_Id</strong></td>
     <td class="style15"><asp:TextBox ID="txtuniqueid" runat="server"></asp:TextBox></td> </tr>

     <tr align="center"><td class="style16"><strong>&nbsp;&nbsp;&nbsp; Product_Name</strong></td>
     <td class="style15"><asp:TextBox ID="txtproductname" runat="server"></asp:TextBox></td> </tr>
     <tr align="center"><td class="style16"><strong>&nbsp;&nbsp; Product_Desc</strong></td>
     <td class="style15"><asp:TextBox ID="txtproductdesc" runat="server" TextMode="MultiLine" Width="153px"></asp:TextBox></td> </tr>
     
     
     <tr align="center">
     <td class="style16">
         <strong>Price </strong>
     </td>
      <td class="style15"><asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td>
     </tr>
     <tr align="center">
     <td class="style16">
         <strong>Brand </strong>
     </td>
      <td class="style15"><asp:TextBox ID="txtbrand" runat="server"></asp:TextBox></td>
     </tr>
     <tr align="center">
     <td class="style16">
         <strong>Image </strong>
     </td>
      <td class="style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="txtimage" runat="server" /></td>
     </tr>
     <tr>
     <td colspan="2" class="style9">
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" 
             CssClass="style10" Font-Bold="True" ForeColor="White" Height="32px" 
             Width="57px" />
         &nbsp;
     <strong>
         <asp:Button ID="btnupdate" runat="server" CssClass="style11" Font-Bold="True" 
             OnClick="btnupdate_Click" Text="Update" Height="32px" Width="65px" />
         </strong>&nbsp;&nbsp;<asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" OnClientClick="return confirm('Are you sure you want to delete this record?')" Text="Delete" 
             CssClass="style10" Font-Bold="True" ForeColor="White" Height="32px" 
             Width="65px" />
         &nbsp;
     <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" 
             CssClass="style11" Font-Bold="True" Height="32px" Width="65px" />
         <br />
     </td>
     </tr>
    </table><br />
    
    <asp:GridView ID="productdetails" DataKeyNames="pro_id" 
            AutoGenerateColumns="False"
             Width="500px" OnSelectedIndexChanged="productdetails_SelectedIndexChanged"
            runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  >
        <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" ForeColor="White" Font-Bold="true" Height="30" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
    <asp:TemplateField >
    <ItemTemplate>
    <asp:LinkButton ID="lbtnselect" runat="server" CommandName="Select" Text="Select"></asp:LinkButton>
    </ItemTemplate>
    
    </asp:TemplateField>
        <asp:TemplateField HeaderText="Unique_id">
    <ItemTemplate><asp:Label ID="lbluniqueid" Text='<%# Eval("Unique_id") %>' runat="server"></asp:Label></ItemTemplate>
   
    
    </asp:TemplateField>
    <%--<asp:TemplateField HeaderText="Product_Desc">
    --%>
    <asp:TemplateField HeaderText="Product_Name">
    <ItemTemplate><asp:Label ID="lblproductname" Text='<%# Eval("pro_name") %>' runat="server"></asp:Label></ItemTemplate>
   
    
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Product_Desc">
    <ItemTemplate><asp:Label ID="lblproductdesc" Text='<%# Eval("pro_desc") %>' runat="server"></asp:Label></ItemTemplate>
   
    
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="Price">
    <ItemTemplate><asp:Label ID="lblprice" Text='<%# Eval("price") %>' runat="server"></asp:Label></ItemTemplate>
   
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Brand">
    <ItemTemplate><asp:Label ID="lblbrand" Text='<%# Eval("brand") %>' runat="server"></asp:Label></ItemTemplate>
   
    
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Image">
    <ItemTemplate>
        <asp:Image ID="Image1" length="100" Width="100" runat="server" ImageUrl='<%# Bind("pro_image") %>' />
        </ItemTemplate>
    </asp:TemplateField>
    </Columns>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
     </asp:View>
    <asp:View ID="view3" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button" />
        </asp:View>
    <asp:View ID="view4" runat="server">
        <br />
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Button" />
        <br />
        <br />
        </asp:View>
    <asp:View ID="view5" runat="server"></asp:View>
    <asp:View ID="view6" runat="server"></asp:View>
    
    </asp:MultiView>
    </form>
</body>
</html>
