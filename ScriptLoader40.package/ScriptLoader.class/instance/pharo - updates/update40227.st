update40227
	"self new update40227"
	self withUpdateLog: '14020 Add test cases which check font installation process and registration on singletons
	https://pharo.fogbugz.com/f/cases/14020
	
14006 3 tests fail for AsmJit in the Pharo4
	https://pharo.fogbugz.com/f/cases/14006

'.
	self loadTogether: self script227 merge: false.
	AJx86InstructionDescription initInstructions.
.
	self flushCaches.
self cleanRepositories.
