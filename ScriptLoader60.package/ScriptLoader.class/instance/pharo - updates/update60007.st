update60007
	"self new update60007"
	self withUpdateLog: '17896 MorphTreeMorph have trouble to update his theme
	https://pharo.fogbugz.com/f/cases/17896'.
	self loadTogether: self script60007 merge: false.
	self flushCaches.
