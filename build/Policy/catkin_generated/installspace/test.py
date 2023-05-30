from ast import Global
from email.policy import Policy
import tkinter as tk
from tkinter import messagebox
import rospy
from std_msgs.msg import String
from Policy.msg import Rount
from Policy.msg import TagPoint

stations = ["七里庙", "三层楼", "三店", "三眼桥", "三角湖", "三角路", "三阳路", "东亭", "东吴大道", "东风公司", "中一路", "中医药大学", "中南医院", "中南路", "中山公园", "临嶂大道", "丹水池", "二七小路", "二七路", "二雅路", "云飞路", "五环体育中心", "五环大道", "五里墩", "仁和路", "体育中心", "余家头", "佛祖岭", "佳园路", "光谷七路", "光谷五路", "光谷六路", "光谷同济医院", "光谷四路", "光谷大道", "光谷广场", "光谷火车站", "光谷生物园", "光霞", "八铺街", "六渡桥", "兴业路", "军民村", "军运村", "凤凰路", "利济北路", "前进村", "北华街", "十里铺", "华中科技大学", "协子河", "南太子湖", "厂前", "友谊路", "双墩", "取水楼", "古田一路", "古田三路", "古田二路", "古田四路", "司门口", "后湖大道", "周家河", "和平公园", "唐家墩", "四新大道", "园博园", "园博园北", "园林路", "国博中心北", "国博中心南", "堤角", "塔子湖", "复兴路", "大军山", "大智路", "大花岭", "天河机场", "天阳大道", "太平洋", "头道街", "孟家铺", "宋家岗", "宏图大道", "宗关", "宝通寺", "小东门", "小军山", "小洪山", "小龟山", "岳家嘴", "崇仁路", "工业四路", "工人村", "左岭", "巨龙大道", "市民之家", "常码头", "常青城", "常青花园", "幸福湾", "广埠屯", "建安街", "建港", "建设二路", "张家湾", "彭刘杨", "径河", "徐东", "徐家棚", "徐州新村", "循礼门", "惠济二路", "拦江路", "文昌路", "文治街", "新农", "新城十一路", "新天", "新庙村", "新河街", "新荣", "新荣客运站", "新路村", "施岗", "昙华林", "未来一路", "未来三路", "朱家河", "杨园铁四院", "杨家湾", "杨春湖", "杨汊湖", "板桥", "枫林", "柏林", "桂子湖", "梅苑小区", "梨园", "楚河汉街", "横店", "武昌火车站", "武汉商务区", "武汉火车站", "武汉站东广场", "武湖", "武生院", "武胜路", "武胜门", "武钢", "水果湖", "永安堂", "汉口北", "汉口火车站", "汉正街", "汉西一路", "汉阳客运站", "汉阳火车站", "江城大道", "江夏客厅", "江汉路", "汤云海路", "汪家墩", "沌口", "沌阳大道", "沙口", "洪山广场", "洪山路", "海口三路", "湖北大学", "湖口", "湖工大", "湾湖", "滕子岗", "滠口新城", "烽火村", "玉龙路", "王家墩东", "王家湾", "珞雄路", "琴台", "瑞安街", "白沙六路", "百步亭", "盘龙城", "省农科院", "省博湖北日报", "知音", "石桥", "码头潭公园", "硚口路", "秀湖", "科普公园", "积玉桥", "竹叶山", "竹叶海", "红钢城", "纱帽", "纸坊大街", "罗家庄", "罗家港", "老关村", "腾龙大道", "航空总部", "舵落口", "花园路", "苗栗路", "范湖", "菱角湖", "蔡甸广场", "藏龙东街", "虎泉", "螃蟹岬", "街道口", "裕福路", "谌家矶", "谭鑫培公园", "豹澥", "赵家条", "车城东路", "轻工大学", "通航机场", "野芷湖", "金台", "金潭路", "金融港北", "金银湖", "金银湖公园", "金银潭", "钟家村", "铁机路", "长岭山", "长港路", "阳逻", "阳逻开发区", "陶家岭", "集贤", "青宜居", "青年路", "青鱼嘴", "青龙", "青龙山地铁小镇", "额头湾", "首义路", "香港路", "马影河", "马房山", "马池", "马湖", "马鹦路", "高车", "黄家湖地铁小镇", "黄浦路", "黄金口", "黄鹤楼", "黄龙山路", "龙阳村"]

TagPointmsg = TagPoint()

rospy.init_node("UI")
pub = rospy.Publisher("/TagPoint",TagPoint,queue_size=10)


def StationNO(StationName):
    for i in range(len(stations)):
        if(stations[i] == StationName):
            return i
    return -1

def SubRound(msg):
    RoundMsg = Rount()
    RoundMsg = msg
    print(RoundMsg.road[0])
    

def GetTagPoint():
    # messagebox.showinfo(title='温馨提示', message='欢迎使用C语言中文网')
    TagPointmsg.StartPoint = 1
    TagPointmsg.EndPoint = 2
    pub.publish(TagPointmsg)
    # sub = rospy.Subscriber("/Round", Rount, SubRound)


top = tk.Tk()
top.title("test")
top.geometry('1000x600')
# top.iconbitmap('/home/altair/img/test.JPG')

# label = tk.Label(top, text=stations[3],font=('宋体',20, 'bold italic'),bg="#7CCD7C",
#                  # 设置标签内容区大小
#                  width=30,height=5,
#                  # 设置填充区距离、边框宽度和其样式（凹陷式）
#                  padx=10, pady=15, borderwidth=10, relief="sunken")
# label.pack()
button = tk.Button(top,text='点击前往',bg='#7CCD7C',width=20, height=5,command=GetTagPoint).grid(row=3, column=0, sticky="w", padx=10, pady=5)
# tk.Button(top, text="登录", width=10, command=GetTagPoint).grid(row=3, column=0, sticky="w", padx=10, pady=5)
# 进入消息循环
top.mainloop()





# msg = String()
    # while not rospy.is_shutdown():

    #     #拼接字符串
    #     msg.data = msg_front + str(count)

    #     pub.publish(msg)
    #     rate.sleep()
    #     rospy.loginfo("写出的数据:%s",msg.data)
    #     count += 1
