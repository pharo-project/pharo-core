pharo - updates
update20114
	"self new update20114"
	self withUpdateLog: 'Issue 5938:	Package browser red rectangle on save
	http://code.google.com/p/pharo/issues/detail?id=5938
		
Issue 5871:	FileReference>>renameTo: should assume same folder
	http://code.google.com/p/pharo/issues/detail?id=5871'.
	self loadTogether: self script104 merge: false.
	self flushCaches.
