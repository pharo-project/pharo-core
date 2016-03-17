update50648
	"self new update50648"
	
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
	self withUpdateLog: '17832 Transcript is in NonInteractive mode in non headless images
	https://pharo.fogbugz.com/f/cases/17832

17833 GTools Version 3.15
	https://pharo.fogbugz.com/f/cases/17833

17543 VM crash in Windows when compiling many symbols
	https://pharo.fogbugz.com/f/cases/17543'.
	self loadTogether: self script50648 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.15'.self flushCaches.
