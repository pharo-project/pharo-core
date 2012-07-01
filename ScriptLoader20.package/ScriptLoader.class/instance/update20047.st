pharo - updates
update20047
	"self new update20047"
	self withUpdateLog: 'Issue 5782:	Close ALL windows, no matter if they have unchanged changes
	http://code.google.com/p/pharo/issues/detail?id=5782
	
Issue 5792:	Fix tempNamed and tempNamedPut
	http://code.google.com/p/pharo/issues/detail?id=5792
	
Issue 5790:	Merge ExpandedSourceFileArray into SourceFileArray (part2 install and fix tests)
	http://code.google.com/p/pharo/issues/detail?id=5790'.
	self loadTogether: self script39 merge: false.
	SourceFileArray install.
	self flushCaches.
