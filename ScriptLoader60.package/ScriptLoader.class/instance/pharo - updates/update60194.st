update60194
	"self new update60194"
	
Gofer new 
	smalltalkhubUser: 'Moose' project: 'Glamour';
	package: 'ConfigurationOfGlamourCore';
	load.

Gofer new 
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	package: 'ConfigurationOfGTInspectorCore';
	package: 'ConfigurationOfGTPlaygroundCore';
	package: 'ConfigurationOfGTDebugger';
	package: 'ConfigurationOfGTSpotter';
   package: 'ConfigurationOfGTEventRecorder';
	load.
	
GTExampleOrganizer instance reset.
GTExampleOrganizer instance stopThoroughly.
GTExampleOrganizer stop.
Smalltalk garbageCollect.
self assert: GTExample allSubInstances isEmpty.
self assert: GTExampleMethod allSubInstances isEmpty.

Deprecation raiseWarning: false.
	self withUpdateLog: '18982 GToolkit Version 3.27
	https://pharo.fogbugz.com/f/cases/18982'.
	self loadTogether: self script60194 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.27'.
Deprecation raiseWarning: true.
	self flushCaches.
