Imports System.Data.SqlClient
Imports System.Data
Public Class Designation
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim instr As String
        instr = "insert into Designation_table(Designation_name)values('" + txtdesigname.Text + "')"
        Dim cmddesig As SqlCommand = New SqlCommand(instr, co.connect())
        cmddesig.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtdesigname.Text = ""
    End Sub
End Class