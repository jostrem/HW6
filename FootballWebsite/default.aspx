<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br /><br />
        <div id="container">

            <div id="menu"> 
                <h1>Welcome to the NFL players database! </h1>
            </div>

            <div id="date"> <strong>Date:</strong><asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
    

        <img alt="NFL Logo" title="NFL Logo" src="./images/NFL.png" />


             <div id="Div1"> <b style="color: rgb(0, 0, 0); font-family: 'Times New Roman', Times, serif; font-size: small; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span style="font-family: Arial;">©Jacob Ostrem</span></b></div>
        </div>
    </div>
    </form>
</body>
</html>
