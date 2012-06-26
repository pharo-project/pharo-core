pharo - updates
update20023
	"self new update20023"
	self withUpdateLog: 'Issue 5718:	Rename in file browser dnu
	http://code.google.com/p/pharo/issues/detail?id=5718

	
Issue 5685:	Add expand all and collapse all to Monticello Changes and Merg
	http://code.google.com/p/pharo/issues/detail?id=5685'.
	self loadTogether: self script17 merge: false.
	self flushCaches.
