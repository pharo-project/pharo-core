pharo - updates
update20328
	"self new update20328"
	self withUpdateLog: 'Issue 6749:	put off smart-character as default
	http://code.google.com/p/pharo/issues/detail?id=6749
	
Issue 6735:	Add INRIA to the copyright (among the others)
	http://code.google.com/p/pharo/issues/detail?id=6735
    (and yes, we do have in writing that all inria contributions are MIT license)	
'.
	self loadTogether: self script313 merge: false.
	self flushCaches.
