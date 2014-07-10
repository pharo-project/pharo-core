update30852
	"self new update30852"
	self withUpdateLog: '13422 Image crashes because an open Nautilus browser hangs onto many objects while code is being loaded
	https://pharo.fogbugz.com/f/cases/13422

'.
	self loadTogether: self script114 merge: false.
	self flushCaches.
