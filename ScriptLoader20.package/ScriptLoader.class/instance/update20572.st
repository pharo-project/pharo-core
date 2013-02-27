pharo - updates
update20572
	"self new update20572"
	self withUpdateLog: 'Issue 7580:	VM sometimes crashes when running test NBExternalEnumFromPairsTest>>#testCallbackAAA under Windows
	http://code.google.com/p/pharo/issues/detail?id=7580
	
Issue 7602:	Workspace previous contents still shows stuff from 1.4
	http://code.google.com/p/pharo/issues/detail?id=7602
	
Issue 7603:	[BUG]: Nautilus: Switch from hierarchy to flat when different class/package selected
	http://code.google.com/p/pharo/issues/detail?id=7603'.
	self loadTogether: self script547 merge: false.
	self flushCaches.
