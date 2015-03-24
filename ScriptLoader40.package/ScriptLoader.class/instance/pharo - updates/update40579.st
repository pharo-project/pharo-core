update40579
	"self new update40579"
	self withUpdateLog: '15221 PropertySlot: Tests for removing PropertySlots
	https://pharo.fogbugz.com/f/cases/15221

15215 Prevent the World locking due to multiple modal dialogs open
	https://pharo.fogbugz.com/f/cases/15215'.
	self loadTogether: self script579 merge: false.
	self flushCaches.
