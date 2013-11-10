<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="PlayersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PlayersWebSite %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerId" DataSourceID="PlayersDataSource" Height="332px" Width="928px">
            <Columns>
                <asp:BoundField DataField="playerFirstName" HeaderText="First Name" SortExpression="playerFirstName" />
                <asp:BoundField DataField="playerLastName" HeaderText="Last Name" SortExpression="playerLastName" />
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerTeam" HeaderText="NFL Team" SortExpression="playerTeam" />
                <asp:BoundField DataField="playerAge" HeaderText="Age" SortExpression="playerAge" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
