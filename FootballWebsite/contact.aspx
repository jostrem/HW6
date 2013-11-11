<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="container">

            <div id="menu">  
                <h1>Contact Me! </h1>
            </div>

            <div id="date"> Date:<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>

            <div id="content">  
         <br />
        <a href="default.aspx">Home</a>
        <br />
        <a href="newplayer.aspx"> Add Player</a>
        <br />
        <a href="players.aspx"> View all players</a>

        <br />
        <a href="contact.aspx"> Contact Me</a>
        <br />
        <a href="about.aspx"> About Me</a>
        <br /> 
                
              <a href="search.aspx"> Search</a> <br />  
                
                <br />

      
    </div>
    </form>

    <h1>You can contact me by:</h1>
    <p1>Phone: (515) 123-4567</p1>
    <p1>Email: JacobIsAwesome@4colberts.com</p1>
    <p1>Fax: (515) 789-4622</p1>
    <p1>Mail: 123 Awesome St
          Iowa City, IA 52240</p1>
</body>
</html>
