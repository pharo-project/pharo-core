update40425
	"self new update40425"
	self withUpdateLog: '14661 Integrating new bytecode set (part 2) Make CompiledMethod, InstructionStream and Decompiler independent from bytecode set
	https://pharo.fogbugz.com/f/cases/14661

'.
	self loadTogether: self script425 merge: false.
	self flushCaches.
self cleanRepositories.
