pharo - updates
update20119
	"self new update20119"
	self withUpdateLog: 'Preparing ProgressBarMorph integration'.
	self loadTogether: self script109 merge: false.
	self flushCaches.
