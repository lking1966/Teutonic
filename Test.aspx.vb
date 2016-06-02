
Partial Class Test
    Inherits System.Web.UI.Page
    Sub MakePage()
        Dim tx As New TextBox
        PL1.Controls.Add(tx)
    End Sub

    Private Sub Test_Load(sender As Object, e As EventArgs) Handles Me.Load
        MakePage()
    End Sub
End Class
