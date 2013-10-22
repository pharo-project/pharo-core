update30514
	"self new update30514"
	self withUpdateLog: '11969 Move some methods from Opal to AST
	https://pharo.fogbugz.com/f/cases/11969
	
11954 MorphTreeMorph selection cleanup
	https://pharo.fogbugz.com/f/cases/11954

'.
	self loadTogether: self script169 merge: false.
	self flushCaches.
