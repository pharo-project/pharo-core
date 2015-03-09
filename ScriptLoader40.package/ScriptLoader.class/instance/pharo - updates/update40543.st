update40543
	"self new update40543"
	self withUpdateLog: '15091 Improve backwards compatibility for AST-Core Nodes
	https://pharo.fogbugz.com/f/cases/15091

15094 Fix link invalidation + hook generation on MetaLink
	https://pharo.fogbugz.com/f/cases/15094'.
	self loadTogether: self script543 merge: false.
	self flushCaches.
