# geophysics_fieldwork
20160905 created

## 文件夹、文件说明

由于是个人项目，不对文件夹及文件命名规则进行详细说明。

### 文件夹

**geoelectrics** 地电学实习数据，计算程序及成果。

### 文件

#### geoelectrics 文件夹

**20160906_bedrock_exploration_data.txt** 国软操场基岩勘探数据，行为测深点，列为不同测深AB。测深点位置从上到下编号，具体位置由 **bedrock_exploration_point.jpg** 给出，AB从左到右增大，具体数值由 **bedrock_exploration_line.jpg** 给出，均按从小到大次序排列，第一条测线测深点间距为5m，第二条测线测深点间距为10m；

**20160907_bomb_shelter_exploration_data.txt** 珞珈山防空洞勘探数据, 行为测深点，前六行为防空洞南口测深数据，后四行为北口，列为不同AB对应的测深点。测深点从上到下编号，自东向西排列，AB数值为4, 8, 12, 16, 20排列，测深点间距为2m；

**20160908_underground_ab_data.txt** 3校区天文台前地下异常体探测数据，行代表6条测线，列为同一测线上的测点，测线从上到下按从北到南排列，测点按从西向东排列，测线间距为6m，测点间距为5m；

**b_bisect_xyz_1.txt** 国软操场基岩勘探数据计算得到的视电阻率数据，按照标准跑道赋予各个测深点坐标后得到的用于GMT绘制剖面图的数据，最后一个编号对应从小到大AB对应的不同剖面的数据；

**b_bisect_xyz_2.txt** 同上；

**b_bisect_xyz_3.txt** 同上；

**b_bisect_xyz_4.txt** 同上；

**b_bisect_xyz_5.txt** 同上；

**b_bisect_xyz_6.txt** 同上；

**bedrock_bisect_AB_6.jpg** 国软操场基岩勘探剖面图，对应编号为6的AB；

**bedrock_bisect_AB_6.ps** 同上；

**bedrock_exploration_line.jpg** 地电学实习，国软操场基岩勘探，对称四极测深法每个测点AB, MN设计；

**bedrock_exploration_point.jpg** 地电学实习，国软操场基岩勘探，测深点沿测线分布示意图。

**bedrock_m1_rho_s.txt** 国软操场基岩勘探数据第1条测线计算得到的视电阻率数据，从Matlab导出；

**bedrock_m2_rho_s.txt** 国软操场基岩勘探数据第2条测线计算得到的视电阻率数据，从Matlab导出；

**bombs_m_n_rho_s.txt** 珞珈山防空洞北口勘探数据计算得到的视电阻率数据，从Matlab导出；

**bombs_m_s_rho_s.txt** 珞珈山防空洞南口勘探数据计算得到的视电阻率数据，从Matlab导出；

**converter_bm1_to_xyz.f90** 将国软操场基岩勘探数据第1条测线计算得到的视电阻率数据赋予坐标转换为xyz数据；

**converter_bm2_to_xyz.f90** 将国软操场基岩勘探数据第2条测线计算得到的视电阻率数据赋予坐标转换为xyz数据；

**converter_bm_to_bisect_xyz.sh** 通过运行此shell脚本文件，自动编译运行上述两条测线的转换程序，并将两条测线数据合并，按照不同AB值生成上述用于GMT绘图的6个xyz文件；

**converter_ua_to_rho_s_xyz.f90** 由3校区天文台前地下异常体勘探数据计算视电阻率，并赋予坐标转换为xyz数据；

**draw_b_bisect_papers.sh** 绘制国软操场基岩勘探剖面图的GMT命令脚本，绘制出图像为上北下南，左西右东；

**draw_profile_papers.m** 绘制国软操场基岩勘探及珞珈山防空洞勘探电测深曲线及断面图的Matlab程序文件，具体使用时通过更改注释部分来绘制不同图像，通过更改输入数据来选择绘制国软或防空洞的断面图；

**draw_ua_bisect_papers.sh** 绘制3校区天文台前地下异常体勘探剖面图的GMT命令脚本，绘制出的图像为上北下南，左西右东；

**judge_AB.m** 国软操场基岩勘探判断AB间距取值范围的Matlab自定义函数，将绘图部分命令注释掉，亦用作draw_profile_papers计算视电阻率的子程序；

**matlab.mat** 上述Matlab绘图程序调用的数据，已经按顺序排列好，可以直接在m文件中更改对应的变量名来绘制不同勘探的断面图；

**ua_bisect.jpg** 3校区天文台前地下异常体勘探剖面图；

**ua_bisect.ps** 同上；

**ua_bisect_xyz.txt** 3校区天文台前地下异常体勘探数据计算得到的视电阻率数据，按照标准跑道赋予各个测深点坐标后得到的用于GMT绘制剖面图的数据；
