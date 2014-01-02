update30665
	"self new update30665"
	self withUpdateLog: '- do not call #cleanUpForRelease on update'.
	self loadTogether: self script318 merge: false.
	self flushCaches.
