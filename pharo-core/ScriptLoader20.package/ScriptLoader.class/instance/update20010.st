pharo - updates
update20010
	"self new update20010"
	self withUpdateLog: 'reintroducing addPackage: so that we can load configuration.'.
	self loadTogether: self script4 merge: false.
	self flushCaches.
