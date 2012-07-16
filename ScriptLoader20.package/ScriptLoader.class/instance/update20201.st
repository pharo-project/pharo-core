pharo - updates
update20201
	"self new update20201"
	self withUpdateLog: 'Issue 6325:	use "Smalltalk image", not "SmalltalkImage current"
	http://code.google.com/p/pharo/issues/detail?id=6325
	
Issue 6329:	Fix MigrationTests in Fuel
	http://code.google.com/p/pharo/issues/detail?id=6329
	
Issue 6328:	New Spec Version
	http://code.google.com/p/pharo/issues/detail?id=6328
	
Issue 6308:	Failing test: TraitTest>>#testTraitsMethodClassSanity
	http://code.google.com/p/pharo/issues/detail?id=6308'.
	self loadTogether: self script191 merge: false.
	self flushCaches.
