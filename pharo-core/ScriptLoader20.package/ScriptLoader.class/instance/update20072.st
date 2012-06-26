pharo - updates
update20072
	"self new update20072"
	self withUpdateLog: 'Issue 5886:	Minor fix in Nautilus
	http://code.google.com/p/pharo/issues/detail?id=5886
	
Issue 5875:	Too Many Options
	http://code.google.com/p/pharo/issues/detail?id=5875
	
Issue 5833:	More robust allSuperclassesIncluding:
	http://code.google.com/p/pharo/issues/detail?id=5833
	
Issue 5872:	[BUG]: Nautilus doesnt know a method is selected
	http://code.google.com/p/pharo/issues/detail?id=5872
	
Issue 5869:	New versions of Spec (fixing a bit MessageBrowser)
	http://code.google.com/p/pharo/issues/detail?id=5869
	
Issue 5630:	Cannot browse traits with Nautius
	http://code.google.com/p/pharo/issues/detail?id=5630'.
	self loadTogether: self script62 merge: false.
	self flushCaches.
