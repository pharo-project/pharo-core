update60378
	"self new update60378"
	self withUpdateLog: '19664 Removing a package with extensions let the extensions in the system and break their reload
	https://pharo.fogbugz.com/f/cases/19664'.
	self loadTogether: self script60378 merge: false.
	self flushCaches.
