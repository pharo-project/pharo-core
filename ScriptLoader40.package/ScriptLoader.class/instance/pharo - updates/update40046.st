update40046
	"self new update40046"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '13406 Opal should delegate code generation for Slots to the Slot meta object
	https://pharo.fogbugz.com/f/cases/13406'.
	self loadTogether: self script46 merge: false.
	SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
