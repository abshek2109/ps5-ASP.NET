<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1
        {
            height: 33px;
            margin-left: 133px;
        }
        #Text1
        {
            width: 196px;
            margin-left: 41px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Registration Form</div>
    <asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"  style="margin-left: 30px" Width="241px"></asp:TextBox>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"      style="margin-left: 30px" Width="241px"></asp:TextBox>
    </p>
    <p>
        &nbsp;
    <asp:Label ID="Label4" runat="server" Text="College"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"  
            style="margin-left: 22px"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" 
            style="margin-left: 21px; margin-top: 0px" ></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="Label6" runat="server" Text="Display"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 187px; margin-top: 5px" Text="SUBMIT" Width="130px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="margin-left: 56px" Text="Next" Width="120px" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="margin-left: 387px" Text="See earlier reg" Width="156px" />
        </p>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="fname" DataValueField="fname"></asp:ListBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" 
            EnableSortingAndPagingCallbacks="True">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="college" HeaderText="college" 
                    SortExpression="college" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            </Columns>
            </asp:GridView>
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Register]"
            UpdateCommand="UPDATE Register SET FNAME=@fname , LNAME=@lname , COLLEGE=@college , AGE=@age WHERE (FNAME=@fname)">

            <UpdateParameters>
            <asp:Parameter Name="fname" Type="String"></asp:Parameter>
            <asp:Parameter Name="lname" Type="String"></asp:Parameter>
            <asp:Parameter Name="college" Type="String"></asp:Parameter>
            <asp:Parameter Name="age" Type="Decimal"></asp:Parameter>
            </UpdateParameters>
            </asp:SqlDataSource>
    
    </form>
</body>
</html>
