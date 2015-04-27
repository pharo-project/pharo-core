update50011
	"self new update50011"
	self withUpdateLog: '15388 RBRepeteadMethodsInTheSuperclassRule duplicates RBEquivalentSuperclassMethodsRule
	https://pharo.fogbugz.com/f/cases/15388'.
	self loadTogether: self script620 merge: false.
	self flushCaches.
