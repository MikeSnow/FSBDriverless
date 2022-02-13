import sys
import tkinter as tk
import tkinter.ttk as ttk
import rospy
from std_msgs.msg import String
from std_msgs.msg import Bool

class PruebaApp:
    def __init__(self, master):

        # build ui
        master.title('Maquina de Estados')
        self.raiz = tk.Frame(master)
        self.misiones = ['Acceleration', 'Skidpad', 'Autocross', 'Trackdrive', ' EBS test', 'Inspection', 'Manual driving']
        self.misionActual = tk.Entry(self.raiz)
        self.misionActual.grid(column='1', row='1', sticky='e')
        self.misionLabel = tk.Label(self.raiz)
        self.misionLabel.configure(background='#8080ff', cursor='arrow', font='TkDefaultFont', text='Mision actual:')
        self.misionLabel.grid(column='0', row='1')
        self.ssLabel = ttk.Label(self.raiz)
        self.ssLabel.configure(background='#8080ff', text='StandStill:')
        self.ssLabel.grid(column='0', row='2')
        self.ebsLabel = tk.Label(self.raiz)
        self.ebsLabel.configure(background='#8080ff', cursor='based_arrow_down', text='EBS:')
        self.ebsLabel.grid(column='0', row='3')
        self.ebs_v = tk.BooleanVar()
        self.ebsC = tk.Checkbutton(self.raiz, variable = self.ebs_v)
        self.ebsC.configure(background='#8080ff')
        self.ebsC.grid(column='1', row='3')
        self.standstill_v = tk.BooleanVar()
        self.sstill = tk.Checkbutton(self.raiz, variable=self.standstill_v)
        self.sstill.configure(background='#8080ff')
        self.sstill.grid(column='1', row='2')
        self.asmsLabel = tk.Label(self.raiz)
        self.asmsLabel.configure(background='#8080ff', text='ASMS:')
        self.asmsLabel.grid(column='0', row='4')
        self.asms_v = tk.BooleanVar()
        self.asmsC = tk.Checkbutton(self.raiz, variable = self.asms_v)
        self.asmsC.configure(background='#8080ff', takefocus=True)
        self.asmsC.grid(column='1', row='4')
        self.asbLabel = tk.Label(self.raiz)
        self.asbLabel.configure(background='#8080ff', font='TkTextFont', text='ASB:')
        self.asbLabel.grid(column='0', row='5')
        self.asb_v = tk.BooleanVar()
        self.asbC = tk.Checkbutton(self.raiz, variable = self.asb_v)
        self.asbC.configure(background='#8080ff', offrelief='flat')
        self.asbC.grid(column='1', row='5')
        self.tsLabel = tk.Label(self.raiz)
        self.tsLabel.configure(background='#8080ff', cursor='arrow', relief='flat', text='TS Active:')
        self.tsLabel.grid(column='0', row='6')
        self.ts_v = tk.BooleanVar()
        self.tsactive = tk.Checkbutton(self.raiz, variable= self.ts_v)
        self.tsactive.configure(background='#8080ff')
        self.tsactive.grid(column='1', row='6')
        self.r2dLabel = tk.Label(self.raiz)
        self.r2dLabel.configure(background='#8080ff', relief='flat', text='Ready to Drive:')
        self.r2dLabel.grid(column='0', row='7')
        self.r2d_v = tk.BooleanVar()
        self.r2dC = tk.Checkbutton(self.raiz, variable = self.r2d_v)
        self.r2dC.configure(background='#8080ff')
        self.r2dC.grid(column='1', row='7')
        self.brakesLabel = tk.Label(self.raiz)
        self.brakesLabel.configure(background='#8080ff', takefocus=False, text='Brakes Engaged:')
        self.brakesLabel.grid(column='0', row='8')
        self.brakes_v = tk.BooleanVar()
        self.brakes = tk.Checkbutton(self.raiz, variable = self.brakes_v)
        self.brakes.configure(background='#8080ff', cursor='based_arrow_down', justify='left')
        self.brakes.grid(column='1', row='8')
        self.labelNull = tk.Label(self.raiz)
        self.labelNull.configure(background='#8080ff', justify='left', text='  ')
        self.labelNull.grid(column='2', row='0')
        self.labelNull2 = tk.Label(self.raiz)
        self.labelNull2.configure(background='#8080ff')
        self.labelNull2.grid(column='0', row='9')
        self.estadoLabel = tk.Label(self.raiz)
        self.estadoLabel.configure(background='#8080ff', cursor='arrow', relief='raised', text='Estado actual: ')
        self.estadoLabel.grid(column='0', row='10')
        self.estado_v = tk.StringVar()
        self.estado_v.set('AS Emergency')
        self.estado = tk.Label(self.raiz, textvariable=self.estado_v)
        self.estado.configure(font='TkDefaultFont', relief='raised', text='                          ')
        self.estado.grid(column='1', row='10')
        self.labelNull3 = tk.Label(self.raiz)
        self.labelNull3.configure(background='#8080ff', relief='flat')
        self.labelNull3.grid(column='0', row='12')
        self.actualizar = tk.Button(self.raiz)
        self.actualizar.configure(cursor='arrow', default='normal', font='TkMenuFont', text='Actualizar Estado')
        self.actualizar.grid(column='0', row='13')
        self.actualizar.bind('<1>', self.callback, add='')
        self.raiz.configure(background='#8080ff', height='300', width='500')
        self.raiz.grid(column='0', row='0')
        self.raiz.grid_anchor('center')

        # Main widget
        self.mainwindow = self.raiz




    def rosInit(self):
        self.mission = rospy.Publisher('MISSION', String, queue_size=10)
        self.state = rospy.Publisher('STATE', String, queue_size=10)
        self.standstill = rospy.Publisher('SS', Bool, queue_size=10)
        self.ebs = rospy.Publisher('EBS', Bool, queue_size=10)
        self.asms_on = rospy.Publisher('ASMS', Bool, queue_size=10)
        self.asb_check = rospy.Publisher('ASB', Bool, queue_size=10)
        self.ts_active = rospy.Publisher('TS', Bool, queue_size=10)
        self.r2d = rospy.Publisher('R2D', Bool, queue_size=10)
        self.brakes_engaged = rospy.Publisher('BRAKES', Bool, queue_size=10)

        self.node = rospy.init_node('talker', anonymous=True)
        self.rate = rospy.Rate(1)  # 1hz

    def callback(self, event=None):
        # Actualizar

        # String
        mission_m = self.misionActual.get()

        # Bool
        standstill_m = self.standstill_v.get()

        ebs_m = self.ebs_v.get()
        asms_on_m = self.asms_v.get()
        asb_check_m = self.asb_v.get()
        ts_active_m = self.ts_v.get()
        r2d_m = self.r2d_v.get()
        brakes_engaged_m = self.brakes_v.get()

        if (ebs_m):
            if (mission_m == "Finished" and standstill_m):
                state_m = "AS Finished"
            else:
                state_m = "AS Emergency"
        else:
            if (mission_m != "Finished" and mission_m in self.misiones and asms_on_m and asb_check_m and ts_active_m):
                if (r2d_m):
                    state_m = "AS Driving"
                else:
                    if (brakes_engaged_m):
                        state_m = "AS Ready"
                    else:
                        state_m = "AS Off"
            else:
                state_m = "AS Off"

        # messages get printed to screen, it gets written to the Node's log file, and it gets written to rosout
        rospy.loginfo(mission_m)
        rospy.loginfo(standstill_m)
        rospy.loginfo(ebs_m)
        rospy.loginfo(asms_on_m)
        rospy.loginfo(asb_check_m)
        rospy.loginfo(ts_active_m)
        rospy.loginfo(r2d_m)
        rospy.loginfo(brakes_engaged_m)
        rospy.loginfo(state_m)

        # Publish
        self.mission.publish(mission_m)
        self.standstill.publish(standstill_m)
        self.ebs.publish(ebs_m)
        self.asms_on.publish(asms_on_m)
        self.asb_check.publish(asb_check_m)
        self.ts_active.publish(ts_active_m)
        self.r2d.publish(r2d_m)
        self.brakes_engaged.publish(brakes_engaged_m)
        self.state.publish(state_m)

        self.estado_v.set(state_m)

        self.rate.sleep()


    def run(self):
        try:
            self.rosInit()
        except rospy.ROSInterruptException:
            print('Ha ocurrido un error')
            sys.exit(0)

        print('rosinit')

        self.mainwindow.mainloop()



if __name__ == '__main__':
    root = tk.Tk()
    app = PruebaApp(root)
    app.run()

