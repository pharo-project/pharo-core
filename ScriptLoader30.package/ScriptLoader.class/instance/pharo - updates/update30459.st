update30459
	"self new update30459"
	self withUpdateLog: '11807 openWorldWithSpec does not work
	https://pharo.fogbugz.com/f/cases/11807
	
11741 Add Fuel out Stack as an action to the new debugger
	https://pharo.fogbugz.com/f/cases/11741
'.
	self loadTogether: self script114 merge: false.
	self flushCaches.
