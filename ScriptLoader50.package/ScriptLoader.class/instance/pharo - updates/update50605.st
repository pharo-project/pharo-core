update50605
	"self new update50605"
	
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
	self withUpdateLog: '17682 Integrate GTools version 3.13
	https://pharo.fogbugz.com/f/cases/17682'.
	self loadTogether: self script50605 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.13'.self flushCaches.
