update30329
	"self new update30329"
	self withUpdateLog: '11303 Repackage NewClassOrganizer
	https://pharo.fogbugz.com/f/cases/11303
	
11389 Update Slot with latest code
	https://pharo.fogbugz.com/f/cases/11389
'.
	self loadTogether: self script121 merge: false.
	self flushCaches.
