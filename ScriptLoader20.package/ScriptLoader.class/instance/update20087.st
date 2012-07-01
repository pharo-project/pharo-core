pharo - updates
update20087
	"self new update20087"
	self withUpdateLog: 'Issue 5933:	cleanup use of Referencestream to load serialized fonts
	http://code.google.com/p/pharo/issues/detail?id=5933
	
Issue 5937:	Continue cleaning ReferenceStream
	http://code.google.com/p/pharo/issues/detail?id=5937
	
Issue 5915:	Cleaning Icons
	http://code.google.com/p/pharo/issues/detail?id=5915'.
	self loadTogether: self script76 merge: false.
	self flushCaches.
