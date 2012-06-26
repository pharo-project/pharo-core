pharo - updates
update20106
	"self new update20106"
	self withUpdateLog: 'Issue 6012:	Fixing Trait test since the event notifier is not silent!!!
		http://code.google.com/p/pharo/issues/detail?id=6012
	'.
	self loadTogether: self script96 merge: false.
	self flushCaches.
