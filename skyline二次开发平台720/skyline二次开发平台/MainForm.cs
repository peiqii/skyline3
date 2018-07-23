using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TerraExplorerX;

namespace skyline二次开发平台
{
    public partial class MainForm : Form
    {
        public static SGWorld61 sgworld;
        private ITerrain5 Ita;
        private IMenu imenu;
        private TerraExplorer CoTE;
        private ITerraExplorer5 ITE;
        private IInformationTree5 IInfoTree;
        private IRender5 IRender;
        private IObjectManager5 IObjectManager;
        private ITerraExplorerObject5 ITeObj5;
        private IPlane5 IPlane;
        private ILayer5 iLyr,iLyr2, iLyr3, iLyr4, iLyr5;
        private ITENavigationMap5 map;
        private object[] objArray;
        private double[] sx;
        private double[] sy;
        private double[] xx;
        private double[] yy;
        private int numObjs;
        private int currObj;
        private int tduid;
        private bool flagr = true;
        private ITerrainModel61 A1lou,keyanlou,xue19lou,yifulou,zk,dzt;
        private Random RandomClass = new Random();
      
        AutoSizeFormClass asc = new AutoSizeFormClass();
        public MainForm()
        {           
            InitializeComponent();
            asc.controllInitializeSize(this);
            this.CoTE = new TerraExplorerClass();
            this.ITE = (ITerraExplorer51)CoTE;
            this.IInfoTree = (IInformationTree5)CoTE;
            this.IPlane = (IPlane5)CoTE;
            this.Ita = (ITerrain5)CoTE;
            sgworld = new SGWorld61();
            this.imenu = (IMenu)CoTE;
            this.tduid = sgworld.ProjectTree.FindItem("\\底图\\天地图");
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            asc.controllInitializeSize(this);
            sgworld.OnLoadFinished += new
                _ISGWorld61Events_OnLoadFinishedEventHandler(OnProjectLoadFinished);
            //string flyFile = "http://www.skylineglobe.com/SkylineGlobe/WebClient/PresentationLayer/WebClient/SkyglobeLB.fly";
            string flyFile= Application.StartupPath + "\\elta.fly";
            //ITE.LoadEx(Application.StartupPath + @"\elta.fly", "", "", 0);
            sgworld.Project.Open(flyFile, true, null, null);
            CoTE = new TerraExplorerClass();
            ITE = (TerraExplorerX.ITerraExplorer5)CoTE;
            IInfoTree = (TerraExplorerX.IInformationTree5)CoTE;
            IRender = (IRender5)CoTE;
            IObjectManager = (IObjectManager5)CoTE;
            this.CoTE.OnLButtonDown += new _ITerraExplorerEvents5_OnLButtonDownEventHandler(OnLButtonDown);            
            InitArray();

        }

        private void InitArray()
        {
        int MyGroup;
        int ItemID;
        double a;
        double b;
        MyGroup = IInfoTree.FindItem("group1");
            ItemID = (int)IInfoTree.GetNextItem(MyGroup, TerraExplorerX.ItemCode.CHILD);
            while (ItemID > 0)
            {
                objArray[numObjs] = (object)IInfoTree.GetObjectEx(ItemID, "ITerraExplorerObject5");
                a = RandomClass.Next(0,1000);
                b = RandomClass.Next(0, 1000);
                xx[numObjs] = -80.2178 + a / 10000;
                yy[numObjs] = 25.7718 + b / 10000;
                a = RandomClass.Next(0,1000);
                b = RandomClass.Next(0, 1000);
                sx[numObjs] = (a - 500) / 1000000;
                sy[numObjs] = (b - 500) / 1000000;
                numObjs = numObjs + 1;
                ItemID = IInfoTree.GetNextItem(ItemID, TerraExplorerX.ItemCode.NEXT);
            }
}

       

