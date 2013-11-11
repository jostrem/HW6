<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Add new Player to Database.

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PlayersWebSite %>" DeleteCommand="DELETE FROM [Table] WHERE [playerId] = @playerId" InsertCommand="INSERT INTO [Table] ([playerFirstName], [playerLastName], [playerNumber], [playerTeam], [playerAge], [playerPosition]) VALUES (@playerFirstName, @playerLastName, @playerNumber, @playerTeam, @playerAge, @playerPosition)" SelectCommand="SELECT * FROM [Table] WHERE ([playerId] = @playerId)" UpdateCommand="UPDATE [Table] SET [playerFirstName] = @playerFirstName, [playerLastName] = @playerLastName, [playerNumber] = @playerNumber, [playerTeam] = @playerTeam, [playerAge] = @playerAge, [playerPosition] = @playerPosition WHERE [playerId] = @playerId">
            <DeleteParameters>
                <asp:Parameter Name="playerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="playerFirstName" Type="String" />
                <asp:Parameter Name="playerLastName" Type="String" />
                <asp:Parameter Name="playerNumber" Type="String" />
                <asp:Parameter Name="playerTeam" Type="String" />
                <asp:Parameter Name="playerAge" Type="String" />
                <asp:Parameter Name="playerPosition" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="playerId" QueryStringField="playerID" Type="Int32" />
            </SelectParameters>
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


            <div id="container">

            <div id="menu"> Menu </div>

            <div id="date"> Date</div>

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
        <br /> <br />


                 </div>
              <div id="footer">Footer</div>
              </div>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="playerId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="95px" Width="485px" DefaultMode="Insert">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="playerFirstName" HeaderText="First Name" SortExpression="playerFirstName" />
                <asp:BoundField DataField="playerLastName" HeaderText="Last Name" SortExpression="playerLastName" />
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerTeam" HeaderText="NFL Team" SortExpression="playerTeam" />
                <asp:BoundField DataField="playerAge" HeaderText="Age" SortExpression="playerAge" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
