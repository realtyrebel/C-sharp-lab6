<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calculator.aspx.cs" Inherits="calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab6</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <h1>Statistical Calculator</h1>
            </div>
            <div class="auto-style2">
                Enter three numbers and click Submit button to find out the statistics.
            </div>
            <div class="row">

                <table class="auto-style3">
                    <tr>
                        <td class="auto-style1">First Number:</td>
                        <td>
                            <asp:TextBox ID="Number1" runat="server"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Second Number:</td>
                        <td><asp:TextBox ID="Number2" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Third Number:</td>
                        <td><asp:TextBox ID="Number3" runat="server"></asp:TextBox></td>
                    </tr>
                </table>

            </div>
            <div class="row">                
                <asp:Button ID="Button1" runat="server" Text="Calculate Stats" OnClick="CalculateStats" Width="254px" />
            </div>
            
            <hr />

            <div class="row">
                <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                
            </div>
            <div class="row">
                <h3>Statistics for the numbers you entered:</h3>
            </div>
            <div class="row">
                Maximum: <asp:Label ID="LabelMaximum" runat="server" Text=""></asp:Label>
            </div>
            <div class="row">
                Minimum: <asp:Label ID="LabelMinimum" runat="server" Text=""></asp:Label>
            </div>
            <div class="row">
                Average: <asp:Label ID="LabelAverage" runat="server" Text=""></asp:Label>
            </div>
            <div class="row">
                Total: <asp:Label ID="LabelTotal" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
    </body>
</html>
