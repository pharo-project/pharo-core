update50700
	"self new update50700"
	
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
	self withUpdateLog: '18022 GToolkit version 3.20
	https://pharo.fogbugz.com/f/cases/18022'.
	self loadTogether: self script50700 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.20'.self flushCaches.
