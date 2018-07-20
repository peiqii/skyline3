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
    public partial class SurfaceimageForm : Form
    {
        private object sgworld = MainForm.sgworld;
        public SurfaceimageForm()
        {
            InitializeComponent();
            TopMost = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string s1 = textBox1.Text;
            string mes = String.Empty;
            ITerrainRasterLayer61 surfaceimage;
            OpenFileDialog ofd = new OpenFileDialog();
            //ofd.ShowDialog();
            ofd.Title = "打开文件";
            ofd.Filter = "影像文件|*.mpt";
          
            //sgworld.Project.Open(path, true, null, null);
            ofd.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            ofd.ValidateNames = true;     //文件有效性验证ValidateNames，验证用户输入是否是一个有效的Windows文件名
            ofd.CheckFileExists = true;  //验证文件有效性
            ofd.CheckPathExists = true; //验证路径有效性
            try
            {
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    string path = ofd.FileName;
                    textBox1.Text=path;
                    int groupid = MainForm.sgworld.ProjectTree.FindItem("\\贴图");
                    surfaceimage = MainForm.sgworld.Creator.CreateImageryLayer(path, 0, 0, 0, 0, null, "", groupid, "学院路");
                    MainForm.sgworld.Navigate.FlyTo(surfaceimage, ActionCode.AC_FLYTO);

                }
            }
            catch (Exception ex)
            {
                mes = String.Format("CreateLabelButton_Click Exception :{0}", ex.Message);
                Log4NetHelper.WriteLog(typeof(SurfaceimageForm), ex);
                MessageBox.Show(mes);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
        }
    }
}
