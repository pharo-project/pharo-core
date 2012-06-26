pharo - updates
update20048
	"self new update20048"
	self withUpdateLog: 'Issue 5793:	More flexible special objects array
	http://code.google.com/p/pharo/issues/detail?id=5793
	
Issue 5802:	Clean Embedded Temp Names: CompiledMethodTrailer
	http://code.google.com/p/pharo/issues/detail?id=5802
	
Issue 5791:	Merge ExpandedSourceFileArray into SourceFileArray (part3: remove ExpandedSourceFileArray)
	http://code.google.com/p/pharo/issues/detail?id=5791'.
	self loadTogether: self script40 merge: false.
	Smalltalk specialObjectsArray: Smalltalk primitiveGetSpecialObjectsArray.
	self flushCaches.
