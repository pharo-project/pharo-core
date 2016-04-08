update50679
	"self new update50679"
	
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
        package: 'ConfigurationOfGTEventRecorder';
	load.
	self withUpdateLog: '17956 Morph>>#changed: do not check for extension
	https://pharo.fogbugz.com/f/cases/17956

17720 CompiledMethodTrailer>>#sourceCode sends unimplemented messages
	https://pharo.fogbugz.com/f/cases/17720

17960 GToolkit version 3.18
	https://pharo.fogbugz.com/f/cases/17960'.
	self loadTogether: self script50679 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.18'.self flushCaches.
