
// Add a noise to temperature sensor as a new Dataref
//Based on Xplane SDK Sample Codes
//Published by Alireza Ghaderi p30planets@gmail.com

 
 #define XPLM300 = 1;  // This example requires SDK3.0
 
 #include "XPLMPlugin.h"
 #include "XPLMDisplay.h"
 #include "XPLMGraphics.h"
 #include "XPLMProcessing.h"
 #include "XPLMDataAccess.h"
 #include "XPLMMenus.h"
 #include "XPLMUtilities.h"
 #include "XPWidgets.h"
 #include "XPStandardWidgets.h"
 #include "XPLMScenery.h"

#define MSG_ADD_DATAREF 0x01000000           //  Add dataref to DRE message
#define TEMP_NOISE_AMP .05

XPLMDataRef idealTempRef = NULL;          //   temperature_ambient_c
XPLMDataRef sensorTempRef = NULL;          //   Sensor output

 float       idealTemp;                       //  Our custom dataref's value  
 float     sensorTemp;                       //  Our custom dataref's value 
 
 float     RegDataRefInDRE(float elapsedMe, float elapsedSim, int counter, void * refcon);  //  Declare callback to register dataref
 
 float     getSensorVal(void* inRefcon);
 void      setSensorVal(void* inRefcon, float outValue);

 
 float randomizer(float LO, float HI);
 
 PLUGIN_API int XPluginStart(
	 char *        outName,
	 char *        outSig,
	 char *        outDesc)
 {

	 // Plugin Info
	 strcpy(outName, "Noise Temprature Sensor");
	 strcpy(outSig, "aGhaderi.realSensors.temperature");
	 strcpy(outDesc, "realSensor/temp_c is created with defined lag");

   	     sensorTempRef = XPLMRegisterDataAccessor("realSensor/temp_c",
		 xplmType_Float,                                  // The types we support
		 1,                                             // Writable
		 NULL, NULL,      // Integer accessors
		 getSensorVal, setSensorVal,          // Float accessors
		 NULL, NULL,                                    // Doubles accessors
		 NULL, NULL,                                    // Int array accessors
		 NULL, NULL,                                    // Float array accessors
		 NULL, NULL,                                    // Raw data accessors
		 NULL, NULL);                                   // Refcons not used

	 

// Find and intialize our  dataref
	 sensorTempRef = XPLMFindDataRef("realSensor/temp_c");
	 idealTempRef = XPLMFindDataRef("sim/weather/temperature_ambient_c");
	 idealTemp = XPLMGetDataf(idealTempRef);
	 XPLMSetDataf(sensorTempRef, idealTemp);
	 //register the callback
	 XPLMRegisterFlightLoopCallback(RegDataRefInDRE, 1, NULL);   // This FLCB will register our custom dataref in DRE
	 XPLMPluginID PluginID = XPLMFindPluginBySignature("xplanesdk.examples.DataRefEditor");
	 if (PluginID != XPLM_NO_PLUGIN_ID)
	 {
		 XPLMSendMessageToPlugin(PluginID, MSG_ADD_DATAREF, (void*)"realSensor/temp_c");
	 }
	 return 1;
 }
 
  
 PLUGIN_API void     XPluginStop(void)
 { 
	 XPLMUnregisterDataAccessor(sensorTempRef);
	 XPLMUnregisterFlightLoopCallback(RegDataRefInDRE, NULL);	 //  Don't forget to unload this callback.  
 }
  
 PLUGIN_API void XPluginDisable(void)
 {
 }
 
 PLUGIN_API int XPluginEnable(void)
 {
     return 1;
 }
 
 PLUGIN_API void XPluginReceiveMessage(XPLMPluginID    inFromWho,
                                      long             inMessage,
                                      void *           inParam)
 {
 }
 
 float     getSensorVal(void* inRefcon)
 {
     return sensorTemp;
 }
 
 void	setSensorVal(void* inRefcon, float inValue)
 {
      sensorTemp = inValue;
 }


 
 
 //  This single shot FLCB registers our custom dataref in DRE
 float RegDataRefInDRE(float elapsedMe, float elapsedSim, int counter, void * refcon)
 {
	 float idealTempVal = XPLMGetDataf(idealTempRef);
	 float tempT = (idealTempVal + randomizer(-TEMP_NOISE_AMP * idealTempVal, TEMP_NOISE_AMP*idealTempVal));
	 XPLMSetDataf(sensorTempRef, tempT);
     return 1;    
 }


 float randomizer(float LO, float HI) {
	 return LO + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (HI - LO)));
 }
