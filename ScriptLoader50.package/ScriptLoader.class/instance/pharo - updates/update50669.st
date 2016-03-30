update50669
	"self new update50669"
	
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
	self withUpdateLog: '17910 GToolkit version 3.17
	https://pharo.fogbugz.com/f/cases/17910'.
	self loadTogether: self script50669 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.17'.self flushCaches.
