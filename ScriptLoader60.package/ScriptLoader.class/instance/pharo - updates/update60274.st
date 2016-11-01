update60274
	"self new update60274"
	
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
	self withUpdateLog: '19268 GToolkit version 3.30
	https://pharo.fogbugz.com/f/cases/19268'.
	self loadTogether: self script60274 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.30'.self flushCaches.
