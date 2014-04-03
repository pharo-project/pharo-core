update30810
	"self new update30810"
	self withUpdateLog: '13150 Different memory alignment on different platforms
	https://pharo.fogbugz.com/f/cases/13150

'.
	self loadTogether: self script463 merge: false.
	self flushCaches.
