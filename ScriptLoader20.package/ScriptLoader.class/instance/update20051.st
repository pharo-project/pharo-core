pharo - updates
update20051
	"self new update20051"
	self withUpdateLog: 'Issue 5562:	TestCase>>#assert:equals: optimization
	http://code.google.com/p/pharo/issues/detail?id=5562
	
Issue 5810:	KMPragmaKeymapBuilder needs better cleanup
	http://code.google.com/p/pharo/issues/detail?id=5810
	
Issue 5798:	Enable again back StartUpPreferences for unix and mac
	http://code.google.com/p/pharo/issues/detail?id=5798
	
Issue 5684:	Integrate famfam icons
	http://code.google.com/p/pharo/issues/detail?id=5684'.
	self loadTogether: self script43 merge: false.
	ThemeIcons initializeIcons.
World resetWorldMenu.
	self flushCaches.
