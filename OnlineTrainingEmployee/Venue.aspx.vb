Imports System.Data.SqlClient
Imports System.Data
Public Class Venue
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnvensub_Click(sender As Object, e As EventArgs) Handles btnvensub.Click
        Dim instr As String
        instr = "insert into Venue_table(Name,Address,Type)values('" + venname.Text + "','" + venaddress.Text + "','" + ddvenuetype.SelectedItem.Text + "')"
        Dim cmdvenue As SqlCommand = New SqlCommand(instr, co.connect())
        cmdvenue.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        venname.Text = ""
        venaddress.Text = ""
    End Sub
End Class