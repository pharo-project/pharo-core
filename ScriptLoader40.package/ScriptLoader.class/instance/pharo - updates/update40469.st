update40469
	"self new update40469"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '14811 Fix settings for OpalCompiler with new bytecode generator
	https://pharo.fogbugz.com/f/cases/14811

10529 ToolRegistry need to support multiple registrations per tool 
	https://pharo.fogbugz.com/f/cases/10529

'.
	self loadTogether: self script469 merge: false.
	CompilationContext initialize.
CCompilationContext initialize.
SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
self cleanRepositories.
