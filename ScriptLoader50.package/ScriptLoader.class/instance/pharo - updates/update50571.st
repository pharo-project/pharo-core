update50571
	"self new update50571"
	
(MCPackage named: 'GTInspector-Help') unload.	
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
.
	self withUpdateLog: '17458 Integrate GTools version 3.10
	https://pharo.fogbugz.com/f/cases/17458'.
	self loadTogether: self script50571 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.10'.self flushCaches.
