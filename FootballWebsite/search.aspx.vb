
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbAge_TextChanged(sender As Object, e As EventArgs) Handles tbAge.TextChanged

        Dim searchWord As String
        searchWord = "Select * From Table where (playerAge Like '%" + tbAge.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub

    Protected Sub tbLastName_TextChanged(sender As Object, e As EventArgs) Handles tbLastName.TextChanged

        Dim searchWord As String
        searchWord = "Select * From Table where (playerLastName Like '%" + tbLastName.Text.ToString() + "%')"
        SqlDataSource2.SelectCommand = searchWord


    End Sub
End Class
