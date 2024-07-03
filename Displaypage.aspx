<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayPage.aspx.cs" Inherits="Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div{
            display:flex;
            justify-content:center;
            align-items:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" Width="716px">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
