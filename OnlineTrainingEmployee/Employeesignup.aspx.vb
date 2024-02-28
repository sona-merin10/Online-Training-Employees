Imports System.Data.SqlClient
Imports System.Data
Public Class Employeedetails
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            bindcom()
            bindempdesig()
            binddepart()
            bindQualification()
        End If
    End Sub

    Protected Sub Btnreg_Click(sender As Object, e As EventArgs) Handles Btnreg.Click
        Dim instr As String
        Dim Gen As String
        If Rb1.Checked = True Then
            Gen = "Male"
        ElseIf Rb2.Checked = True Then
            Gen = "Female"
        End If

        instr = "insert into Employee_table(Company_id,First_name,Last_name,Age,Gender,Email,Pass,Designation_id,Department_id,Qualification_id)values(" + empdeComid.SelectedValue + ",'" + txtFn.Text + "','" + txtln.Text + "','" + txtage.Text + "','" + Gen + "','" + txtemail1.Text + "','" + emppass.Text + "'," + empdesigid.SelectedValue + "," + empdepartid.SelectedValue + "," + empquaid.SelectedValue + ")"
        Dim cmdemp As SqlCommand = New SqlCommand(instr, co.connect())
        cmdemp.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtFn.Text = ""
        txtln.Text = ""
        txtage.Text = ""
        txtemail1.Text = ""
        emppass.Text = ""
    End Sub
    Public Sub bindcom()
        Dim str As String
        str = "select  Company_id,Company_name from Company_table"
        Dim comc As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comc)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        empdeComid.DataTextField = "Company_name"
        empdeComid.DataValueField = "Company_id"
        empdeComid.DataSource = ds
        empdeComid.DataBind()
        empdeComid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindempdesig()
        Dim str As String
        str = "select  Designation_id,Designation_name from Designation_table"
        Dim comde As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comde)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        empdesigid.DataTextField = "Designation_name"
        empdesigid.DataValueField = "Designation_id"
        empdesigid.DataSource = ds
        empdesigid.DataBind()
        empdesigid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub binddepart()
        Dim str As String
        str = "select  Department_id,Department_name from Department_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        empdepartid.DataTextField = "Department_name"
        empdepartid.DataValueField = "Department_id"
        empdepartid.DataSource = ds
        empdepartid.DataBind()
        empdepartid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindQualification()
        Dim str As String
        str = "select  Qualification_id,Qualification_name from Qualification_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        empquaid.DataTextField = "Qualification_name"
        empquaid.DataValueField = "Qualification_id"
        empquaid.DataSource = ds
        empquaid.DataBind()
        empquaid.Items.Insert(0, "--Select--")
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("EmpLogin.aspx")
    End Sub
End Class
