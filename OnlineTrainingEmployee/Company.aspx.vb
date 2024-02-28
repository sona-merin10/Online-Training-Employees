Imports System.Data.SqlClient
Imports System.Data
Public Class Company
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btncom_Click(sender As Object, e As EventArgs) Handles btncom.Click
        Dim instr As String
        instr = "insert into Company_table(Company_name,Address,Contact_number,Email)values('" + txtcompanyname.Text + "','" + txtcomaddress.Text + "','" + txtconno.Text + "','" + txtemail.Text + "')"
        Dim cmdcompany As SqlCommand = New SqlCommand(instr, co.connect())
        cmdcompany.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtcompanyname.Text = ""
        txtcomaddress.Text = ""
        txtconno.Text = ""
        txtemail.Text = ""
    End Sub
End Class