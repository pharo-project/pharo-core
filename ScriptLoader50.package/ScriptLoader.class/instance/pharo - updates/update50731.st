update50731
	"self new update50731"
	
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
	self withUpdateLog: '17948 Bindings in the evaluator pane in Inspector
	https://pharo.fogbugz.com/f/cases/17948'.
	self loadTogether: self script50731 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.22'.self flushCaches.
