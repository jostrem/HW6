<%@ Page Language="VB" AutoEventWireup="false" CodeFile="players.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="PlayersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PlayersWebSite %>" SelectCommand="SELECT * FROM [Table]" DeleteCommand="DELETE FROM [Table] WHERE [playerId] = @playerId" InsertCommand="INSERT INTO [Table] ([playerId], [playerFirstName], [playerLastName], [playerNumber], [playerTeam], [playerAge], [playerPosition]) VALUES (@playerId, @playerFirstName, @playerLastName, @playerNumber, @playerTeam, @playerAge, @playerPosition)" UpdateCommand="UPDATE [Table] SET [playerFirstName] = @playerFirstName, [playerLastName] = @playerLastName, [playerNumber] = @playerNumber, [playerTeam] = @playerTeam, [playerAge] = @playerAge, [playerPosition] = @playerPosition WHERE [playerId] = @playerId">
            <DeleteParameters>
                <asp:Parameter Name="playerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="playerId" Type="Int32" />
                <asp:Parameter Name="playerFirstName" Type="String" />
                <asp:Parameter Name="playerLastName" Type="String" />
                <asp:Parameter Name="playerNumber" Type="String" />
                <asp:Parameter Name="playerTeam" Type="String" />
                <asp:Parameter Name="playerAge" Type="String" />
                <asp:Parameter Name="playerPosition" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="playerFirstName" Type="String" />
                <asp:Parameter Name="playerLastName" Type="String" />
                <asp:Parameter Name="playerNumber" Type="String" />
                <asp:Parameter Name="playerTeam" Type="String" />
                <asp:Parameter Name="playerAge" Type="String" />
                <asp:Parameter Name="playerPosition" Type="String" />
                <asp:Parameter Name="playerId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </div>

        <div id="container">

            <div id="menu" class="auto-style1"> 
                <h1>Players </h1>
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
            <div id="footer"> 



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
             DataKeyNames="playerId" DataSourceID="PlayersDataSource" Height="274px" Width="830px" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" PageSize="5">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="playerFirstName" HeaderText="First Name" SortExpression="playerFirstName" />
                <asp:BoundField DataField="playerLastName" HeaderText="Last Name" SortExpression="playerLastName" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="playerdetails.aspx?playerID={0}" Text="View Details" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    
            </div>

 </div>



    </div>
    </form>
</body>
</html>
