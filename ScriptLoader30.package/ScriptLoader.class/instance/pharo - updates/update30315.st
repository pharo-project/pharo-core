update30315
	"self new update30315"
	self withUpdateLog: '11273 ExampleBuilder should only be used by the examples
	https://pharo.fogbugz.com/f/cases/11273
	
11265 isNil ifTrue: to ifNil: part 5
	https://pharo.fogbugz.com/f/cases/11265
	
11266 isNil ifTrue: to ifNil: part 6
	https://pharo.fogbugz.com/f/cases/11266'.
	self loadTogether: self script108 merge: false.
	self flushCaches.
