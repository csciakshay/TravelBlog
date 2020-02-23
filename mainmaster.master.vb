
Partial Class mainmaster
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("userimg") Is Nothing Then
            Image1.ImageUrl = "~/imgupload2015-05-02 22.41.12.jpg"
            Label1.Text = ""
        Else
            Image1.ImageUrl = Session("userimg")
            Label1.Text = "welcome" + Session("uname")
        End If
    End Sub
End Class

