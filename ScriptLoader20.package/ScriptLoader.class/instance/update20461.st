pharo - updates
update20461
	"self new update20461"
	self withUpdateLog: '-  Issue 4018:	Color class enhancement. Thanks Alexander Bergel.
		http://code.google.com/p/pharo/issues/detail?id=4018
		
- Issue 7187:	Doit is broken in spec. Thanks Benjamin van Ryseghem
		http://code.google.com/p/pharo/issues/detail?id=7187'.
	self loadTogether: self script439 merge: false.
	self flushCaches.
