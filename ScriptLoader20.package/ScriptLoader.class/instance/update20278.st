pharo - updates
update20278
	"self new update20278"
	self withUpdateLog: 'Issue 6649:	Promote NetworkSystemSettings over HTTPSocket
	http://code.google.com/p/pharo/issues/detail?id=6649
	
Issue 6645:	Deprecate SystemVersion>>majorMinor
	http://code.google.com/p/pharo/issues/detail?id=6645
	
Issue 6643:	Update CI
	http://code.google.com/p/pharo/issues/detail?id=6643
'.
	self loadTogether: self script265 merge: false.
	self flushCaches.
