#!../../bin/linux-x86_64/Mixer

## You may have to change Mixer to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Mixer.dbd"
Mixer_registerRecordDeviceDriver pdbbase
drvAsynIPPortConfigure ("Mixer1","10.112.63.91:10001",0,0,0)


#This prints low level commands and responses
#asynSetTraceMask("Mixer1",0,0xFF)
#asynSetTraceIOMask("Mixer1",0,0xFF)







dbLoadRecords(db/Mixer.db)



cd ${TOP}/iocBoot/${IOC}
iocInit
#Debuggin retries
dbpf BL4A:SE:Mixer:WritePosition.TPRO 1

var mediatorVerbosity 7

var mySubDebug 7


## Start any sequence programs
#seq sncxxx,"user=zmaHost"
