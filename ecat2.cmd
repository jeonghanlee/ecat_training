require ecat2,2.1.2
require ecat2db,0.4.3
require iocStats,3.1.14

#epicsEnvSet("ARCH","linux-x86_64")
epicsEnvSet("TOP", "./")
epicsEnvSet("IOC", "icslab_ecat2")
epicsEnvSet("PREF", "ICSLab:ecat02")
epicsEnvSet("IOCST", "IocStat")
 
# Domain number, Frequency Hz, Auto Configuration, Auto Start
ecat2configure(0,1000,1,1)

