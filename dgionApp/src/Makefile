TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = dgion
# dgion.dbd will be created and installed
DBD += dgion.dbd

# dgion.dbd will be made up from these files:
dgion_DBD += base.dbd

# Include dbd files from all support applications:
dgion_DBD += asyn.dbd
dgion_DBD += drvAsynIPPort.dbd
dgion_DBD += calc.dbd
dgion_DBD += stream-base.dbd

# Add all the support libraries needed by this IOC
dgion_LIBS += asyn
dgion_LIBS += calc
dgion_LIBS += stream

# dgion_registerRecordDeviceDriver.cpp derives from dgion.dbd
dgion_SRCS += dgion_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
dgion_SRCS_DEFAULT += dgionMain.cpp
dgion_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#dgion_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
dgion_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