        void OnProjectLoadFinished()
        {
            IPosition61 beijing = sgworld.Creator.CreatePosition(116.216667, 39.775111, 15000, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, -60, -60, 0, 0);            
            sgworld.Navigate.JumpTo(beijing);
            //不加载天地图
            IInfoTree.SetVisibility(tduid,0);
            CreateHierarchy();

            IPosition61 A1loupos,keyanloupos,xue19loupos,yifuloupos,dztpos = null;
            IPosition61 zkpos = null;
            //添加建筑
            int buildingid = IInfoTree.FindItem("\\建筑物");
            A1loupos = MainForm.sgworld.Creator.CreatePosition(116.3465138888889, 39.99398583333333, 0, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 275, 90, 97.0, 1000);
            A1lou = MainForm.sgworld.Creator.CreateModel(A1loupos, Application.StartupPath + "\\model\\CE15_1ALou-1.x", 1, ModelTypeCode.MT_NORMAL,buildingid, "A1楼");
            keyanloupos = MainForm.sgworld.Creator.CreatePosition(116.35406944444445, 39.9929025, 0, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 275, 90, 100.0, 1000);
            keyanlou = MainForm.sgworld.Creator.CreateModel(keyanloupos, Application.StartupPath + "\\model\\CE15_KeYanLou.x", 1, ModelTypeCode.MT_NORMAL, buildingid, "科研楼");
            xue19loupos = MainForm.sgworld.Creator.CreatePosition(116.35145833333333, 39.992735833333334, 0, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 275, 90, 100.0, 1000);
            xue19lou = MainForm.sgworld.Creator.CreateModel(xue19loupos, Application.StartupPath + "\\model\\CE15_Xue19Lou.x", 1, ModelTypeCode.MT_NORMAL,buildingid, "学19楼");
            yifuloupos = MainForm.sgworld.Creator.CreatePosition(116.35815277777778, 39.992874722222226, 0, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 275, 90, 100.0, 1000);
            yifulou = MainForm.sgworld.Creator.CreateModel(yifuloupos, Application.StartupPath + "\\model\\CE15_YiFuLou.x", 1, ModelTypeCode.MT_NORMAL, buildingid, "逸夫楼");
            //添加钻孔
            zkpos = MainForm.sgworld.Creator.CreatePosition(116.28534722222223, 39.96573583333333, 0, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 275, 90, 6.0, 1000);
            zk = MainForm.sgworld.Creator.CreateModel(zkpos, Application.StartupPath + "\\model\\zk100_20180719.x", 1, ModelTypeCode.MT_NORMAL, 0, "钻孔");
            //添加地质体
            dztpos = MainForm.sgworld.Creator.CreatePosition(116.35456944444445, 40.027569166666666, 0, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 275, 90, 6.0, 1000);
            dzt = MainForm.sgworld.Creator.CreateModel(dztpos, Application.StartupPath + "\\model\\dzt.x", 1, ModelTypeCode.MT_NORMAL, 0, "地质体");


        }




        private void 钻孔模型ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AdddrillForm adddrillform = new AdddrillForm();
            adddrillform.Show();
        }  

