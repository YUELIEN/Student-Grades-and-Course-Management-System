<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grade.aspx.cs" Inherits="student.grade" %>

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
            *請再次輸入學號:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Height="52px" OnClick="Button1_Click" Text="必修" Width="79px" />
&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" Height="52px" Text="選修" Width="79px" OnClick="Button2_Click1" />
&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#99CCFF" Height="52px" Text="核心通識" Width="79px" OnClick="Button3_Click" />
&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="#99CCFF" Height="52px" Text="多元通識" Width="79px" OnClick="Button4_Click" />
&nbsp;
            <asp:Button ID="Button5" runat="server" BackColor="#99CCFF" Height="52px" Text="體育" Width="79px" OnClick="Button5_Click" />
&nbsp;
            <asp:Button ID="Button6" runat="server" BackColor="#99CCFF" Height="52px" Text="英文" Width="79px" OnClick="Button6_Click" />
&nbsp;
            <asp:Button ID="Button7" runat="server" BackColor="#99CCFF" Height="52px" Text="軍訓" Width="79px" OnClick="Button7_Click" />
&nbsp;
            <asp:Button ID="Button8" runat="server" BackColor="#99CCFF" Height="52px" Text="外系" Width="79px" OnClick="Button8_Click" />
&nbsp;
            <asp:Button ID="Button9" runat="server" BackColor="#99CCFF" Height="52px" Text="專題" Width="79px" OnClick="Button9_Click" />
&nbsp;
            <asp:Button ID="Button10" runat="server" BackColor="#99CCFF" Height="52px" Text="成績單" Width="79px" OnClick="Button10_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button11" runat="server" Height="24px" PostBackUrl="https://localhost:44318/WebForm2.aspx" Text="上一頁" Width="133px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
