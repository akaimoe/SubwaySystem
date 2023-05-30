from ast import Global
from email.policy import Policy
import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
from turtle import color
import rospy
from std_msgs.msg import String
from Policy.msg import Rount
from Policy.msg import TagPoint
from PIL import Image, ImageTk 

stations = ["七里庙", "三层楼", "三店", "三眼桥", "三角湖", "三角路", "三阳路", "东亭", "东吴大道", "东风公司", "中一路", "中医药大学", "中南医院", "中南路", "中山公园", "临嶂大道", "丹水池", "二七小路", "二七路", "二雅路", "云飞路", "五环体育中心", "五环大道", "五里墩", "仁和路", "体育中心", "余家头", "佛祖岭", "佳园路", "光谷七路", "光谷五路", "光谷六路", "光谷同济医院", "光谷四路", "光谷大道", "光谷广场", "光谷火车站", "光谷生物园", "光霞", "八铺街", "六渡桥", "兴业路", "军民村", "军运村", "凤凰路", "利济北路", "前进村", "北华街", "十里铺", "华中科技大学", "协子河", "南太子湖", "厂前", "友谊路", "双墩", "取水楼", "古田一路", "古田三路", "古田二路", "古田四路", "司门口", "后湖大道", "周家河", "和平公园", "唐家墩", "四新大道", "园博园", "园博园北", "园林路", "国博中心北", "国博中心南", "堤角", "塔子湖", "复兴路", "大军山", "大智路", "大花岭", "天河机场", "天阳大道", "太平洋", "头道街", "孟家铺", "宋家岗", "宏图大道", "宗关", "宝通寺", "小东门", "小军山", "小洪山", "小龟山", "岳家嘴", "崇仁路", "工业四路", "工人村", "左岭", "巨龙大道", "市民之家", "常码头", "常青城", "常青花园", "幸福湾", "广埠屯", "建安街", "建港", "建设二路", "张家湾", "彭刘杨", "径河", "徐东", "徐家棚", "徐州新村", "循礼门", "惠济二路", "拦江路", "文昌路", "文治街", "新农", "新城十一路", "新天", "新庙村", "新河街", "新荣", "新荣客运站", "新路村", "施岗", "昙华林", "未来一路", "未来三路", "朱家河", "杨园铁四院", "杨家湾", "杨春湖", "杨汊湖", "板桥", "枫林", "柏林", "桂子湖", "梅苑小区", "梨园", "楚河汉街", "横店", "武昌火车站", "武汉商务区", "武汉火车站", "武汉站东广场", "武湖", "武生院", "武胜路", "武胜门", "武钢", "水果湖", "永安堂", "汉口北", "汉口火车站", "汉正街", "汉西一路", "汉阳客运站", "汉阳火车站", "江城大道", "江夏客厅", "江汉路", "汤云海路", "汪家墩", "沌口", "沌阳大道", "沙口", "洪山广场", "洪山路", "海口三路", "湖北大学", "湖口", "湖工大", "湾湖", "滕子岗", "滠口新城", "烽火村", "玉龙路", "王家墩东", "王家湾", "珞雄路", "琴台", "瑞安街", "白沙六路", "百步亭", "盘龙城", "省农科院", "省博湖北日报", "知音", "石桥", "码头潭公园", "硚口路", "秀湖", "科普公园", "积玉桥", "竹叶山", "竹叶海", "红钢城", "纱帽", "纸坊大街", "罗家庄", "罗家港", "老关村", "腾龙大道", "航空总部", "舵落口", "花园路", "苗栗路", "范湖", "菱角湖", "蔡甸广场", "藏龙东街", "虎泉", "螃蟹岬", "街道口", "裕福路", "谌家矶", "谭鑫培公园", "豹澥", "赵家条", "车城东路", "轻工大学", "通航机场", "野芷湖", "金台", "金潭路", "金融港北", "金银湖", "金银湖公园", "金银潭", "钟家村", "铁机路", "长岭山", "长港路", "阳逻", "阳逻开发区", "陶家岭", "集贤", "青宜居", "青年路", "青鱼嘴", "青龙", "青龙山地铁小镇", "额头湾", "首义路", "香港路", "马影河", "马房山", "马池", "马湖", "马鹦路", "高车", "黄家湖地铁小镇", "黄浦路", "黄金口", "黄鹤楼", "黄龙山路", "龙阳村"]

