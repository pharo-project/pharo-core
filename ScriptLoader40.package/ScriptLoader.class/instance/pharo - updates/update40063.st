update40063
	"self new update40063"
	self withUpdateLog: '13466 convertStepList --> cleanStepList (no need to keep the conversation code forever)
	https://pharo.fogbugz.com/f/cases/13466

13468 move methods from AST-Intepreter-Extensions to *-Core
	https://pharo.fogbugz.com/f/cases/13468

13469 Package EventModel is unused --> remove
	https://pharo.fogbugz.com/f/cases/13469

13467 #cleanUpForProduction should unload Versionner
	https://pharo.fogbugz.com/f/cases/13467'.
	self loadTogether: self script63 merge: false.
	ScriptLoader new deletePackage: 'AST-Interpreter-Extension'.
ScriptLoader new deletePackage: 'EventModel'.
	self flushCaches.
