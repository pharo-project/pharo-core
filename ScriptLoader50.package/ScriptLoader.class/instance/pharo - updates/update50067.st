update50067
	"self new update50067"
	self withUpdateLog: '15570 CaseOf: pattern from Opal is different from old compiler and breaks the JIT compiler
	https://pharo.fogbugz.com/f/cases/15570'.
	self loadTogether: self script50067 merge: false.
	
OCCaseOfTest recompile.
	self flushCaches.