TagPointmsg = TagPoint()

select = {  "一号线": ("径河", "三店", "码头潭公园", "东吴大道", "五环大道", "额头湾", "竹叶海", "舵落口", "古田一路", "古田二路", "古田三路", "古田四路", "汉西一路", "宗关", "太平洋", "硚口路", "崇仁路", "利济北路", "友谊路", "循礼门", "大智路", "三阳路", "黄浦路", "头道街", "二七路", "徐州新村", "丹水池", "新荣", "堤角", "滕子岗", "滠口新城", "汉口北"), 
            "二号线": ("天河机场", "航空总部", "宋家岗", "巨龙大道", "盘龙城", "宏图大道", "常青城", "金银潭", "常青花园", "长港路", "汉口火车站", "范湖", "王家墩东", "青年路", "中山公园", "循礼门", "江汉路", "积玉桥", "螃蟹岬", "小龟山", "洪山广场", "中南路", "宝通寺", "街道口", "广埠屯", "虎泉", "杨家湾", "光谷广场", "珞雄路", "华中科技大学", "光谷大道", "佳园路", "光谷火车站", "黄龙山路", "金融港北", "秀湖", "藏龙东街", "佛祖岭"), 
            "三号线": ("沌阳大道", "东风公司", "体育中心", "三角湖", "汉阳客运站", "四新大道", "陶家岭", "龙阳村", "王家湾", "宗关", "双墩", "武汉商务区", "云飞路", "范湖", "菱角湖", "香港路", "惠济二路", "赵家条", "罗家庄", "二七小路", "兴业路", "后湖大道", "市民之家", "宏图大道"), 
            "四号线": ("柏林", "新庙村", "临嶂大道", "蔡甸广场", "凤凰路", "新农", "知音", "集贤", "新天", "黄金口", "孟家铺", "永安堂", "玉龙路", "王家湾", "十里铺", "七里庙", "五里墩", "汉阳火车站", "钟家村", "拦江路", "复兴路", "首义路", "武昌火车站", "梅苑小区", "中南路", "洪山广场", "楚河汉街", "青鱼嘴", "东亭", "岳家嘴", "铁机路", "罗家港", "园林路", "仁和路", "工业四路", "杨春湖", "武汉火车站"), 
            "五号线": ("武汉站东广场", "厂前", "武钢", "工人村", "青宜居", "红钢城", "和平公园", "建设二路", "科普公园", "余家头", "杨园铁四院", "徐家棚", "三角路", "三层楼", "积玉桥", "昙华林", "武胜门", "司门口", "黄鹤楼", "彭刘杨", "复兴路", "八铺街", "烽火村", "张家湾", "光霞", "白沙六路", "中医药大学"), 
            "六号线": ("新城十一路", "码头潭公园", "五环体育中心", "二雅路", "海口三路", "金银湖公园", "金银湖", "园博园北", "轻工大学", "常青花园", "杨汊湖", "石桥", "唐家墩", "三眼桥", "香港路", "苗栗路", "大智路", "江汉路", "六渡桥", "汉正街", "武胜路", "琴台", "钟家村", "马鹦路", "建港", "前进村", "国博中心北", "国博中心南", "老关村", "江城大道", "车城东路", "东风公司"), 
            "七号线": ("横店", "裕福路", "天阳大道", "腾龙大道", "巨龙大道", "汤云海路", "马池", "园博园北", "园博园", "常码头", "武汉商务区", "王家墩东", "取水楼", "香港路", "三阳路", "徐家棚", "湖北大学", "新河街", "螃蟹岬", "小东门", "武昌火车站", "瑞安街", "建安街", "湖工大", "板桥", "野芷湖", "新路村", "大花岭", "江夏客厅", "谭鑫培公园", "北华街", "纸坊大街", "青龙山地铁小镇"), 
            "八号线": ("金潭路", "宏图大道", "塔子湖", "中一路", "竹叶山", "赵家条", "黄浦路", "徐家棚", "徐东", "汪家墩", "岳家嘴", "梨园", "省博湖北日报", "中南医院", "水果湖", "洪山路", "小洪山", "街道口", "马房山", "文治街", "文昌路", "省农科院", "马湖", "野芷湖", "军运村", "黄家湖地铁小镇"), 
            "十一号线": ("光谷火车站", "湖口", "光谷同济医院", "光谷生物园", "光谷四路", "光谷五路", "光谷六路", "豹澥", "光谷七路", "长岭山", "未来一路", "未来三路", "左岭"), 
            "十六号线": ("通航机场", "纱帽", "周家河", "湾湖", "协子河", "马影河", "桂子湖", "大军山", "枫林", "小军山", "沌口", "南太子湖", "老关村", "国博中心南"), 
            "阳逻线": ("后湖大道", "百步亭", "花园路", "新荣客运站", "幸福湾", "朱家河", "谌家矶", "青龙", "高车", "武湖", "沙口", "军民村", "武生院", "阳逻", "阳逻开发区", "施岗", "金台")} 

