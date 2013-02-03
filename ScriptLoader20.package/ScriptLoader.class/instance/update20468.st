pharo - updates
update20468
	"self new update20468"
	self withUpdateLog: 'Issue 7215:	move one temporary assignement outside of block
	http://code.google.com/p/pharo/issues/detail?id=7215
	
Issue 7213:	Clearer class search in finder
	http://code.google.com/p/pharo/issues/detail?id=7213'.
	self loadTogether: self script446 merge: false.
	self flushCaches.
