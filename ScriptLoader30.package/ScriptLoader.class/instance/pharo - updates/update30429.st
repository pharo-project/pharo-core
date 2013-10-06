update30429
	"self new update30429"
	self withUpdateLog: '11701 Explore should use new inspector in Tree mode
	https://pharo.fogbugz.com/f/cases/11701'.
	self loadTogether: self script108 merge: false.
	Smalltalk tools remove: #basicInspector.
.
	self flushCaches.
