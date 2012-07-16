pharo - updates
update20210
	"self new update20210"
	self withUpdateLog: 'Issue 6360:	Fix text context menu in Worspace
	http://code.google.com/p/pharo/issues/detail?id=6360
	
Issue 6359:	Double entry in tool menu: "Recover lost changes..."
	http://code.google.com/p/pharo/issues/detail?id=6359
	
Issue 4423:	deprecate PluggableListMorphByItem
	http://code.google.com/p/pharo/issues/detail?id=4423
	
Issue 5954:	Nautilus subclass generation fails when viewing class side.
	http://code.google.com/p/pharo/issues/detail?id=5954'.
	self loadTogether: self script200 merge: false.
	self flushCaches.
