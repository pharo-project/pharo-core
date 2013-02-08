pharo - updates
update20515
	"self new update20515"
	self withUpdateLog: 'Issue 7422:	Add a menu entry in settings to get the export string for an entry
	http://code.google.com/p/pharo/issues/detail?id=7422
	
Issue 7421:	Add a Nautilus option
	http://code.google.com/p/pharo/issues/detail?id=7421
	
Issue 7387:	keymappings settings are broken
	http://code.google.com/p/pharo/issues/detail?id=7387
	
Issue 6603:	KeyMapping - <ctrl-a> produces MNU PluggableTextMorph>>cursorHome
	http://code.google.com/p/pharo/issues/detail?id=6603'.
	self loadTogether: self script492 merge: false.
	self flushCaches.
