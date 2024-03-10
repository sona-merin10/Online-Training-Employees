Imports System.Data.SqlClient
Imports System.Data
Public Class Training
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindTrainingtrainer()
        End If
    End Sub

    Protected Sub btntraisub_Click(sender As Object, e As EventArgs) Handles btntraisub.Click
        Dim instr As String
        instr = "insert into Training_table(Training_name,Description,Trainer_id,Bud)values('" + trtrna.Text + "','" + traides.Text + "'," + traitrid.SelectedValue + ", '" + traibud.Text + "')"
        Dim cmdtraining As SqlCommand = New SqlCommand(instr, co.connect())
        cmdtraining.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        trtrna.Text = ""
        traides.Text = ""
        traibud.Text = ""
    End Sub
    
    Public Sub bindTrainingtrainer()
        Dim str As String
        str = "select Trainer_id,Name from Trainer_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        traitrid.DataTextField = "Name"
        traitrid.DataValueField = "Trainer_id"
        traitrid.DataSource = ds
        traitrid.DataBind()
        traitrid.Items.Insert(0, "--Select--")
    End Sub
    
End Class