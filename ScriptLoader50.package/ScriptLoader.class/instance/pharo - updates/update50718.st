update50718
	"self new update50718"
	
Gofer new 
	smalltalkhubUser: 'Moose' project: 'Glamour';
	package: 'ConfigurationOfGlamourCore';
	load.
Gofer new 
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	package: 'ConfigurationOfGTInspectorCore';
        load.
	self withUpdateLog: '18102 Update GTInspector 3.11
	https://pharo.fogbugz.com/f/cases/18102

18101 setting "Write message to debug log file when fall into debugger" cannot be set
	https://pharo.fogbugz.com/f/cases/18101'.
	self loadTogether: self script50718 merge: false.
	self loadConfiguration: 'GTInspectorCore' version: '3.11'.self flushCaches.
