using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace cursework
{
    /// <summary>
    /// Логика взаимодействия для AddWindow.xaml
    /// </summary>
    public partial class AddWindow : Window
    {
        
        DataTable dt;
        OleDbDataAdapter da;

        public DataGrid dataGrid { get; set; }
        public OleDbConnection con { get; set; }

        public AddWindow()
        {
            InitializeComponent();
        }

        public void BindGrid()
        {
            OleDbCommand cmd = new OleDbCommand();
            if (con.State != ConnectionState.Open)
                con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from tbEmp";
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            dataGrid.ItemsSource = dt.AsDataView();
        }

        private void AddStudent(object sender, RoutedEventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            if (con.State != ConnectionState.Open)
                con.Open();
            cmd.Connection = con;

            if (add.Content.ToString() == "Добавить")
            {
                if (textName.Text != "" || textPhone.Text != "" || textEmail.Text != "")
                {
                    cmd.CommandText = "insert into tbEmp(EmpName,Contact,Email) Values(" + "'" + textName.Text + "','" + textPhone.Text + "','" + textEmail.Text + "')";
                    cmd.ExecuteNonQuery();
                    BindGrid();
                    MessageBox.Show("Студент добавлен успешно");
                }
                else
                {
                    MessageBox.Show("Заполните все поля");
                }
            }
            else if (add.Content.ToString() == "Обновить")
            {
                if (textName.Text != "" || textPhone.Text != "" || textEmail.Text != "")
                {
                    cmd.CommandText = "UPDATE tbEmp SET EmpName = " + "'" + textName.Text + "', " + "Contact = " + "'" + textPhone.Text + "'," + "Email = " + "'" + textEmail.Text + "'";
                    cmd.ExecuteNonQuery();
                    BindGrid();
                }
                else
                {
                    MessageBox.Show("Заполните все поля");
                }
            }
        }
    }
}
