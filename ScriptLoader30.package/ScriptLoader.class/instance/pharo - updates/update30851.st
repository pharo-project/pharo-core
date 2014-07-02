update30851
	"self new update30851"
	self withUpdateLog: '13422 Image crashes because an open Nautilus browser hangs onto many objects while code is being loaded
	https://pharo.fogbugz.com/f/cases/13422

13405 Get support for temporary files (backport)
	https://pharo.fogbugz.com/f/cases/13405
	
13452 Backport Pharo3: Issue 13415 Smalltalk resetTools breaks keybindings
	https://pharo.fogbugz.com/f/cases/13452

'.
	self loadTogether: self script113 merge: false.
	self flushCaches.
