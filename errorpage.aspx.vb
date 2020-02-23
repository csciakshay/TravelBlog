
Partial Class errorpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Error: " + Request.QueryString("errMsg")
    End Sub
End Class
