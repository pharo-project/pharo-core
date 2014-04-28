update30837
	"self new update30837"
	self withUpdateLog: '13230 clean system organization
	https://pharo.fogbugz.com/f/cases/13230
- clean ScriptLoader
	
Postscript:

Smalltalk globals organization removeMissingClasses.
ScriptLoader new
	removeScriptMethods;
	removeUpdateMethods.
ScriptLoader resetLogStream.
	'.
	self loadTogether: self script490 merge: false.
	Smalltalk globals organization removeMissingClasses.
ScriptLoader new
	removeScriptMethods;
	removeUpdateMethods.
ScriptLoader resetLogStream.
	self flushCaches.
