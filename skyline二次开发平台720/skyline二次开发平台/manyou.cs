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
    public partial class manyou : Form
    {
        public static SGWorld61 sgworld;
        public manyou()
        {
            InitializeComponent();
            sgworld = new SGWorld61();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string t1 = textBox1.Text;
                string t2 = textBox2.Text;
                string t3 = textBox3.Text;
                string t5 = textBox5.Text;
                string t6 = textBox6.Text;
                string t7 = textBox7.Text;
                string t10 = textBox10.Text;
                double X = double.Parse(t1);
                double Y = double.Parse(t2);
                double Altitude = double.Parse(t3);
                double Yaw = double.Parse(t5);
                double Pitch = double.Parse(t6);
                double Roll = double.Parse(t7);
                double Distance = double.Parse(t10);
                sgworld.Navigate.Speed = trackBar1.Value;
                var target = sgworld.Creator.CreatePosition(X, Y, Altitude, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, Yaw, Pitch, Roll, Distance);
                sgworld.Navigate.FlyTo(target, ActionCode.AC_FLYTO);
            }
            catch (Exception ex)
            {
                MessageBox.Show("unexcepted error:" + ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            
        }
    }
}
