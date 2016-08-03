update60165
	"self new update60165"
	
Gofer it
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	configurationOf: #GTPlaygroundCore; load;
	configurationOf: #GTInspectorCore; load;
	configurationOf: #GTSpotter; load;
	configurationOf: #GTDebugger; load;
	configurationOf: #GTEventRecorder; load;
	configurationOf: #GTDebugger; load.

Gofer it
	smalltalkhubUser: 'Moose' project: 'Glamour';
	configurationOf: #GlamourCore; load.
.
	self withUpdateLog: '18773 Integrate GTools
	https://pharo.fogbugz.com/f/cases/18773'.
	self loadTogether: self script60165 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.26'.self flushCaches.
