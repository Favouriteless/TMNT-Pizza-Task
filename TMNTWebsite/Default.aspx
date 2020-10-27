<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TMNTWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 96px;
            height: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="title" style="font-size: xx-large">
            <img alt="" class="auto-style1" src="Assets/ninjaTeam.bmp" />
            <asp:Label runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Text="TMNT Pizza"></asp:Label>
        </div>
        <div id="body">
            <asp:RadioButton ID="smallRadioButton" runat="server" AutoPostBack="True" Checked="True" GroupName="pizzaSize" OnCheckedChanged="Size_Changed" Text="Leonardo Size (10&quot;) - £10" />
            <br />
            <asp:RadioButton ID="mediumRadioButton" runat="server" AutoPostBack="True" GroupName="pizzaSize" OnCheckedChanged="Size_Changed" Text="Donatello Size (13&quot;) - £13" />
            <br />
            <asp:RadioButton ID="largeRadioButton" runat="server" AutoPostBack="True" GroupName="pizzaSize" OnCheckedChanged="Size_Changed" Text="Michalangelo Size (16&quot;) - £16" />
            <br />
            <br />
            <asp:RadioButton ID="thinRadioButton" runat="server" AutoPostBack="True" Checked="True" GroupName="crustType" OnCheckedChanged="Crust_Changed" Text="Thin Crust" />
            <br />
            <asp:RadioButton ID="deepRadioButton" runat="server" AutoPostBack="True" GroupName="crustType" OnCheckedChanged="Crust_Changed" Text="Deep Pan (+£2)" />
            <br />
            <br />
            <asp:CheckBox ID="pepperoniCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="Toppings_Changed" Text="Pepperoni (+£1.50)" />
            <br />
            <asp:CheckBox ID="onionsCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="Toppings_Changed" Text="Onions (+£0.75)" />
            <br />
            <asp:CheckBox ID="greenPeppersCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="Toppings_Changed" Text="Green Peppers (+£0.50)" />
            <br />
            <asp:CheckBox ID="redPeppersCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="Toppings_Changed" Text="Red Peppers (+£0.75)" />
            <br />
            <asp:CheckBox ID="anchoviesCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="Toppings_Changed" Text="Anchovies (+£2)" />
            <br />
            <br />
            <asp:Label runat="server" Font-Bold="True" Font-Names="helvetica" Font-Size="Large" Text="Raphael's"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="helvetica" Font-Size="Large" ForeColor="Red" Text="Special Deal"></asp:Label>
            <br />
            <br />
            Save £2.00 when you add Pepperoni, Green Peppers and Anchovies OR Pepperoni, Red Peppers and Onions to your pizza<br />
            <br />
            <br />
            Total:
            <asp:Label ID="totalLabel" runat="server"></asp:Label>
            <br />
            <asp:Button ID="purchaseButton" runat="server" OnClick="PurchaseButton" Text="Purchase" />
            <br />
            <br />
            <asp:Label ID="doneLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
