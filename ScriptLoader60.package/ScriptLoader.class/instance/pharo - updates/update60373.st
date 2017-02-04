update60373
	"self new update60373"
	
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
	self withUpdateLog: '19647 Integrate GTools version 3.33
	https://pharo.fogbugz.com/f/cases/19647'.
	self loadTogether: self script60373 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.33'.self flushCaches.
