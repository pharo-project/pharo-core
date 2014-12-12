update40411
	"self new update40411"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '14514 New OrderedDictionary version without default value 
	https://pharo.fogbugz.com/f/cases/14514

'.
	self loadTogether: self script411 merge: false.
	SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
self cleanRepositories.
