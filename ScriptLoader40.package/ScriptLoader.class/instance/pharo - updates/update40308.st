update40308
	"self new update40308"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '14218 Opal should be able to compile methods for SqueakV3PlusClosure and Spur
	https://pharo.fogbugz.com/f/cases/14218

'.
	self loadTogether: self script308 merge: false.
	IRAbstractSqueakV3PlusClosuresBytecodeGenerator initialize.
SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
self cleanRepositories.
