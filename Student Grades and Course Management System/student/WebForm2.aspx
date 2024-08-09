<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="student.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type = "text/css">
        body{background-color: #C2C2FF}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="https://img.ixintu.com/download/jpg/201912/fcffb830df715564196c350c666461bc.jpg!ys" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="39px" Text="成績單" Width="91px" PostBackUrl="https://localhost:44318/grade.aspx" />
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="273px" ImageUrl="https://png.pngtree.com/png-clipart/20200409/ourmid/pngtree-hand-drawn-cartoon-graduation-cap-gradient-illustration-png-image_2179543.jpg" Width="253px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="39px" PostBackUrl="https://localhost:44318/graduation.aspx" Text="畢業門檻" Width="91px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="27px" OnClick="Button3_Click" PostBackUrl="https://localhost:44318/WebForm1.aspx" Text="上一頁" Width="119px" />
        </div>
    </form>
</body>
</html>
