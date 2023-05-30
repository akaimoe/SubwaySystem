from __future__ import division
# Qt
from python_qt_binding import loadUi
from python_qt_binding.QtCore import Qt, QTimer, Signal, Slot
from python_qt_binding.QtGui import QImage, QPixmap
from python_qt_binding.QtWidgets import QHeaderView, QMenu, QTreeWidgetItem, QWidget
# ROS
import roslib
import roslib.message
import roslib.names
import rospkg
import rospy
import rostopic
# Others
import os
 
 
class MyWidget(QWidget):
    def __init__(self):
        super(MyWidget, self).__init__()
        # read UI file
        rp = rospkg.RosPack()
        ui_file = os.path.join(rp.get_path('rqt_mypkg'), 'resource',
                               'MyPlugin.ui')
        loadUi(ui_file, self)
        self.setObjectName('MyPluginUi')
        # connect widget with slot function
        self.Test.clicked.connect(
            self.open_button_slot)  #! Caution the button name here.
        self.progressBar.setValue(3)
 
    @Slot()
    def open_button_slot(self):
        topic_type, real_topic, fields = rostopic.get_topic_type(
            "/camera/rgb/image_raw")
        data_class = roslib.message.get_message_class(topic_type)
        self.mysub = rospy.Subscriber(real_topic, data_class, self.my_callback)
        pass
 
    def my_callback(self, msg):
        print("callback")
        pass
 
    def close_plugin(self):
        try:
            self.mysub.unregister()
        except AttributeError as e:
            rospy.logerr("Subscriber doesn't open.")