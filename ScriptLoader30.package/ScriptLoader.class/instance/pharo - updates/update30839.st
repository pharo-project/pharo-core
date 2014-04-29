update30839
	"self new update30839"
	self withUpdateLog: 'Error when loading a MC version that removes a class-side variable
	https://pharo.fogbugz.com/f/cases/13231

'.
	self loadTogether: self script101 merge: false.
	self flushCaches.
