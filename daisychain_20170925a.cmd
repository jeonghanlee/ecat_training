require ecat2,2.1.2
require ecat2db,0.4.3
require iocStats,3.1.14

#epicsEnvSet("ARCH","linux-x86_64")
epicsEnvSet("TOP", "./")
epicsEnvSet("IOC", "icslab_ecat2")
epicsEnvSet("PREF", "ICSLab:daisychain")
epicsEnvSet("IOCST", "IocStat")
 
# Domain number, Frequency Hz, Auto Configuration, Auto Start
ecat2configure(0,1,1,1)
 

# iocuser@icslab-ecat02: ecat_training (master)$ ethercat slaves 
# 0  0:0   PREOP  +  EK1100 EtherCAT-Koppler (2A E-Bus)
# 1  0:1   PREOP  +  EL1014 4K. Dig. Eingang 24V, 10�s
# 2  0:2   PREOP  +  EL2004 4K. Dig. Ausgang 24V, 0.5A
# 3  0:3   PREOP  +  EL3602 2K. Ana. Eingang +/- 10Volt, Diff. 24bit
# 4  0:4   PREOP  +  EL3164 4K. Ana. Eingang 0-10V
# 5  0:5   PREOP  +  EL4104 4Ch. Ana. Ausgang 0-10V, 16bit
# 6  0:6   PREOP  +  EL4124 4Ch. Ana. Output 4-20mA, 16bit
# 7  0:7   PREOP  +  EL2502 2K. PWM Ausgang, 24V
# 8  0:8   PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
# 9  0:9   PREOP  +  EL3214 4K. Ana. Eingang PT100 (RTD)
#10  0:10  PREOP  +  EK1101 EtherCAT-Koppler (2A E-Bus, ID-Switch)
#11  0:11  PREOP  +  EL1252-0050 2K. Fast Dig. Eingang 5V, 1�s, DC Latch
#12  0:12  PREOP  +  EL2252 2K. Dig. Ausgang 24V, 0.5A, DC Time Stamp
#13  0:13  PREOP  +  EL3742 2K. Ana. Eingang 0-20mA, 16bit, DIFF, Oversample
#14  0:14  PREOP  +  EL1014 4K. Dig. Eingang 24V, 10�s
#15  0:15  PREOP  +  EL3312 2K. Ana. Eingang Thermoelement (TC)
#16  0:16  PREOP  +  EL3602 2K. Ana. Eingang +/- 10Volt, Diff. 24bit
#17  0:17  PREOP  +  EL3204 4K. Ana. Eingang PT100 (RTD)
#18  0:18  PREOP  +  EL1502 2K. +/- Zaehler 24V, 100kHz
#19  0:19  PREOP  +  EL3002 2K.Ana. Eingang  +/-10V
#20  0:20  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau


dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1100, SLAVE_IDX=0")
#dbLoadRecords("ecat2el1014.db", "PREFIX=${PREF}, MOD_ID=EL1014, SLAVE_IDX=1")
#dbLoadRecords("ecat2el2004.db", "PREFIX=${PREF}, MOD_ID=EL2004, SLAVE_IDX=2")
#dbLoadRecords("ecat2el3602.db", "PREFIX=${PREF}, MOD_ID=EL3602, SLAVE_IDX=3")
#dbLoadRecords("ecat2el3164.db", "PREFIX=${PREF}, MOD_ID=EL3164, SLAVE_IDX=4")
#dbLoadRecords("ecat2el4104.db", "PREFIX=${PREF}, MOD_ID=EL4104, SLAVE_IDX=5")
#dbLoadRecords("ecat2el4122.db", "PREFIX=${PREF}, MOD_ID=EL4122, SLAVE_IDX=6")
#dbLoadRecords("ecat2el2502.db", "PREFIX=${PREF}, MOD_ID=EL2502, SLAVE_IDX=7")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202, SLAVE_IDX=8")
#dbLoadRecords("ecat2el3214.db", "PREFIX=${PREF}, MOD_ID=EL3214, SLAVE_IDX=9")
dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1101, SLAVE_IDX=10")
#dbLoadRecords("ecat2el1252.db", "PREFIX=${PREF}, MOD_ID=EL1252, SLAVE_IDX=11")
#dbLoadRecords("ecat2el1014.db", "PREFIX=${PREF}, MOD_ID=EL1014, SLAVE_IDX=14")
#dbLoadRecords("ecat2el3602.db", "PREFIX=${PREF}, MOD_ID=EL3602, SLAVE_IDX=16")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202, SLAVE_IDX=20")
dbLoadTemplate(iocAdminSoft.substitutions, "IOC=${PREF}:${IOCST}")

dbl > "${TOP}/${IOC}_PVs.list"
