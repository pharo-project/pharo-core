pharo - updates
update20440
	"self new update20440"
	self withUpdateLog: 'Issue 7141:	Fix Find Class
	http://code.google.com/p/pharo/issues/detail?id=7141
	Thanks benjamin van ryseghem
	
 Issue 7131:	Clean change sets
	http://code.google.com/p/pharo/issues/detail?id=7131
	'.
	self loadTogether: self script419 merge: false.
	ChangeSet cleanUp: true.
	self flushCaches.
