pharo - updates
update20199
	"self new update20199"
	self withUpdateLog: 'Issue 6319:	New version of Spec
	http://code.google.com/p/pharo/issues/detail?id=6319
	
Issue 6321:	replace "isMemberOf: StrikeFontSet" with "isFontSet"
	http://code.google.com/p/pharo/issues/detail?id=6321
	
Issue 6320:	unregister TrueType Classes
	http://code.google.com/p/pharo/issues/detail?id=6320
	
Issue 6318:	simplify #doDeferredUpdatingFor:
	http://code.google.com/p/pharo/issues/detail?id=6318
	
Issue 6156:	 test failing for DateAndTimeTest
	http://code.google.com/p/pharo/issues/detail?id=6156'.
	self loadTogether: self script189 merge: false.
	FileServices unregisterFileReader: (Smalltalk globals at: #TTFontReader).
FileServices unregisterFileReader: (Smalltalk globals at: #TTCFont).
	self flushCaches.
