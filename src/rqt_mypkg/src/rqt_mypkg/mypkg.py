import os
import rospy
import rospkg
from qt_gui.plugin import Plugin
from mypkg_widget import MyWidget
 
 
class MyPlugin(Plugin):
    def __init__(self, context):
        super(MyPlugin, self).__init__(context)
        self.setObjectName('MyPlugin')
        self._widget = MyWidget()  # MY GUI Widget
        if context.serial_number() > 1:
            self._widget.setWindowTitle(self._widget.windowTitle() +
                                        (' (%d)' % context.serial_number()))
        context.add_widget(self._widget)  # Add widget to the user interface
 
    def shutdown_plugin(self):
        self._widget.close_plugin()
        # Just make sure to stop timers and publishers, unsubscribe from Topics etc in the shutdown_plugin method.
        pass
 
    def save_settings(self, plugin_settings, instance_settings):
        pass
 
    def restore_settings(self, plugin_settings, instance_settings):
        pass