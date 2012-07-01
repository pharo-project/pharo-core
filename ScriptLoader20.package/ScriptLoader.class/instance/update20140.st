pharo - updates
update20140
	"self new update20140"
	self withUpdateLog: '- Issue 6077:	Let DataStream only for Monticello Part2. Thanks Mariano Martinez-Peck.
		http://code.google.com/p/pharo/issues/detail?id=6077'.
	self loadTogether: self script130 merge: false.
	self deletePackage: 'System-Object Storage'.
	self flushCaches.
