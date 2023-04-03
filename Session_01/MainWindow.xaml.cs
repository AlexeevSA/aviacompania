using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace Session_01
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SM;Initial Catalog=Session1_01;Integrated Security=True");
            con.Open();
            string addData = "SELECT * FROM [dbo].[Users] where email=@email and password=@password";

            SqlCommand cmd = new SqlCommand(addData, con);

            cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtPass.Password.Trim());
            
            string roleid = cmd.ExecuteScalar().ToString();

            con.Close();

            txtEmail.Text = "";
            txtPass.Password = "";

            switch (roleid)
            {
                case "1":
                    new AdminPanel().Show();
                    Close();
                    break;

                case "2":
                    new UserWindow().Show();
                    Close();
                    break;
                default:
                    break;
            }

        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
