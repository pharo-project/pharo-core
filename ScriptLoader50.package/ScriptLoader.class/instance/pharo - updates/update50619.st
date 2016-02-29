update50619
	"self new update50619"
	
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
	self withUpdateLog: '17724 GTools Version 3.14
	https://pharo.fogbugz.com/f/cases/17724'.
	self loadTogether: self script50619 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.14'.
GTExampleOrganizer instance stopThoroughly; reset; start.
	self flushCaches.
