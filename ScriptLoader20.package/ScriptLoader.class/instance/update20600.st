pharo - updates
update20600
	"self new update20600"
	self withUpdateLog: '-> move to updates.pharo.org'.
	self loadTogether: self script573 merge: false.
	self flushCaches.