rospy.init_node("UI")
pub = rospy.Publisher("/TagPoint",TagPoint,queue_size=10)

def StationNO(StationName):
    for i in range(len(stations)):
        if(stations[i] == StationName):
            return i
    return -1

def SubRound(msg):
    # RoundMsg = Rount()
    RoundMsg = msg
    RoundMsg_txt = str()
    # print("subs")
    # print(RoundMsg.len)
    RoundMsg_txt += "途径站点：\n"
    for i in range(RoundMsg.len1-1):
        print(stations[RoundMsg.road[i]],end=' ')
        RoundMsg_txt += stations[RoundMsg.road[i]] + "->"
        # print(i)
    print(stations[RoundMsg.road[RoundMsg.len1-1]],end=' ')
    RoundMsg_txt += stations[RoundMsg.road[RoundMsg.len1-1]] + "\n\n途径路线：\n"
    for i in range(RoundMsg.len2-1):
        RoundMsg_txt += RoundMsg.roadNo[i] + "->"
    RoundMsg_txt += RoundMsg.roadNo[RoundMsg.len2-1]
    RoundTxt.set(RoundMsg_txt)
    print(" ")

def GetTagPoint():
    TagPointmsg.StartPoint = StationNO(StartPoint_ttk.get())
    TagPointmsg.EndPoint = StationNO(EndPoint_ttk.get())
    pub.publish(TagPointmsg)
    sub = rospy.Subscriber("/Round", Rount, SubRound)


def resize( w_box, h_box, pil_image): #参数是：要适应的窗口宽、高、Image.open后的图片
    w, h = pil_image.size #获取图像的原始大小   
    f1 = 1.0*w_box/w 
    f2 = 1.0*h_box/h    
    factor = min([f1, f2])   
    width = int(w*factor)    
    height = int(h*factor)    
    return pil_image.resize((width, height), Image.ANTIALIAS)  


# def resize( w_box, h_box, pil_image): #参数是：要适应的窗口宽、高、Image.open后的图片
#   w, h = pil_image.size #获取图像的原始大小   
#   f1 = 1.0*w_box/w 
#   f2 = 1.0*h_box/h    
#   factor = min([f1, f2])   
#   width = int(w*factor)    
#   height = int(h*factor)    
#   return pil_image.resize((width, height), Image.ANTIALIAS)



MainWindows = tk.Tk()
MainWindows.title("test")
MainWindows.geometry('1300x950')
MainWindows.config(background='#FFFFFF')

Line1 = tk.Canvas(MainWindows, width=1300, height=950,bd=0,highlightthickness=0,background='white')

Line1.place(x=0, y=0)
# Line1=tk.Canvas(MainWindows)
Line1.create_line(20,20 , 20,919 ,  894,919 , 894,20 , 20,20 , width=3, fill="#DCDCDC")

Line1.create_line(920,20 , 920,740 ,  1280,740 , 1280,20 , 920,20 , width=1, fill="#DCDCDC")

Line1.create_line(920,766 , 920,919 ,  1280,919 , 1280,766 , 920,766 , width=1, fill="#DCDCDC")


TitalTxt = tk.Label(MainWindows, text="地铁路线查询", font=('楷体',20), background='white')
TitalTxt.place(x=980, y=50, width=231, height=41)

