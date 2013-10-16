update30490
	"self new update30490"
	self withUpdateLog: '11107 never call decompiler, add a #codeForNoSource backstop to CompiledMethod
	https://pharo.fogbugz.com/f/cases/11107
	'.
	self loadTogether: self script145 merge: false.
	self flushCaches.
