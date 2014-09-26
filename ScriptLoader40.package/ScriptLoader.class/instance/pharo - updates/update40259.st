update40259
	"self new update40259"
	self withUpdateLog: '14076 Move ProtocolRemovalException to Kernel-Exceptions
	https://pharo.fogbugz.com/f/cases/14076'.
	self loadTogether: self script259 merge: false.
	
ScriptLoader new deletePackage: 'ClassOrganizer-Core'.
ScriptLoader new deletePackage: 'ClassOrganizer-Tests'.
	self flushCaches.
