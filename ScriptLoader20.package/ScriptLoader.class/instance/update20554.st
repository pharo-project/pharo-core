pharo - updates
update20554
	"self new update20554"
	self withUpdateLog: 'Issue 7521:	Add PostMaterializationAction to Fueled out stack traces
	http://code.google.com/p/pharo/issues/detail?id=7521
	
Issue 7403:	CMD-click no longer works to activate source-links
	http://code.google.com/p/pharo/issues/detail?id=7403
	
Issue 7532:	Integrate a preview of Fuel 1.9
	http://code.google.com/p/pharo/issues/detail?id=7532'.
	self loadTogether: self script529 merge: false.
	self flushCaches.
