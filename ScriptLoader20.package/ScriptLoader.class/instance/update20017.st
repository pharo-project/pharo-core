pharo - updates
update20017
	"self new update20017"
	self withUpdateLog: 'Issue 5684:	Integrate famfam icons
	http://code.google.com/p/pharo/issues/detail?id=5684
	'.
	self loadTogether: self script11 merge: false.
	ThemeIcons initializeIcons.
World resetWorldMenu.
	self flushCaches.
