pharo - updates
update20507
	"self new update20507"
	self withUpdateLog: 'Issue 7400:	BlockClosure #decompile should not reference Decompiler directly
	http://code.google.com/p/pharo/issues/detail?id=7400
	
Issue 7392:	completion was not working properly
	http://code.google.com/p/pharo/issues/detail?id=7392'.
	self loadTogether: self script485 merge: false.
	self flushCaches.
