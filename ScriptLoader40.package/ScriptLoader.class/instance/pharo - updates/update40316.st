update40316
	"self new update40316"
	SmalltalkImage compilerClass: Compiler.
.
	self withUpdateLog: '14235 IRInterpreter should be replaced by IRVisitor
	https://pharo.fogbugz.com/f/cases/14235

'.
	self loadTogether: self script316 merge: false.
	SmalltalkImage compilerClass: OpalCompiler.
OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
