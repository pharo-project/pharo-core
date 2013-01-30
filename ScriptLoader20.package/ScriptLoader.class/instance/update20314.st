pharo - updates
update20314
	"self new update20314"
	self withUpdateLog: 'Issue 6720:	Improve Trait usage in Tools
	http://code.google.com/p/pharo/issues/detail?id=6720'.
	self loadTogether: self script299 merge: false.
	self flushCaches.
