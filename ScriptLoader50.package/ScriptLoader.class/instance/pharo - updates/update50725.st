update50725
	"self new update50725"
	
Gofer new 
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	package: 'ConfigurationOfGToolkitCore';
	package: 'ConfigurationOfGTInspectorCore';
	package: 'ConfigurationOfGTSpotter';
	load.
	self withUpdateLog: '18112 GToolkitVersion 3.21
	https://pharo.fogbugz.com/f/cases/18112'.
	self loadTogether: self script50725 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.21'.self flushCaches.
