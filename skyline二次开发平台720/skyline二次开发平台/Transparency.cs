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
    public partial class Transparency : Form
    {
        public static SGWorld61 sgworld;
        public Transparency()
        {
            InitializeComponent();
            sgworld = new SGWorld61();
        }

        private void Transparency_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string s1 = textBox1.Text;
                double t1 = double.Parse(s1);
                if (t1 >= 0.1 && t1 <= 1)

                    sgworld.Terrain.Opacity = t1;

                else
                    MessageBox.Show("请输入正确的数值！");
            }
            catch (Exception ex)
            {
                MessageBox.Show("unexcepted error:" + ex.Message);
            }
        }
    }
}
