pharo - updates
update20604
	"self new update20604"
	self withUpdateLog: '10653	Some Jenkins images show a stdout is closed error
	https://pharo.fogbugz.com/f/cases/10653'.
	self loadTogether: self script577 merge: false.
	self flushCaches.
