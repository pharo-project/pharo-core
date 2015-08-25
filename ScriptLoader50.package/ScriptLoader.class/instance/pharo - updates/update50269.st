update50269
	"self new update50269"
	self withUpdateLog: '16131 RBModifiesCollectionRule breaks methods AST when checking
	https://pharo.fogbugz.com/f/cases/16131

16363 Context menu in Recent Messages broken when empty
	https://pharo.fogbugz.com/f/cases/16363

16365 Make properties on TemporaryVariable persistent
	https://pharo.fogbugz.com/f/cases/16365

16364 Typo in Recent message browser title
	https://pharo.fogbugz.com/f/cases/16364'.
	self loadTogether: self script50269 merge: false.
	self flushCaches.
