<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator Assignment</title>
    <script src="JavaScript.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CALCULATOR</h1>
            <asp:Label ID="numberOne" Text="x:" runat="server">
            <asp:TextBox ID="firstBox" runat="server" onkeypress="return Number(event);" />
            </asp:Label><br />
        </div>
        <br />
        <div>
            <asp:Label ID="numberTwo" Text="y:" runat="server">
            <asp:TextBox ID="secondBox" runat="server" onkeypress="return Number(event);" />
            </asp:Label>
        </div>

        <div>
             <p>Select an Operator</p>  
          
            <asp:DropDownList ID="DropDownList" runat="server" >  
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem Value="+">Addition(+) </asp:ListItem>  
            <asp:ListItem Value="-">Subtraction(-)</asp:ListItem>  
            <asp:ListItem Value="*">Multiplication(*)</asp:ListItem>  
            <asp:ListItem Value="/">Division(/)</asp:ListItem>  
            
            </asp:DropDownList>  
        </div>
        
        <br />  
        <asp:Button ID="Button1" runat="server" onclientclick="return validate()" Text="Calculate" OnClick="Calculation" />
        <br /> 
        <br />
        <asp:label runat="server" ID="resultLabel" Text="Result" ForeColor="Green"></asp:label>
    </form>
</body>
</html>


