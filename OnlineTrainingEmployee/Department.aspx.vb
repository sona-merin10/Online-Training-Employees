Imports System.Data.SqlClient
Imports System.Data
Public Class Department
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim instr As String
        instr = "insert into Department_table(Department_name)values('" + txtdepartname.Text + "')"
        Dim cmddept As SqlCommand = New SqlCommand(instr, co.connect())
        cmddept.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtdepartname.Text = ""
    End Sub
End Class