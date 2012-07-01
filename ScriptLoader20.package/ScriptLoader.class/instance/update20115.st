pharo - updates
update20115
	"self new update20115"
	self withUpdateLog: 'Issue 6031:	Spec upgrade
	http://code.google.com/p/pharo/issues/detail?id=6031
	
Issue 5988:	Windows default commands
	http://code.google.com/p/pharo/issues/detail?id=5988

Issue 6045:	RelativeInstructionPrinter: do not print offsets in pushClosureCopyNumCopiedValues:
	http://code.google.com/p/pharo/issues/detail?id=6045
	
Issue 6037:	Lets remove ReferenceStream
	http://code.google.com/p/pharo/issues/detail?id=6037'.
	self loadTogether: self script105 merge: false.
	self flushCaches.
