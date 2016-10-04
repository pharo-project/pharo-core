update60250
	"self new update60250"
	
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
	self withUpdateLog: '19171 GToolkit Version 3.29
	https://pharo.fogbugz.com/f/cases/19171'.
	self loadTogether: self script60250 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.29'.self flushCaches.
