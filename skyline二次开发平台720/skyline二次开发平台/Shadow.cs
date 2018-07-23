using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TerraExplorerX;

namespace skyline二次开发平台
{
    public partial class Shadow : Form
    {
        public static SGWorld61 sgworld;
        public Shadow()
        {
            InitializeComponent();
            sgworld = new SGWorld61();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string s1 = textBox1.Text;
                DateTime t1 = DateTime.Parse(s1);
                sgworld.DateTime.FixedLocalTime = t1;
            }
            catch (Exception ex)
            {
                MessageBox.Show("unexcepted error:" + ex.Message);
            }
        }
    }
}
