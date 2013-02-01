pharo - updates
update20417
	"self new update20417"
	self withUpdateLog: 'Issue 7044:	VTermOutputDriver calls stdOut instead of stdout
	http://code.google.com/p/pharo/issues/detail?id=7044
	
Issue 7043:	some FileSytem methods call subclassResponsability
	http://code.google.com/p/pharo/issues/detail?id=7043
	
Issue 7039:	Refactoring in PluggableTextMorph and TextHighlight
	http://code.google.com/p/pharo/issues/detail?id=7039
	
'.
	self loadTogether: self script396 merge: false.
	self flushCaches.
