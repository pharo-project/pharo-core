pharo - updates
update20336
	"self new update20336"
	NECPreferences 
	enabled: true;
	smartCharacters: true.
	
RPackageOrganizer initialize.

TEasilyThemed removeUser: GroupWindowMorph.
	self withUpdateLog: ' Issue 6684:	Failing tests related to RPackage
	http://code.google.com/p/pharo/issues/detail?id=6684
	
Issue 6744:	Failing Test: TraitTest>>#testTraitsUsersSanity
	http://code.google.com/p/pharo/issues/detail?id=6744
	
Issue 6733:	Failing Test: RPackageSetTest.testPolymorphicWithPackageInfo
	http://code.google.com/p/pharo/issues/detail?id=6733
	
Issue 6792:	restore ocompletion and smartchars enabling
	http://code.google.com/p/pharo/issues/detail?id=6792'.
	self loadTogether: self script318 merge: false.
	self flushCaches.
