pharo - updates
update20141
	"self new update20141"
	self withUpdateLog: '- Issue 4734:	file out of packages raises an exception with Nautilus.
	Thanks Sean DeNigris, Guillermo and others :)
	http://code.google.com/p/pharo/issues/detail?id=4734
	
-  Issue 6054:	Error when reading zip files with Squeak date/time format. Thanks Sean DeNigris.
	http://code.google.com/p/pharo/issues/detail?id=6054'.
	self loadTogether: self script131 merge: false.
	self flushCaches.
