pharo - updates
update20226
	"self new update20226"
	self withUpdateLog: 'Issue 6415:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=6415
	
Issue 6417:	Fix the UIs in CI-Submitter
	http://code.google.com/p/pharo/issues/detail?id=6417
	
Issue 6416:	Pass done over Slider and subclasses
	http://code.google.com/p/pharo/issues/detail?id=6416'.
	self loadTogether: self script214 merge: false.
	self flushCaches.
