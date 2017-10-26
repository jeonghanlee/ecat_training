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

# 0  0:0   PREOP  +  EK1101 EtherCAT-Koppler (2A E-Bus, ID-Switch)		DB=yes
# 1  0:1   PREOP  +  EL1252-0050 2K. Fast Dig. Eingang 5V, 1�s, DC Latch	DB=No
# 2  0:2   PREOP  +  EL2252 2K. Dig. Ausgang 24V, 0.5A, DC Time Stamp		DB=No
# 3  0:3   PREOP  +  EL3742 2K. Ana. Eingang 0-20mA, 16bit, DIFF, Oversample	DB=NO
# 4  0:4   PREOP  +  EL1014 4K. Dig. Eingang 24V, 10�s				DB=yes
# 5  0:5   PREOP  +  EL3312 2K. Ana. Eingang Thermoelement (TC)			DB=No
# 6  0:6   PREOP  +  EL3602 2K. Ana. Eingang +/- 10Volt, Diff. 24bit		DB=yes
# 7  0:7   PREOP  +  EL3204 4K. Ana. Eingang PT100 (RTD)			DB=yes
# 8  0:8   PREOP  +  EL1502 2K. +/- Zaehler 24V, 100kHz				DB=no
# 9  0:9   PREOP  +  EL3002 2K.Ana. Eingang  +/-10V				DB=no
#10  0:10  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau	DB=yes
#11  0:11  PREOP  +  EK1100 EtherCAT-Koppler (2A E-Bus)				DB=yes
#12  0:12  PREOP  +  EL1014 4K. Dig. Eingang 24V, 10�s				DB=yes
#13  0:13  PREOP  +  EL2004 4K. Dig. Ausgang 24V, 0.5A				DB=yes
#14  0:14  PREOP  +  EL3602 2K. Ana. Eingang +/- 10Volt, Diff. 24bit		DB=yes
#15  0:15  INIT   E  EL3164 4K. Ana. Eingang 0-10V				DB=yes
#16  0:16  PREOP  +  EL4104 4Ch. Ana. Ausgang 0-10V, 16bit			DB=yes
#17  0:17  PREOP  +  EL4124 4Ch. Ana. Output 4-20mA, 16bit			DB=yes
#18  0:18  PREOP  +  EL2502 2K. PWM Ausgang, 24V				DB=yes
#19  0:19  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau	DB=yes
#20  0:20  PREOP  +  EL3214 4K. Ana. Eingang PT100 (RTD)			DB=yes
#21  0:21  PREOP  +  EK1100 EtherCAT-Koppler (2A E-Bus)				DB=yes
#22  0:28  PREOP  +  EL4104 4Ch. Ana. Ausgang 0-10V, 16bit			DB=yes
#23  0:29  PREOP  +  EL3164 4K. Ana. Eingang 0-10V				DB=yes

dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1101_1, SLAVE_IDX=0")
#dbLoadRecords("ecat2el1252.db", "PREFIX=${PREF}, MOD_ID=EL1252-0050, SLAVE_IDX=1")
#dbLoadRecords("ecat2el2252.db", "PREFIX=${PREF}, MOD_ID=EL2252, SLAVE_IDX=2")
#dbLoadRecords("ecat2el3742.db", "PREFIX=${PREF}, MOD_ID=EL3742, SLAVE_IDX=3")
dbLoadRecords("ecat2el1014.db", "PREFIX=${PREF}, MOD_ID=EL1014_a, SLAVE_IDX=4")
#dbLoadRecords("ecat2el3312.db", "PREFIX=${PREF}, MOD_ID=EL3312, SLAVE_IDX=5")
dbLoadRecords("ecat2el3602.db", "PREFIX=${PREF}, MOD_ID=EL3602_a, SLAVE_IDX=6")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3204, SLAVE_IDX=7")
#dbLoadRecords("ecat2el1502.db", "PREFIX=${PREF}, MOD_ID=EL1502, SLAVE_IDX=8")
#dbLoadRecords("ecat2el3002.db", "PREFIX=${PREF}, MOD_ID=EL3002, SLAVE_IDX=9")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202-0010_a, SLAVE_IDX=10")
dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1100_2, SLAVE_IDX=11")
dbLoadRecords("ecat2el1014.db", "PREFIX=${PREF}, MOD_ID=EL1014_b, SLAVE_IDX=12")
dbLoadRecords("ecat2el2004.db", "PREFIX=${PREF}, MOD_ID=EL2004, SLAVE_IDX=13")
dbLoadRecords("ecat2el3602.db", "PREFIX=${PREF}, MOD_ID=EL3602_b, SLAVE_IDX=14")
dbLoadRecords("ecat2el3164.db", "PREFIX=${PREF}, MOD_ID=EL3164_s, SLAVE_IDX=15")
dbLoadRecords("ecat2el4104.db", "PREFIX=${PREF}, MOD_ID=EL4104_a, SLAVE_IDX=16")
dbLoadRecords("ecat2el4122.db", "PREFIX=${PREF}, MOD_ID=EL4124, SLAVE_IDX=17")
dbLoadRecords("ecat2el2502.db", "PREFIX=${PREF}, MOD_ID=EL2502, SLAVE_IDX=18")
dbLoadRecords("ecat2el3202.db", "PREFIX=${PREF}, MOD_ID=EL3202-0010_b, SLAVE_IDX=19")
dbLoadRecords("ecat2el3214.db", "PREFIX=${PREF}, MOD_ID=EL3214, SLAVE_IDX=20")
dbLoadRecords("ecat2ek1101.db", "PREFIX=${PREF}, MOD_ID=EK1100_3, SLAVE_IDX=21")
dbLoadRecords("ecat2el4104.db", "PREFIX=${PREF}, MOD_ID=EL4104_b, SLAVE_IDX=22")
dbLoadRecords("ecat2el3164.db", "PREFIX=${PREF}, MOD_ID=EL3164_b, SLAVE_IDX=23")

dbl > "${TOP}/${IOC}_PVs.list"


