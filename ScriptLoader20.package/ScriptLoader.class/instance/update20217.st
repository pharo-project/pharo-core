pharo - updates
update20217
	"self new update20217"
	self withUpdateLog: 'Issue 6393:	All font related methods in LanguageEnvironment are unused
	http://code.google.com/p/pharo/issues/detail?id=6393
	
Issue 6391:	TrueType relicts from privCleanUnloadMethods
	http://code.google.com/p/pharo/issues/detail?id=6391
	
Issue 6382:	[BUG]: PragmaMenuAndShortcutRegistration DNU attachShortcutCategory:to:
	http://code.google.com/p/pharo/issues/detail?id=6382
	
Issue 6394:	clean unsent private methods Object and MetaClas
	http://code.google.com/p/pharo/issues/detail?id=6394
	
Issue 6395:	#defaultEncodingName is unsent
	http://code.google.com/p/pharo/issues/detail?id=6395'.
	self loadTogether: self script207 merge: false.
	self flushCaches.
