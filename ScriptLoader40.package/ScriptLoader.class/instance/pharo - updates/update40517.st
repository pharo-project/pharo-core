update40517
	"self new update40517"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '11992 Remove tokens from the AST-Core-Node classes
	https://pharo.fogbugz.com/f/cases/11992'.
	self loadTogether: self script517 merge: false.
	SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
self cleanRepositories.
