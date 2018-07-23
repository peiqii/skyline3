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
    public partial class Light : Form
    {
        public static SGWorld61 sgworld;
        public Light()
        {
            InitializeComponent();
            sgworld = new SGWorld61();
        }

        private void Light_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            sgworld.DateTime.DisplaySun = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            sgworld.DateTime.DisplaySun = false;
        }
    }
}
