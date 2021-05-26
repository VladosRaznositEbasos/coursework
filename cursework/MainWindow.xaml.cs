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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace cursework
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        OleDbConnection con;
        DataTable dt;
        OleDbDataAdapter da;
        public MainWindow()
        {
            InitializeComponent();

            con = new OleDbConnection();
            con.ConnectionString = "Provider=Microsoft.Jet.Oledb.4.0; Data Source=C:/Users/User/source/repos/cursework/cursework/EmpDB.mdb";
            BindGrid();
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
            tbEmpDataGrid.ItemsSource = dt.AsDataView();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cursework.EmpDBDataSet empDBDataSet = ((cursework.EmpDBDataSet)(this.FindResource("empDBDataSet")));
            // Загрузить данные в таблицу tbEmp. Можно изменить этот код как требуется.
            cursework.EmpDBDataSetTableAdapters.tbEmpTableAdapter empDBDataSettbEmpTableAdapter = new cursework.EmpDBDataSetTableAdapters.tbEmpTableAdapter();
            empDBDataSettbEmpTableAdapter.Fill(empDBDataSet.tbEmp);
            System.Windows.Data.CollectionViewSource tbEmpViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("tbEmpViewSource")));
            tbEmpViewSource.View.MoveCurrentToFirst();
        }

        private void AddButton(object sender, RoutedEventArgs e)
        {
            AddWindow addWindow = new AddWindow();
            addWindow.Owner = this;
            addWindow.Show();
            addWindow.dataGrid = tbEmpDataGrid;
            addWindow.con = con;
        }

        private void tbEmpDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void DelButton(object sender, RoutedEventArgs e)
        {
            if (tbEmpDataGrid.SelectedItems.Count > 0)
            {
                DataRowView row = (DataRowView)tbEmpDataGrid.SelectedItems[0];

                OleDbCommand cmd = new OleDbCommand();
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd.Connection = con;
                cmd.CommandText = "delete from tbEmp where EmpId=" + row["EmpId"].ToString();
                cmd.ExecuteNonQuery();
                BindGrid();
                MessageBox.Show("Employee Deleted Successfully...");
            }
            else
            {
                MessageBox.Show("Please Select Any Employee From List...");
            }
        }

        private void UpdateButton(object sender, RoutedEventArgs e)
        {
            if (tbEmpDataGrid.SelectedItems.Count > 0)
            {
                AddWindow addWindow = new AddWindow();
                addWindow.Owner = this;
                addWindow.Show();
                addWindow.dataGrid = tbEmpDataGrid;
                addWindow.con = con;
                DataRowView row = (DataRowView)tbEmpDataGrid.SelectedItems[0];
                addWindow.textName.Text = row["EmpName"].ToString();
                addWindow.textPhone.Text = row["Contact"].ToString();
                addWindow.textEmail.Text = row["Email"].ToString();
                addWindow.add.Content = "Обновить";
            }
            else
            {
                MessageBox.Show("Please Select Any Employee From List...");
            }
        }
    }
}
