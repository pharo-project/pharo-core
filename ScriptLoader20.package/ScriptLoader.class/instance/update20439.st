pharo - updates
update20439
	"self new update20439"
	self withUpdateLog: 'Fixing Spec binding problem'.
	self loadTogether: self script418 merge: false.
	self flushCaches.
