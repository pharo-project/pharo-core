pharo - updates
update20259
	"self new update20259"
	self withUpdateLog: 'Issue 6567:	fonts and LazyListMorph
	http://code.google.com/p/pharo/issues/detail?id=6567
	
Issue 6580:	Making RPackage and PackageInfo polymorphic for migration
	http://code.google.com/p/pharo/issues/detail?id=6580
	
Issue 6581:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=6581'.
	self loadTogether: self script246 merge: false.
	self flushCaches.
