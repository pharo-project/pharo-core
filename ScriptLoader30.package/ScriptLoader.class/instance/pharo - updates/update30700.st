update30700
	"self new update30700"
	self withUpdateLog: '12656 Code coverage does not work anymore with specified #packageNamesUnderTest
	https://pharo.fogbugz.com/f/cases/12656'.
	self loadTogether: self script353 merge: false.
	self flushCaches.
