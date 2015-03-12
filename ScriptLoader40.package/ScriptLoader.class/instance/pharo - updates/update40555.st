update40555
	"self new update40555"
	self withUpdateLog: '15057 Split command line support and command line handling support
	https://pharo.fogbugz.com/f/cases/15057

15120 PropertySlot: test for installing two proportySlots. Make sure the share the same baseSlot 
	https://pharo.fogbugz.com/f/cases/15120'.
	self loadTogether: self script555 merge: false.
	self flushCaches.
