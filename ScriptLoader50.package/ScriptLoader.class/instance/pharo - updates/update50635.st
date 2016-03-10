update50635
	"self new update50635"
	self withUpdateLog: '17182 Unify adding slots and correct initialization of class slots
	https://pharo.fogbugz.com/f/cases/17182

17717 Clean old startup mechanism - part 4
	https://pharo.fogbugz.com/f/cases/17717'.
	self loadTogether: self script50635 merge: false.
	self flushCaches.
