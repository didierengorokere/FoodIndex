using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Windows.Forms.DataVisualization.Charting;

namespace SupermarketTuto.View
{
    public partial class charts : Form
    {
        public charts()
        {
            InitializeComponent();
        }
        private void fillChart()
        {
            SqlConnection Con = new SqlConnection(@"Data Source=DIDIERKERE;Initial Catalog=FoodIndex1;Integrated Security=True");
            DataSet ds = new DataSet();
            Con.Open();
            SqlDataAdapter adapt = new SqlDataAdapter("Select ProdName, ProdQty, ProdPrice from ProductTbl", Con);
            adapt.Fill(ds);
            chart1.DataSource = ds;
            chart1.Series["Products"].XValueMember = "ProdName";
            chart1.Series["Products"].YValueMembers = "ProdQty";
            chart1.Titles.Add("ProductTbl");

        }
        private void chart1_Click(object sender, EventArgs e)
        {
            fillChart();

        }
    }
}
