# OMNet Code for changing parameters value and adding parameters
#	Adding and changing RSU parameter
c ##########################################################
#                       RSU SETTINGS                     #                                            
##########################################################

#urban RSU
*.rsu[0].mobility.x = 750
*.rsu[0].mobility.y = 100
*.rsu[0].mobility.z = 3
#*.rsu[1].mobility.x = 750
#*.rsu[1].mobility.y = 600
#*.rsu[1].mobility.z = 3
#*.rsu[2].mobility.x = 400
#*.rsu[2].mobility.y = 350
#*.rsu[2].mobility.z = 3
#*.rsu[3].mobility.x = 1200
#*.rsu[3].mobility.y = 350
#*.rsu[3].mobility.z = 3

#highway RSU
#*.rsu[0].mobility.x = 750
#*.rsu[0].mobility.y = 3200
#*.rsu[0].mobility.z = 3
#*.rsu[1].mobility.x = 1000
#*.rsu[1].mobility.y = 2500
#*.rsu[1].mobility.z = 3
#*.rsu[2].mobility.x = 450
#*.rsu[2].mobility.y = 2750
#*.rsu[2].mobility.z = 3
#*.rsu[3].mobility.x = 1050
#*.rsu[3].mobility.y = 3200
#*.rsu[3].mobility.z = 3

.rsu[].applType = "TraCIDemoRSU11p"
.rsu[].appl.headerLength = 80 bit
#.rsu[].appl.sendBeacons = false
#.rsu[].appl.dataOnSch = false
.rsu[].appl.sendBeacons = true
.rsu[].appl.sendWSA=true# added later
.rsu[].appl.avoidBeaconSynchronization=true# added later
#.rsu[].appl.dataOnSch = false
.rsu[].appl.dataOnSch = false
.rsu[].appl.beaconInterval = 10s
.rsu[].appl.beaconUserPriority = 7
.rsu[].appl.dataUserPriority = 5
.rsu[].nic.phy80211p.antennaOffsetZ = 0 mlc,clear all
For the other code section
network RSUExampleScenario extends Scenario
{
    submodules:
        rsu[1]: RSU {
            @display("p=150,140;i=veins/sign/yellowdiamond;is=vs");
        }
}

#	Changing Map Size
##########################################################
#            Simulation parameters                       #
##########################################################
debug-on-errors = true
print-undisposed = true

#sim-time-limit = 200s
sim-time-limit = 2000s

**.scalar-recording = true
**.vector-recording = true

#*.playgroundSizeX = 5000m  ## çerçeve boyutu
#*.playgroundSizeY = 6000m
#*.playgroundSizeZ = 50m

*.playgroundSizeX = 10000m
*.playgroundSizeY = 10000m
*.playgroundSizeZ = 50m 

#	Changing bit rate and transmit power
.*.nic.mac1609_4.txPower = 40mW #20 
.*.nic.mac1609_4.bitrate = 3Mbps #6 *.manager.launchConfig = xmldoc("urban1000.launchd.xml")


#	Changing map and number of vehicle 
 ##########################################################
#                      TraCIScenarioManager parameters                                        #
##########################################################
  
*.manager.launchConfig = xmldoc("urban1000.launchd.xml")

