update60138
	"self new update60138"
	
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
	self loadTogether: self script60138 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.23'.self flushCaches.
