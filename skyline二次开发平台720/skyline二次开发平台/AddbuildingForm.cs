using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using TerraExplorerX;
using System.IO;

namespace skyline二次开发平台
{
    public partial class AddbuildingForm : Form
    {
        private object sgworld = MainForm.sgworld;
        private ITerraExplorer5 ITerraExplorer;
        private TerraExplorer TECoClass;
        private ITerrainDynamicObject5 tempDynamicObject;
        private IInformationTree5 IInfoTree;
        private ITerrainModel61 building;
        private IObjectManager5 IObjectManager;
        public AddbuildingForm()
        {
            InitializeComponent();
            TECoClass = new TerraExplorerClass();
            ITerraExplorer = (ITerraExplorer5)TECoClass;
            IInfoTree = (IInformationTree5)TECoClass;
            IObjectManager = (IObjectManager5)TECoClass;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string mes = String.Empty;
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Title = "打开文件";
            ofd.Filter = "三维模型|*.x";
            ofd.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            ofd.ValidateNames = true;     //文件有效性验证ValidateNames，验证用户输入是否是一个有效的Windows文件名
            ofd.CheckFileExists = true;  //验证文件有效性
            ofd.CheckPathExists = true; //验证路径有效性
            try
            {
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    string path = ofd.FileName;
                    textBox5.Text = path;                  

                }
            }
            catch (Exception ex)
            {
                mes = String.Format("CreateLabelButton_Click Exception :{0}", ex.Message);
                Log4NetHelper.WriteLog(typeof(AddbuildingForm), ex);
                MessageBox.Show(mes);
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            string path = textBox5.Text;
            string s1 = textBox1.Text;
            string s2 = textBox2.Text;
            string s3 = textBox3.Text;
            string s4 = textBox4.Text;
            string mes = String.Empty;
            IPosition61 cpos, xue19lou = null;
            TECoClass = new TerraExplorerClass();
            ITerraExplorer = (ITerraExplorer5)TECoClass;
            IInfoTree = (IInformationTree5)TECoClass;
            IObjectManager = (IObjectManager5)TECoClass;
            try
            {
                double dxcoord = double.Parse(s1);
                double dycoord = double.Parse(s2);
                double altitude = double.Parse(s3);
                AltitudeTypeCode ealit = AltitudeTypeCode.ATC_TERRAIN_RELATIVE;
                cpos = MainForm.sgworld.Creator.CreatePosition(dxcoord, dycoord, altitude, ealit, 0,90, 100.0, 1000);
                building = MainForm.sgworld.Creator.CreateModel(cpos, path, 1, ModelTypeCode.MT_NORMAL, 0, s4);
            }
            catch (Exception ex)
            {
                mes = String.Format("CreateLabelButton_Click Exception :{0}", ex.Message);
                Log4NetHelper.WriteLog(typeof(AddbuildingForm), ex);
                MessageBox.Show(mes);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";         
        }
    }
}
