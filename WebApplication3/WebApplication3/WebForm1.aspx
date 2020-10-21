<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        This is Web Form</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD" />
        </Columns>
    </asp:GridView>
    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Select" />
    
    <p>
        <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
            style="margin-left: 0px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Insert" />
    </p>
    <asp:Label ID="Label1" runat="server" Text="Display"></asp:Label>
    </form>
</body>
</html>
