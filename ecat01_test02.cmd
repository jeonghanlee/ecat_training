require ethercat
require ecat2,0.0.1
require ecat2db,0.5.0
require iocStats,1856ef5

#epicsEnvSet("ARCH","linux-x86_64")
epicsEnvSet("TOP", "./")
epicsEnvSet("IOC", "icslab_ecat01")
epicsEnvSet("PREF", "ICSLab:ecat01")
epicsEnvSet("IOCST", "IocStat")
 
# Domain number, Frequency Hz, Auto Configuration, Auto Start
ecat2configure(0,1000,1,1)
 

# iocuser@icslab-ecat02: ecat_training (master)$ ethercat slaves 
#0  0:0  PREOP  +  EK1100 EtherCAT-Koppler (2A E-Bus)
#1  0:1  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#2  0:2  PREOP  +  EK1100 EtherCAT-Koppler (2A E-Bus)
#3  0:3  PREOP  +  EL3602 2K. Ana. Eingang +/- 10Volt, Diff. 24bit
#4  0:4  PREOP  +  EL4102 2K. Ana. Ausgang 0-10V, 16bit
#5  0:5  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#
#
dbLoadRecords("ecat2master.db", "PREFIX=${PREF}")
dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1100-00, SLAVE_IDX=0")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202-00, SLAVE_IDX=1")
#
#
# 
dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1100-01, SLAVE_IDX=2")
dbLoadRecords("ecat2el3602.db", "PREFIX=${PREF}, MOD_ID=EL3602-01, SLAVE_IDX=3")
dbLoadRecords("ecat2el4102.db", "PREFIX=${PREF}, MOD_ID=EL4102-01, SLAVE_IDX=4")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202-01, SLAVE_IDX=5")
#
#
#
#

dbLoadRecords("iocAdminSoft.db", "IOC=${PREF}:${IOCST}")

dbl > "${TOP}/${IOC}_PVs.list"
