pharo - updates
update20354
	"self new update20354"
	self withUpdateLog: 'Issue 4651:	Introduce AuthorNameRequest
	http://code.google.com/p/pharo/issues/detail?id=4651
	
Issue 3347:	simplified and unified Strings line-ending changing methods
	http://code.google.com/p/pharo/issues/detail?id=3347
	
ssue 2345:	Should we keep sorted: nil ?
	http://code.google.com/p/pharo/issues/detail?id=2345
'.
	self loadTogether: self script336 merge: false.
	self flushCaches.
