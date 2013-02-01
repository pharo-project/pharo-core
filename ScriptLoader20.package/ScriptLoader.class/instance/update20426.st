pharo - updates
update20426
	"self new update20426"
	Smalltalk tools initDefaultToolSet.
	self withUpdateLog: 'Issue 7091:	TestRunner needs to register itself in ToolSet
	http://code.google.com/p/pharo/issues/detail?id=7091
	
Issue 7019:	Move MIMEType from Network to FileSystem
	http://code.google.com/p/pharo/issues/detail?id=7019
'.
	self loadTogether: self script405 merge: false.
	Smalltalk tools initDefaultToolSet.
	self flushCaches.
