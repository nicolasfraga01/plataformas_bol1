#!/usr/bin/env python

import rospy
from publicador.msg import datos

def callback(msg):
    print msg.nombre,"\n",msg.edad,"\n",msg.coeficiente,"\n"

rospy.init_node('sub_eje5')
sub=rospy.Subscriber('/mensaje_personalizado',datos,callback)
rate=rospy.Rate(10)
rospy.spin()