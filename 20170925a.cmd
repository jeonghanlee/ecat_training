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
 

# iocuser@icslab-ecat02: ecat_training (master)$ ethercat slaves 
#  0  0:0   PREOP  +  EK1101 EtherCAT-Koppler (2A E-Bus, ID-Switch)            (Yes DB)
#  1  0:1   PREOP  +  EL1252-0050 2K. Fast Dig. Eingang 5V, 1us, DC Latch      (Yes DB)
#  2  0:2   PREOP  +  EL2252 2K. Dig. Ausgang 24V, 0.5A, DC Time Stamp         (No  DB)
#  3  0:3   PREOP  +  EL3742 2K. Ana. Eingang 0-20mA, 16bit, DIFF, Oversample  (No  DB)
#  4  0:4   PREOP  +  EL1014 4K. Dig. Eingang 24V, 10us                        (YES DB)
#  5  0:5   PREOP  +  EL3312 2K. Ana. Eingang Thermoelement (TC)               (No  DB)
#  6  0:6   PREOP  +  EL3602 2K. Ana. Eingang +/- 10Volt, Diff. 24bit          (YES DB)
#  7  0:7   PREOP  +  EL3204 4K. Ana. Eingang PT100 (RTD)                      (No  DB)
#  8  0:8   PREOP  +  EL1502 2K. +/- Zaehler 24V, 100kHz                       (No  DB)
#  9  0:9   PREOP  +  EL3002 2K.Ana. Eingang  +/-10V                           (No  DB)
# 10  0:10  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau      (Yes DB)

dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1101, SLAVE_IDX=0")
#dbLoadRecords("ecat2el1252.db", "PREFIX=${PREF}, MOD_ID=EL1252, SLAVE_IDX=1")
dbLoadRecords("ecat2el1014.db", "PREFIX=${PREF}, MOD_ID=EL1014, SLAVE_IDX=4")
dbLoadRecords("ecat2el3602.db", "PREFIX=${PREF}, MOD_ID=EL3602, SLAVE_IDX=6")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202, SLAVE_IDX=10")
dbLoadTemplate(iocAdminSoft.substitutions, "IOC=${PREF}:${IOCST}")

dbl > "${TOP}/${IOC}_PVs.list"
