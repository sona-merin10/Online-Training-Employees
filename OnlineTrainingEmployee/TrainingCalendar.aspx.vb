Imports System.Data.SqlClient
Imports System.Data
Public Class TrainingCalender
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindCaltraining()
            bindCalvenue()
        End If
    End Sub

    Protected Sub Btntrcal_Click(sender As Object, e As EventArgs) Handles Btntrcal.Click
        Dim instr As String
        instr = "insert into TrainingCalendar_table(Training_id,Venue_id,Start_date,End_date)values(" + Caltrainingid.SelectedValue + "," + Calvenueid.SelectedValue + ",'" + txtstdate.Text + "','" + txtendate.Text + "')"
        Dim cmdcal As SqlCommand = New SqlCommand(instr, co.connect())
        cmdcal.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtstdate.Text = ""
        txtendate.Text = ""

    End Sub
    Public Sub bindCaltraining()
        Dim str As String
        str = "select Training_id,Training_name from Training_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        Caltrainingid.DataTextField = "Training_name"
        Caltrainingid.DataValueField = "Training_id"
        Caltrainingid.DataSource = ds
        Caltrainingid.DataBind()
        Caltrainingid.Items.Insert(0, "--Select--")

    End Sub
    Public Sub bindCalvenue()
        Dim str As String
        str = "select Venue_id,Name from Venue_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        Calvenueid.DataTextField = "Name"
        Calvenueid.DataValueField = "Venue_id"
        Calvenueid.DataSource = ds
        Calvenueid.DataBind()
        Calvenueid.Items.Insert(0, "--Select--")
    End Sub

   
End Class