pharo - updates
update20442
	"self new update20442"
	self withUpdateLog: 'Issue 7141:	Fix Find Class
	http://code.google.com/p/pharo/issues/detail?id=7141
	Thanks benjamin van ryseghem
	
Issue 7113:	Improving SmallLint Rules Description
	http://code.google.com/p/pharo/issues/detail?id=7113
	
'.
	self loadTogether: self script421 merge: false.
	self flushCaches.
