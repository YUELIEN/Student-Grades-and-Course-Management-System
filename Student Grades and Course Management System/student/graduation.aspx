<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="graduation.aspx.cs" Inherits="student.graduation" %>

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
            <asp:Table id="Table1" runat="server"
        CellPadding="10" >
        <asp:TableRow>
            <asp:TableCell BackColor ="Gold">
                溝通表達能力(英文能力)
            </asp:TableCell>
            <asp:TableCell BackColor ="Gold">
                溝通表達能力(中文能力)
            </asp:TableCell>
            <asp:TableCell BackColor="Gold">
                健康體能能力(體適能)
            </asp:TableCell>
            <asp:TableCell BackColor="Gold">
                健康體能能力(游泳)
            </asp:TableCell>
            <asp:TableCell BackColor="Gold">
                社會關懷能力
            </asp:TableCell>
            <asp:TableCell BackColor ="Gold">
                資訊應用能力(檢定考)
            </asp:TableCell>
            <asp:TableCell BackColor="Gold">
                資訊應用能力(程式設計課)
            </asp:TableCell>
            <asp:TableCell BackColor="Gold">
                創新創意能力(課程)
            </asp:TableCell>
            <asp:TableCell BackColor="Gold">
                創新創意能力(競賽)
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BackColor ="#CCCCCC" ForeColor="Green">
             完成
            </asp:TableCell>
            <asp:TableCell BackColor ="#CCCCCC" ForeColor="Green">
            完成
            </asp:TableCell>
            <asp:TableCell BackColor="#CCCCCC" ForeColor="Green">
                完成
            </asp:TableCell>
            <asp:TableCell BackColor="#CCCCCC" ForeColor="Green">
                完成
            </asp:TableCell>
            <asp:TableCell BackColor="#CCCCCC" ForeColor="Green">
                完成
            </asp:TableCell>
            <asp:TableCell BackColor ="#CCCCCC" ForeColor="Green">
                完成
            </asp:TableCell>
            <asp:TableCell BackColor="#CCCCCC" ForeColor="Green">
                完成
            </asp:TableCell>
            <asp:TableCell BackColor="#CCCCCC" ForeColor="Red">
                未完成
            </asp:TableCell>
            <asp:TableCell BackColor="#CCCCCC" ForeColor="Red">
                未完成
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

            <br />
            <asp:Label ID="Label1" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">必修</asp:Label>

            <asp:Label ID="Label2" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">30/41</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" BackColor="Gold" Width="104px" Height="24px" Font-Bold="True" Font-Size="X-Large">核心通識</asp:Label>

            <asp:Label ID="Label6" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">10/12</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">體育</asp:Label>

            <asp:Label ID="Label10" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">0/0</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">外系</asp:Label>

            <asp:Label ID="Label14" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">7/9</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">專題</asp:Label>

            <asp:Label ID="Label18" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">0/2</asp:Label>

            <br />
            <br />
            <asp:Label ID="Label3" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">選修</asp:Label>

            <asp:Label ID="Label4" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">36/48</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" BackColor="Gold" Width="103px" Height="22px" Font-Bold="True" Font-Size="X-Large">多元通識</asp:Label>

            <asp:Label ID="Label8" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">8/10</asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">英文</asp:Label>

            <asp:Label ID="Label12" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">3/4</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">軍訓</asp:Label>

            <asp:Label ID="Label16" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">0/0</asp:Label>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label23" runat="server" BackColor="Gold" Width="54px" Height="29px" Font-Bold="True" Font-Size="X-Large">總學分</asp:Label>

            <asp:Label ID="Label24" runat="server" BackColor="#CCCCCC" Font-Size="X-Large">94/128</asp:Label>

            <br />
            <br />
            <br />
            <asp:Label ID="Label19" runat="server" BackColor="Gold" Font-Bold="True" Font-Size="X-Large" Text="服務時數" Width="130px"></asp:Label>
            (系時數 : 2至10小時、校時數 : 6至14小時，總時數需 &gt;= 18小時)<br />

            <asp:Label ID="Label20" runat="server" BackColor="#CCCCCC" Font-Size="Large">系時數:6小時</asp:Label>

            <br />

            <asp:Label ID="Label21" runat="server" BackColor="#CCCCCC" Font-Size="Large">校時數:8小時</asp:Label>

            <br />

            <asp:Label ID="Label22" runat="server" BackColor="#CCCCCC" Font-Size="Large">時數:14/18小時</asp:Label>

            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Height="31px" PostBackUrl="https://localhost:44318/WebForm2.aspx" Text="上一頁" Width="126px" />

        </div>
    </form>
</body>
</html>
