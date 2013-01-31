pharo - updates
update20339
	"self new update20339"
	self withUpdateLog: 'Issue 6803:	Activate the new Pango ST80 style
	http://code.google.com/p/pharo/issues/detail?id=6803
	
Issue 6802:	remove ChangeSetBrowser
	http://code.google.com/p/pharo/issues/detail?id=6802

Issue 6794:	CommandLine Configuration installer
	http://code.google.com/p/pharo/issues/detail?id=6794'.
	self loadTogether: self script321 merge: false.
	SHTextStylerST80 initialize.
	self flushCaches.
