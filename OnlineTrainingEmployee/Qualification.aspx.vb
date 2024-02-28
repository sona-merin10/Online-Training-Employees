Imports System.Data.SqlClient
Imports System.Data
Public Class Qualification
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnquasub_Click(sender As Object, e As EventArgs) Handles btnquasub.Click
        Dim instr As String
        instr = "insert into Qualification_table(Qualification_name)values('" + txtqua.Text + "')"
        Dim cmddesig As SqlCommand = New SqlCommand(instr, co.connect())
        cmddesig.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtqua.Text = ""
    End Sub
End Class