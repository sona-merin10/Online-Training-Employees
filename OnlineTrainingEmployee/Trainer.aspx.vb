Imports System.Data.SqlClient
Imports System.Data
Public Class Trainer
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Me.IsPostBack Then
        '    bindTrainertraining()
        'End If
    End Sub

    Protected Sub btntrsub_Click(sender As Object, e As EventArgs) Handles btntrsub.Click
        Dim instr As String
        instr = "insert into Trainer_table(Name,Address,Type)values('" + trainerna.Text + "','" + traineraddress.Text + "','" + trtritype.SelectedItem.Text + "')"
        Dim cmdtrainer As SqlCommand = New SqlCommand(instr, co.connect())
        cmdtrainer.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        trainerna.Text = ""
        traineraddress.Text = ""
    End Sub

    'Public Sub bindTrainertraining()
    '    Dim str As String
    '    str = "select Training_id,Training_name from Training_table"
    '    Dim com As SqlCommand = New SqlCommand(str, co.connect())
    '    Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
    '    Dim ds As DataTable = New DataTable
    '    sqlda.Fill(ds)
    '    trainertraiid.Items.Clear()
    '    trainertraiid.Items.Add("--Select--")
    '    trainertraiid.DataTextField = "Training_name"
    '    trainertraiid.DataValueField = "Training_id"
    '    trainertraiid.DataSource = ds
    '    trainertraiid.DataBind()
    'End Sub

    
End Class