pharo - updates
update20020
	"self new update20020"
	self withUpdateLog: 'Issue 5675:	Easy fix in DropListMorph
	http://code.google.com/p/pharo/issues/detail?id=5675
	
Issue 5642:	better tempNamed:
	http://code.google.com/p/pharo/issues/detail?id=5642
	
Issue 5594:	ClassOrganizer use printString for changeSet
	http://code.google.com/p/pharo/issues/detail?id=5594'.
	self loadTogether: self script14 merge: false.
	self flushCaches.
