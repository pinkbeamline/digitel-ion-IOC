#!../../bin/linux-x86_64/dgion

## You may have to change dgion to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/dgion.dbd"
dgion_registerRecordDeviceDriver pdbbase

epicsEnvSet ("STREAM_PROTOCOL_PATH", ".")

drvAsynIPPortConfigure ("DG1", "172.17.10.75:4006")
asynOctetSetInputEos("DG1",0,"\r")

## Load record instances
dbLoadRecords("db/dgion.db","BL=PINK,DEV=DGION,PORT=DG1")

cd "${TOP}/iocBoot/${IOC}"

iocInit

var streamError 1

## Start any sequence programs
#seq sncxxx,"user=epics"
