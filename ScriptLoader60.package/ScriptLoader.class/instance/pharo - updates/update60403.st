update60403
	"self new update60403"
	
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
	self withUpdateLog: '19727 GTools version 3.35
	https://pharo.fogbugz.com/f/cases/19727'.
	self loadTogether: self script60403 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.35'.self flushCaches.
