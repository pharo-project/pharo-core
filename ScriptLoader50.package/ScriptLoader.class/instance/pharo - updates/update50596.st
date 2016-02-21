update50596
	"self new update50596"
	
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
	self withUpdateLog: '17657 Integrate GTools version 3.12
	https://pharo.fogbugz.com/f/cases/17657'.
	self loadTogether: self script50596 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.12'.self flushCaches.
