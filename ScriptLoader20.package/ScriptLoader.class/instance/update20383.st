pharo - updates
update20383
	"self new update20383"
	self withUpdateLog: 'Issue 6921:	Better handling of smart characters
	http://code.google.com/p/pharo/issues/detail?id=6921
	
Issue 6914:	cleanUpForProduction is not unloading Metacello inf
	http://code.google.com/p/pharo/issues/detail?id=6914
	
Issue 6910:	Nautilus enable CMD-R for renaming temporaries
	http://code.google.com/p/pharo/issues/detail?id=6910
	
Issue 3816:	Time millisecondClockValue wraps around way too quickly
	http://code.google.com/p/pharo/issues/detail?id=3816'.
	self loadTogether: self script363 merge: false.
	self flushCaches.
