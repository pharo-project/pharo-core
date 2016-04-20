update50702
	"self new update50702"
	self withUpdateLog: '18017 CompiledMethod>>#containsHalt should exclude the selector when checking literals
	https://pharo.fogbugz.com/f/cases/18017

17702 failting test: OCClosureCompilerTest>>#testDebuggerTempAccess
	https://pharo.fogbugz.com/f/cases/17702'.
	self loadTogether: self script50702 merge: false.
	self flushCaches.
