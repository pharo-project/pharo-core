pharo - updates
update20130
	"self new update20130"
	self withUpdateLog: '- Issue 6059:	Problem with FileHandle >> open. 
	http://code.google.com/p/pharo/issues/detail?id=6059
	
- Issue 6056:	Typo updete in TestRunner
	http://code.google.com/p/pharo/issues/detail?id=6056

- Issue 6062:	faster InstructionStream>>#interpret
	http://code.google.com/p/pharo/issues/detail?id=6062'.
	self loadTogether: self script120 merge: false.
	self flushCaches.
