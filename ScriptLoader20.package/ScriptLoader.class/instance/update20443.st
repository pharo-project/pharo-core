pharo - updates
update20443
	"self new update20443"
	self withUpdateLog: 'Issue 7147:	CleanUp lowlevel dispalyObject anymation methods a little
	http://code.google.com/p/pharo/issues/detail?id=7147
	
Issue 7140:	LayoutFrame refactoring
	http://code.google.com/p/pharo/issues/detail?id=7140
	
Issue 7133:	Nautilus Cannot rename class in latest image
	http://code.google.com/p/pharo/issues/detail?id=7133
	
Issue 7146:	remove FileStream>#dateIsValid
	http://code.google.com/p/pharo/issues/detail?id=7146
	
Issue 5475:	flat padded date formats
	http://code.google.com/p/pharo/issues/detail?id=5475'.
	self loadTogether: self script422 merge: false.
	self flushCaches.
