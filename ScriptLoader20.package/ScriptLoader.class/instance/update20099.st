pharo - updates
update20099
	"self new update20099"
	self withUpdateLog: 'Issue 5983:	update package names for Fuel 1.8
	http://code.google.com/p/pharo/issues/detail?id=5983
	
Issue 5980:	System Setting Browser broken: DNU #selectedNodePath
	http://code.google.com/p/pharo/issues/detail?id=5980
	
Issue 5976:	Add explicit pad methods
	http://code.google.com/p/pharo/issues/detail?id=5976
	
Issue 5956:	Let morphs announce when focus changes
	http://code.google.com/p/pharo/issues/detail?id=5956'.
	self loadTogether: self script88 merge: false.
	self flushCaches.
