pharo - updates
update20414
	"self new update20414"
	self withUpdateLog: 'Issue 7008:	clean unsent messages in StringHolder Hierarchy
	http://code.google.com/p/pharo/issues/detail?id=7008
	
Issue 7009:	clean up CharacterScanner a little
	http://code.google.com/p/pharo/issues/detail?id=7009
	
Issue 7015:	Form>>#fromBinaryStream: dependent on ImageReadWriter
	http://code.google.com/p/pharo/issues/detail?id=7015'.
	self loadTogether: self script393 merge: false.
	self flushCaches.
