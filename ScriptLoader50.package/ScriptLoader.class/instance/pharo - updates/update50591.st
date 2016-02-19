update50591
	"self new update50591"
	
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
	load.
	self withUpdateLog: '17642 Integrate GTools version 3.11
	https://pharo.fogbugz.com/f/cases/17642'.
	self loadTogether: self script50591 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.11'.self flushCaches.
