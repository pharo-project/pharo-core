update50307
	"self new update50307"
	self withUpdateLog: '16483 AST-Core should not depend on System-Localization
	https://pharo.fogbugz.com/f/cases/16483

16472 Minor improvements to MenuMorph (2)
	https://pharo.fogbugz.com/f/cases/16472

16492 no syntax highlighting if last expression is invalid code
	https://pharo.fogbugz.com/f/cases/16492'.
	self loadTogether: self script50307 merge: false.
	self flushCaches.
