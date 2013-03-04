pharo - updates
update20583
	"self new update20583"
	self withUpdateLog: 'Issue 7637:	SourceFileArrayTest hardcodes some offsets
	http://code.google.com/p/pharo/issues/detail?id=7637
	
Issue 7636:	fix file name of sources file in #downloadSources
	http://code.google.com/p/pharo/issues/detail?id=7636
	
Issue 7634:	 Slow Package Menu on Mouse Button Right Click + Fix
	http://code.google.com/p/pharo/issues/detail?id=7634'.
	self loadTogether: self script557 merge: false.
	self flushCaches.
