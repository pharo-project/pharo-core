update60128
	"self new update60128"
	
Gofer new 
	smalltalkhubUser: 'Moose' project: 'Glamour';
	package: 'ConfigurationOfGlamourCore';
	load.

Gofer new 
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	package: 'ConfigurationOfGToolkitCore';
	package: 'ConfigurationOfGTInspectorCore';
	package: 'ConfigurationOfGTDebugger';
	package: 'ConfigurationOfGTSpotter';
   package: 'ConfigurationOfGTEventRecorder';
	load.
	self withUpdateLog: '18621 GToolkit Version 3.23
	https://pharo.fogbugz.com/f/cases/18621'.
	self loadTogether: self script60128 merge: false.
	self flushCaches.
