pharo - updates
update20488
	"self new update20488"
	self withUpdateLog: 'Issue 7318:	[BUG]: Partial Autocomplete DNU in Nautilus
	http://code.google.com/p/pharo/issues/detail?id=7318
	
Issue 7316:	Jenkins: Some tests are run twice
	http://code.google.com/p/pharo/issues/detail?id=7316
	
Issue 7311:	making MCfileInspector more robust to broken files
	http://code.google.com/p/pharo/issues/detail?id=7311
	
Issue 7207:	Solution for issue 3882 introduced bugs with scaling and moving ImageMorphs using Morphic Halos
	http://code.google.com/p/pharo/issues/detail?id=7207'.
	self loadTogether: self script466 merge: false.
	self flushCaches.
