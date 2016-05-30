update60046
	"self new update60046"
	self withUpdateLog: '17742 inheritable process specific variables
	https://pharo.fogbugz.com/f/cases/17742'.
	self loadTogether: self script60046 merge: false.
	self flushCaches.
