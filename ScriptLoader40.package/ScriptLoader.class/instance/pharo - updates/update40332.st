update40332
	"self new update40332"
	
SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '14327 Simplification of the popScope logic in IRTranslator
	https://pharo.fogbugz.com/f/cases/14327'.
	self loadTogether: self script332 merge: false.
	
SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
