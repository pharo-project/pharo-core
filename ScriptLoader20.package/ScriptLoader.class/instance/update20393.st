pharo - updates
update20393
	"self new update20393"
	self withUpdateLog: 'Issue 6950:	SystemProgressMorph dependecy in JobTest
	http://code.google.com/p/pharo/issues/detail?id=6950
	
Issue 6960:	SourceFileArrayTest dependent on Morphic
	http://code.google.com/p/pharo/issues/detail?id=6960
	
Issue 6958:	KernelTests dependent on PrettyPrinting
	http://code.google.com/p/pharo/issues/detail?id=6958
	
	'.
	self loadTogether: self script372 merge: false.
	self flushCaches.
