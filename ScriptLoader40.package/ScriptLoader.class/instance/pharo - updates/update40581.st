update40581
	"self new update40581"
	self withUpdateLog: '13017 Class renaming does not update textual class definition
	https://pharo.fogbugz.com/f/cases/13017

15156 remove AST Interpreter
	https://pharo.fogbugz.com/f/cases/15156'.
	self loadTogether: self script581 merge: false.
	
ScriptLoader new deletePackage: 'AST-Interpreter-Test'.
ScriptLoader new deletePackage: 'AST-Interpreter-Core'.
	self flushCaches.
