pharo - updates
update20089
	"self new update20089"
	self withUpdateLog: 'Issue 5592:	A bench of classes cant be initialized again
	http://code.google.com/p/pharo/issues/detail?id=5592
	
Issue 5797:	Adding announcements on open and delete for morphs
	http://code.google.com/p/pharo/issues/detail?id=5797
	
Issue 5944:	Having a category for basic objects
	http://code.google.com/p/pharo/issues/detail?id=5944
	
Issue 5818:	Put back the correct order in #asert:equals:
	http://code.google.com/p/pharo/issues/detail?id=5818'.
	self loadTogether: self script78 merge: false.
	self flushCaches.
