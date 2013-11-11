
Partial Class DetailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delPlayer As String = e.Values("playerFirstName").ToString

        Response.Write("The record ")
        Response.Write("<span class=deletedplayershighlight>")
        Response.Write(delPlayer)
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL=./players.aspx")




        'Response.Write("The record has been deleted from the Database.")



    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./players.aspx")

    End Sub


End Class
