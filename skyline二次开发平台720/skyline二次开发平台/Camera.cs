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
    public partial class Camera : Form
    {
        public static SGWorld61 sgworld;
        public Camera()
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
                string t4 = textBox4.Text;
                double Yaw = double.Parse(t1);
                double Pitch = double.Parse(t2);
                double Roll = double.Parse(t3);
                double Distance = double.Parse(t4);
                var Postion = sgworld.Navigate.GetPosition(AltitudeTypeCode.ATC_TERRAIN_ABSOLUTE);
                var camera = sgworld.Creator.CreatePosition(Postion.X, Postion.Y, Postion.Altitude, Postion.AltitudeType, Yaw, Pitch, Roll, Distance);
                sgworld.Navigate.SetPosition(camera);
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
    }
}
