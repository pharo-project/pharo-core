update60297
	"self new update60297"
	self withUpdateLog: '19329 New SystemAnnouncement is needed to signal that class modification was completely installed
	https://pharo.fogbugz.com/f/cases/19329

19303 Classes should define systemIconName instead of systemIcon
	https://pharo.fogbugz.com/f/cases/19303

19359 ProtocolRemoved is not announced when Nautilus removes empty protocols
	https://pharo.fogbugz.com/f/cases/19359'.
	self loadTogether: self script60297 merge: false.
	self flushCaches.
