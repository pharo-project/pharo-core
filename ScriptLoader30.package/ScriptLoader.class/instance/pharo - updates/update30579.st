update30579
	"self new update30579"
	self withUpdateLog: '3634 Clean up handling of WideStrings
	https://pharo.fogbugz.com/f/cases/3634'.
	self loadTogether: self script234 merge: false.
	self flushCaches.
