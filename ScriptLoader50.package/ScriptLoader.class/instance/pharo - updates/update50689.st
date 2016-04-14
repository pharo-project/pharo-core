update50689
	"self new update50689"
	
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
	self withUpdateLog: '18001 GToolkit version 3.19
	https://pharo.fogbugz.com/f/cases/18001'.
	self loadTogether: self script50689 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.19'.self flushCaches.
