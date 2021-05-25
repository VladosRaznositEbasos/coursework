using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

namespace WPF_AccessDB
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        OleDbConnection con;
        DataTable dt;
        OleDbDataAdapter da;

        public MainWindow()
        {
            InitializeComponent();

            //Connect your access database
            con = new OleDbConnection();
            con.ConnectionString = "Provider=Microsoft.Jet.Oledb.4.0; Data Source=" + AppDomain.CurrentDomain.BaseDirectory + "\\EmpDB.mdb";
            BindGrid();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            da = new OleDbDataAdapter();

            da.SelectCommand = new OleDbCommand("sp_SelectTbEmp", con);
            da.Fill(dt);
            gvData.ItemsSource = dt.DefaultView;

        }

        //Display records in grid
        private void BindGrid()
        {
            OleDbCommand cmd = new OleDbCommand();
            if (con.State != ConnectionState.Open)
                con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from tbEmp";
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            gvData.ItemsSource = dt.AsDataView();

            if (dt.Rows.Count > 0)
            {
                lblCount.Visibility = System.Windows.Visibility.Hidden;
                gvData.Visibility = System.Windows.Visibility.Visible;
            }
            else
            {
                lblCount.Visibility = System.Windows.Visibility.Visible;
                gvData.Visibility = System.Windows.Visibility.Hidden;
            }

        }

        //Add records in grid
        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            if (con.State != ConnectionState.Open)
                con.Open();
            cmd.Connection = con;

            if (txtEmpName.Text != "" && txtContact.Text != "")
            {
                cmd.CommandText = "insert into tbEmp(EmpName,Contact,Email) Values(" + "'" + txtEmpName.Text + "','" + txtContact.Text + "','" + txtAddress.Text + "')";
                cmd.ExecuteNonQuery();
                BindGrid();
                MessageBox.Show("Employee Added Successfully...");
                ClearAll();
            }
            else
            {
                MessageBox.Show("Поля имя и телефон обязятельны");
            }
        }

        //Clear all records from controls
        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            ClearAll();
        }

        private void ClearAll()
        {
            txtEmpName.Text = "";
            txtContact.Text = "";
            txtAddress.Text = "";
            btnAdd.Content = "Добавить";
        }

        //Edit records
        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (gvData.SelectedItems.Count > 0)
            {
                DataRowView row = (DataRowView)gvData.SelectedItems[0];
                txtEmpName.Text = row["EmpName"].ToString();
                txtContact.Text = row["Contact"].ToString();
                txtAddress.Text = row["Email"].ToString();
                btnAdd.Content = "Обновить";
            }
            else
            {
                MessageBox.Show("Please Select Any Employee From List...");
            }
        }

        //Delete records from grid
        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (gvData.SelectedItems.Count > 0)
            {
                DataRowView row = (DataRowView)gvData.SelectedItems[0];

                OleDbCommand cmd = new OleDbCommand();
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd.Connection = con;
                cmd.CommandText = "delete from tbEmp where EmpId=" + row["EmpId"].ToString();
                cmd.ExecuteNonQuery();
                BindGrid();
                MessageBox.Show("Employee Deleted Successfully..."); 
                ClearAll();
            }
            else
            {
                MessageBox.Show("Please Select Any Employee From List...");
            }
        }

        //Exit
        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ButtonFind(object sender, RoutedEventArgs e)
        {
            DataRow[] rows = dt.Select();
            for (int i = 0; i < rows.Length; i++)
            {
                if (textFind.Text == rows[i]["EmpName"].ToString())
                {
                    textFind.Text = "Имя: " + rows[i]["EmpName"].ToString() + ", " + "Тел: " + rows[i]["Contact"].ToString() + ", "+ "Email: " + rows[i]["Email"].ToString() + ", " + "Id: " + rows[i]["EmpId"].ToString();
                }
                else if (textFind.Text == rows[i]["Contact"].ToString())
                {
                    textFind.Text = "Имя: " + rows[i]["EmpName"].ToString() + ", " + "Тел: " + rows[i]["Contact"].ToString() + ", " + "Email: " + rows[i]["Email"].ToString() + ", " + "Id: " + rows[i]["EmpId"].ToString();
                }
                else if (textFind.Text == rows[i]["Email"].ToString())
                {
                    textFind.Text = "Имя: " + rows[i]["EmpName"].ToString() + ", " + "Тел: " + rows[i]["Contact"].ToString() + ", " + "Email: " + rows[i]["Email"].ToString() + ", " + "Id: " + rows[i]["EmpId"].ToString();
                }
                else if (textFind.Text == rows[i]["EmpId"].ToString())
                {
                    textFind.Text = "Имя: " + rows[i]["EmpName"].ToString() + ", " + "Тел: " + rows[i]["Contact"].ToString() + ", " + "Email: " + rows[i]["Email"].ToString() + ", " + "Id: " + rows[i]["EmpId"].ToString();
                }
                else
                {
                    MessageBox.Show("Пользователь не найден!");
                }
            }
        }

        

        private void gvData_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void textFind_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}