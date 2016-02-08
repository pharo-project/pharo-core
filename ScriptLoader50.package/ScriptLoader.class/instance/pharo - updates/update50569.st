update50569
	"self new update50569"
	
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

[ScriptLoader new loadConfiguration: 'GToolkitCore' version: '3.10'] on: Warning do: [:ex | ex resume:true].
	self withUpdateLog: '17458 Integrate GTools version 3.10
	https://pharo.fogbugz.com/f/cases/17458'.
	self loadTogether: self script50569 merge: false.
	self flushCaches.
