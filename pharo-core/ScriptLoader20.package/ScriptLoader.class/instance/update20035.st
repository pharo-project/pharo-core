pharo - updates
update20035
	"self new update20035"
	self withUpdateLog: 'Issue 5762:	Some initialization fixes in WeakFinalizationList
	http://code.google.com/p/pharo/issues/detail?id=5762
	
Issue 5761:	Some initialization fixes in FileDirectory
	http://code.google.com/p/pharo/issues/detail?id=5761
		
Issue 5759:	Some initialization fixes in Graphics-External-Ffenestri
	http://code.google.com/p/pharo/issues/detail?id=5759
	
Issue 5746:	Add announcer property into morph
	http://code.google.com/p/pharo/issues/detail?id=5746
	'.
	self loadTogether: self script29 merge: false.
	self flushCaches.
