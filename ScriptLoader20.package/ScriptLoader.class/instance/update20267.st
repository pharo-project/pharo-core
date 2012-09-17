pharo - updates
update20267
	"self new update20267"
	
.
	self withUpdateLog: 'Issue 6591:	TextInputFieldModel acceptOnCR: not working
	http://code.google.com/p/pharo/issues/detail?id=6591'.
	self loadTogether: self script254 merge: false.
	self flushCaches.
