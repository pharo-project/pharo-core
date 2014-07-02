update40059
	"self new update40059"
	self withUpdateLog: '13455 Revert 13275 RBSmalllintChecker checks classes not defined in environment
	https://pharo.fogbugz.com/f/cases/13455

13433 pinning menu: menu changes  size 
	https://pharo.fogbugz.com/f/cases/13433

'.
	self loadTogether: self script59 merge: false.
	self flushCaches.
