pharo - updates
update20067
	"self new update20067"
	self withUpdateLog: 'Issue 5850:	Move SpaceTally and SpaceTallyItem to Tools-Profilers
	http://code.google.com/p/pharo/issues/detail?id=5850
	
Issue 5819:	first iteration on moving fileIn users to new codeImporter
	http://code.google.com/p/pharo/issues/detail?id=5819'.
	self loadTogether: self script57 merge: false.
	self flushCaches.