        private void 地质体模型ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AddgeologicbodyForm addgeologicbodyForm = new AddgeologicbodyForm();
            addgeologicbodyForm.Show();
        }

        private void 添加建筑物ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AddbuildingForm addbuildingForm = new AddbuildingForm();
            addbuildingForm.Show();
        }

        private void 地下场景显示ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            //启用地下模式
            sgworld.Command.Execute(1027, 0);
            //获取中心坐标
            //IPosition61 center = sgworld.Window.CenterPixelToWorld().Position;
            //设置视角
            //sgworld.Navigate.SetPosition(center);
            
        }

        private void 打开ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            //ofd.ShowDialog();
            ofd.Title = "打开文件";
            ofd.Filter = "TerraExplorer Header文件|*.fly";
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
                    sgworld.Project.Open(path, true, null, null);

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

        }

        private void 保存ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            sgworld.Command.Execute(1003, 0);
        }

        private void 另存为ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            sgworld.Command.Execute(1004, 0);
        }

        private void 添加影像贴图ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SurfaceimageForm surfaceimageForm = new SurfaceimageForm();
            surfaceimageForm.Show(); }

        private void 天地图ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            IInfoTree.SetVisibility(tduid, 1);
        }

        private void 钻孔显示ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            
            imenu.Invoke(34416);
            sgworld.Command.Execute(1027, 0);
            int zkid = IInfoTree.FindItem("\\钻孔");
            int dizhitiid = IInfoTree.FindItem("\\地质体");
            int buildingid = IInfoTree.FindItem("\\建筑物");
            int xulid = sgworld.ProjectTree.FindItem("\\贴图\\学院路");
            int tdu = IInfoTree.FindItem("\\底图\\天地图");
            IInfoTree.SetVisibility(zkid, 1);
   
           
            if (flagr)
            {
                
                IInfoTree.SetGroupVisibility(buildingid, 0);
                IInfoTree.SetVisibility(dizhitiid, 0);
                IInfoTree.SetVisibility(xulid, 0);
                IInfoTree.SetVisibility(tdu, 0);
                flagr = false;
            }
            else
            {
                IInfoTree.SetGroupVisibility(buildingid, 1);
                IInfoTree.SetVisibility(dizhitiid, 1);
                IInfoTree.SetVisibility(xulid, 1);
                flagr = true;

            }
            //IPosition61 CUGB = sgworld.Creator.CreatePosition(116.203125649628, 39.540540706115, 6666, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 0, 60, 0, 0);
            //sgworld.Navigate.JumpTo(CUGB);



        }

        private void 地上地下一体化显示ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            bool flag = true;
            imenu.Invoke(34416);
            sgworld.Command.Execute(1027, 0);
            int zkid = IInfoTree.FindItem("\\钻孔");
            int dizhitiid = IInfoTree.FindItem("\\地质体");
            int buildingid = IInfoTree.FindItem("\\建筑物");
            int xulid = sgworld.ProjectTree.FindItem("\\贴图\\学院路");
            int tdu = IInfoTree.FindItem("\\底图\\天地图");
            if (flag)
            {

                IInfoTree.SetVisibility(zkid, 1);
                IInfoTree.SetGroupVisibility(buildingid, 1);
                IInfoTree.SetVisibility(dizhitiid, 1);
                IInfoTree.SetVisibility(xulid, 1);
                IInfoTree.SetVisibility(tdu, 0);
                flag = false;
            }
            

        }

        private void 关闭ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void 设置摄像机的位置ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Camera cameraform = new Camera();
            cameraform.Show();
        }

        private void 调整透明度ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Transparency transparencyform = new Transparency();
            transparencyform.Show();
        }

        private void 光线属性ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Light lightform = new Light();
            lightform.Show();
        }

        private void 阴影属性ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Shadow shadowform = new Shadow();
            shadowform.Show();
        }

        private void 获取当前位置信息ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                var currentPos = sgworld.Navigate.GetPosition(AltitudeTypeCode.ATC_TERRAIN_ABSOLUTE);
                MessageBox.Show(string.Format(
                    @"Current position in the world;
                    Altitude={0}
                    AltitudeType={1}
                    Distance={2}
                    Yaw={3}
                    Pitch={4}
                    Roll={5}
                    X={6}
                    Y={7}
                    ", currentPos.Altitude, currentPos.AltitudeType, currentPos.Distance, currentPos.Yaw, currentPos.Pitch, currentPos.Roll, currentPos.X, currentPos.Y));
            }
            catch (Exception ex)
            {
                MessageBox.Show("unexcepted error:" + ex.Message);
            }
        }

        private void newYorkToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var newYork = sgworld.Creator.CreatePosition(-74, 40.716667, 1000, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 0, -45, 0, 0);
            MessageBox.Show("Click ok fly to New York city");
            sgworld.Navigate.FlyTo(newYork, ActionCode.AC_FLYTO);
        }

        private void losAngelesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var losAngeles = sgworld.Creator.CreatePosition(-118.25, 34.05, 1000, AltitudeTypeCode.ATC_TERRAIN_RELATIVE, 0, -45, 0, 0);
            MessageBox.Show("Click ok fly to Los Angeles city");
            sgworld.Navigate.FlyTo(losAngeles, ActionCode.AC_FLYTO);
        }

        private void 自定义漫游路径ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            manyou manyouform = new manyou();
            manyouform.Show();
        }

        private void 加载shp数据ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string path = Application.StartupPath + "\\data\\国界\\bou1_4l.shp";
            string XMLLayerInfo = "<PlugData><LayerName>" + path + "</LayerName><PlugType>shape</PlugType><AttributesToLoad>AREA,STATE_NAME,POP1990,POP2000</AttributesToLoad><StreamedLayer>0</StreamedLayer></PlugData>";
            iLyr = IInfoTree.CreateLayer("国界", XMLLayerInfo, 0);//在根目录下装载shp数据
            string path2 = Application.StartupPath + "\\data\\国界与省界\\bou2_4l.shp";
            string XMLLayerInfo2 = "<PlugData><LayerName>" + path2 + "</LayerName><PlugType>shape</PlugType><AttributesToLoad>AREA,STATE_NAME,POP1990,POP2000</AttributesToLoad><StreamedLayer>0</StreamedLayer></PlugData>";
            iLyr2 = IInfoTree.CreateLayer("国界与省界", XMLLayerInfo2, 0);//在根目录下装载shp数据
            string path3 = Application.StartupPath + "\\data\\首都和省级行政中心\\res1_4m.shp";
            string XMLLayerInfo3 = "<PlugData><LayerName>" + path3 + "</LayerName><PlugType>shape</PlugType><AttributesToLoad>AREA,STATE_NAME,POP1990,POP2000</AttributesToLoad><StreamedLayer>0</StreamedLayer></PlugData>";
            iLyr3 = IInfoTree.CreateLayer("首都和省级行政中心", XMLLayerInfo3, 0);//在根目录下装载shp数据
            string path4 = Application.StartupPath + "\\data\\主要公路\\roa_4m.shp";
            string XMLLayerInfo4 = "<PlugData><LayerName>" + path4 + "</LayerName><PlugType>shape</PlugType><AttributesToLoad>AREA,STATE_NAME,POP1990,POP2000</AttributesToLoad><StreamedLayer>0</StreamedLayer></PlugData>";
            iLyr4 = IInfoTree.CreateLayer("主要公路", XMLLayerInfo4, 0);//在根目录下装载shp数据
            string path5 = Application.StartupPath + "\\data\\主要铁路\\rai_4m.shp";
            string XMLLayerInfo5 = "<PlugData><LayerName>" + path5 + "</LayerName><PlugType>shape</PlugType><AttributesToLoad>AREA,STATE_NAME,POP1990,POP2000</AttributesToLoad><StreamedLayer>0</StreamedLayer></PlugData>";
            iLyr5 = IInfoTree.CreateLayer("主要铁路", XMLLayerInfo5, 0);//在根目录下装载shp数据
            iLyr.Load();
            iLyr2.Load();
            iLyr3.Load();
            iLyr4.Load();
            iLyr5.Load();
        }

        private void CreateHierarchy()//创建信息树方法
        {
            try
            {
                var newEngland = sgworld.ProjectTree.CreateGroup("New England", 0);
                var states = sgworld.ProjectTree.CreateGroup("States", newEngland);
                var stateLabelStype = sgworld.Creator.CreateLabelStyle(SGLabelStyle.LS_DEFAULT);
                stateLabelStype.LineToGround = true;
                stateLabelStype.TextColor.FromARGBColor((uint)Color.Beige.ToArgb());
                var Vermont = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-72.75206, 43.91127, 80000.0, 0, 0.0, 0, -85, 800000.0), "Vermont", stateLabelStype, states, "Vermont");
                var Maine = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-69.40414, 45.12594, 80000.0, 0, 0.0, 0, -85, 800000.0), "Maine", stateLabelStype, states, "Maine");
                var Massachusetts = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-71.88455, 42.34216, 80000.0, 0, 0.0, 0, -85, 800000.0), "Massachusetts", stateLabelStype, states, "Massachusetts");
                var RhodeIsland = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-71.57073, 41.62953, 80000.0, 0, 0.0, 0, -85, 800000.0), "Rhodel Island", stateLabelStype, states, "Rhodel Island");
                var Connecticut = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-72.64295, 41.57912, 80000.0, 0, 0.0, 0, -85, 800000.0), "Connecticut", stateLabelStype, states, "Connecticut");
                sgworld.ProjectTree.ExpandGroup(newEngland, true);
                //sgworld.Navigate.FlyTo(Vermont, ActionCode.AC_FLYTO);
                //MessageBox.Show("Created group and 5 labels in it.Click Ok to continue");
                var places = sgworld.ProjectTree.CreateGroup("Places", newEngland);
                var placeLabelStyle = sgworld.Creator.CreateLabelStyle(SGLabelStyle.LS_DEFAULT);
                placeLabelStyle.LineToGround = true;
                placeLabelStyle.TextColor.FromARGBColor((uint)Color.Cyan.ToArgb());
                var LakeChamplain = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-73.333333, 44.533333, 160000.0, 0, 0.0, 0, -85, 800000.0), "Lake Champlain", placeLabelStyle, places, "Lake Champlain");
                var Windsor = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-72.401111, 43.476667, 160000.0, 0, 0.0, 0, -85, 800000.0), "Windsor,Vermont", placeLabelStyle, places, "Windsor,Vermont");
                var NewHaven = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-72.923611, 41.31, 160000.0, 0, 0.0, 0, -85, 800000.0), "New Haven,Connecticut", placeLabelStyle, places, "New Haven,Connecticut");
                var Hartford = sgworld.Creator.CreateTextLabel(sgworld.Creator.CreatePosition(-72.677, 41.767, 160000.0, 0, 0.0, 0, -85, 800000.0), "Hartford,Connecticut", placeLabelStyle, places, "Hartford,Connecticut");
                //MessageBox.Show("Created locked group'Places' and 4 labels in it.You may use right click menu of the group to unlock it and edit its content");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Unexpected error:" + ex.Message);
            }
        }


        private void OnLButtonDown(int Flags, int X, int Y, ref object pbHandled)
        {
            object objType,DX,DY,DH,OID;
            objType= 63;
            IRender.ScreenToWorld(X, Y, ref objType, out DX, out DH, out DY, out OID);
            label2.Text = "经度："+Convert.ToString(DX)+ "纬度："+Convert.ToString(DY);//获取x,y坐标

        }

        private void 文字标签ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LabelForm labelform = new LabelForm();
            labelform.Show();
        }

        private void 百度地图ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            sgworld.Command.Execute(1014, 21);
        }

    }

}
