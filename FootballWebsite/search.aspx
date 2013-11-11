<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

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
                <h1>Search</h1>
         <div id="date"  > <strong>Date:</strong><asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PlayersWebSite %>" SelectCommand="SELECT [playerAge] FROM [Table] WHERE ([playerAge] = @playerAge)">
            <SelectParameters>
                <asp:QueryStringParameter Name="playerAge" QueryStringField="Age" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PlayersWebSite %>" SelectCommand="SELECT [playerLastName] FROM [Table]"></asp:SqlDataSource>
        <br />
        Search For player by Age:&nbsp;
        <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Search for player by Last Name:&nbsp;
        <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
        <br />
        <br />


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="playerAge" HeaderText="playerAge" SortExpression="playerAge" />
            </Columns>
        </asp:GridView>
    
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="playerLastName" HeaderText="playerLastName" SortExpression="playerLastName" />
                    </Columns>
                </asp:GridView>
    
    </div>
    </form>
</body>
</html>
