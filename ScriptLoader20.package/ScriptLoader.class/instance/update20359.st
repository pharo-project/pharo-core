pharo - updates
update20359
	"self new update20359"
	self withUpdateLog: 'Issue 6860:	Improve TransferMorph UI
	http://code.google.com/p/pharo/issues/detail?id=6860
	
Issue 6819:	We should add Pharo14 as MC repository for 20 to support merging and monkey work
	http://code.google.com/p/pharo/issues/detail?id=6819
	
Issue 6726:	Stream Number Printing Protocol
	http://code.google.com/p/pharo/issues/detail?id=6726
	
Issue 5238:	LinkedList select: is not linear time
	http://code.google.com/p/pharo/issues/detail?id=5238
	
'.
	self loadTogether: self script341 merge: false.
	self flushCaches.
