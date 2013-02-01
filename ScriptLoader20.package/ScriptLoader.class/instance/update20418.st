pharo - updates
update20418
	"self new update20418"
	self withUpdateLog: 'Issue 6973:	two ClassDescription>> #correspondingForTest issues
	http://code.google.com/p/pharo/issues/detail?id=6973
	
Issue 7057:	Add Special Inspectors For Floats and Integers
	http://code.google.com/p/pharo/issues/detail?id=705
	
Issue 7052:	Fix in PolyMorph + TextHighlight fix
	http://code.google.com/p/pharo/issues/detail?id=7052
	
'.
	self loadTogether: self script397 merge: false.
	self flushCaches.
