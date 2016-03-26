update50662
	"self new update50662"
	
Gofer new 
	smalltalkhubUser: 'Moose' project: 'Glamour';
	package: 'ConfigurationOfGlamourCore';
	load.
Gofer new 
	smalltalkhubUser: 'Pharo' project: 'Rubric';
	package: 'ConfigurationOfRubric';
	load.
Gofer new 
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	package: 'ConfigurationOfGToolkitCore';
	package: 'ConfigurationOfGTInspectorCore';
	package: 'ConfigurationOfGTDebugger';
	package: 'ConfigurationOfGTSpotter';
        package: 'ConfigurationOfGTEventRecorder';
	load.
	self withUpdateLog: '17868 GToolkit version 3.16
	https://pharo.fogbugz.com/f/cases/17868'.
	self loadTogether: self script50662 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.16'.self flushCaches.
