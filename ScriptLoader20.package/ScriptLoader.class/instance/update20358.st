pharo - updates
update20358
	"self new update20358"
	self withUpdateLog: 'Issue 6856:	Further Completion Window Improvement
	http://code.google.com/p/pharo/issues/detail?id=6856
	
Issue 4958:	inheritance does not browse subclasses
	http://code.google.com/p/pharo/issues/detail?id=4958
	
Issue 6859:	Fix SourceCode refactoring: rename temporary
	http://code.google.com/p/pharo/issues/detail?id=6859'.
	self loadTogether: self script340 merge: false.
	self flushCaches.
