update60237
	"self new update60237"
	
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
	self withUpdateLog: '19126 GToolkit version 3.28
	https://pharo.fogbugz.com/f/cases/19126'.
	self loadTogether: self script60237 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.28'.self flushCaches.