#######################站点选择部分#########################

StartPointTxt = tk.Label(MainWindows, text="起点", font=('楷体',12), background='white')
StartPointTxt.place(x=960, y=120, width=100, height=31)

StartxVariable = tk.StringVar()
StartLine_ttk = ttk.Combobox(MainWindows, textvariable=StartxVariable)
StartLine_ttk.place(x=945, y=160, width=140, height=31)
StartLine_ttk['value'] = list(select.keys())

Startder = tk.StringVar()
StartPoint_ttk = ttk.Combobox(MainWindows, textvariable=Startder)
StartPoint_ttk.place(x=945, y=210, width=140, height=31)

# Combobox下拉菜单实现联动
def StartFunc(event):
    StartPoint_ttk.delete(0, tk.END)
    value = StartxVariable.get()
    StartPoint_ttk['value'] = select[value]
    StartPoint_ttk.current(2)     # 设置默认值

StartLine_ttk.bind("<<ComboboxSelected>>", StartFunc)   

###########################################################

EndPointTxt = tk.Label(MainWindows, text="终点", font=('楷体',12), background='white')
EndPointTxt.place(x=1130, y=120, width=100, height=31)

EndxVariable = tk.StringVar()
EndLine_ttk = ttk.Combobox(MainWindows, textvariable=EndxVariable)
EndLine_ttk.place(x=1115, y=160, width=140, height=31)
EndLine_ttk['value'] = list(select.keys())

Endder = tk.StringVar()
EndPoint_ttk = ttk.Combobox(MainWindows, textvariable=Endder)
EndPoint_ttk.place(x=1115, y=210, width=140, height=31)

def EndFunc(event):
    EndPoint_ttk.delete(0, tk.END)
    value = EndxVariable.get()
    EndPoint_ttk['value'] = select[value]
    EndPoint_ttk.current(5) 

EndLine_ttk.bind("<<ComboboxSelected>>", EndFunc)

#######################按钮部分##############################

button = tk.Button(MainWindows,text='点击前往',bg='#7CCD7C',width=20, height=5,command=GetTagPoint).place(x=980, y=290, width=231, height=41)


#######################路径打印部分###########################

RoundTxt = tk.StringVar()
RoundTxt_Lab = tk.Label(MainWindows, textvariable=RoundTxt, wraplength=320, background='white')
RoundTxt_Lab.place(x=940, y=360, width=320, height=378)

######################作者信息部分###########################

MyMsg = tk.Label(MainWindows, text="作者：Akai \n 指导老师：陈晨 \n 特别鸣谢：Myaki、agou", font=('楷体',12), background='white')
MyMsg.place(x=940, y=790, width=320, height=100)

#######################左侧地图部分##########################
# photo = tk.PhotoImage(file="/home/altair/item/SubwaySystem/img/Subway_img.png")
Map_img = Image.open("/home/altair/item/SubwaySystem/img/Subway_img.png")
Tag_img = Image.open("/home/altair/item/SubwaySystem/img/Legend_img.png")
Round_img = Image.open("/home/altair/item/SubwaySystem/img/Round_date.png")
MapDate_img = Image.open("/home/altair/item/SubwaySystem/img/Map_date.png")

Map_img_cha = resize(1000, 810, Map_img)
Tag_img_cha = resize(271, 97, Tag_img)  
Round_img_cha = resize(729, 97, Round_img) 
MapDate_img_cha = resize(900, 99, MapDate_img) 

Map_img_tk = ImageTk.PhotoImage(Map_img_cha)
Tag_img_tk = ImageTk.PhotoImage(Tag_img_cha)
Round_img_tk = ImageTk.PhotoImage(Round_img_cha)
MapDate_img_tk = ImageTk.PhotoImage(MapDate_img_cha)

tk.Label(MainWindows, image=MapDate_img_tk).place(x=20, y=820, width=875, height=99)
# tk.Label(MainWindows, image=Tag_img_tk).place(x=24, y=815, width=271, height=97)
tk.Label(MainWindows, image=Map_img_tk).place(x=20, y=20, width=875, height=800)
# tk.Label(MainWindows, image=Round_img_tk).place(x=295, y=815, width=729, height=97)





MainWindows.mainloop()
