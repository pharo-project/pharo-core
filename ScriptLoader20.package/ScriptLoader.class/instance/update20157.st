pharo - updates
update20157
	"self new update20157"
	self withUpdateLog: '-  Issue 6134:	Some FileDirectory cleans. 
	http://code.google.com/p/pharo/issues/detail?id=6134
	
- Issue 6129:	Nautilus: Fix package removal. Thanks Benjamin van ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=6129
	
- Issue 6126:	Use WaitFree queue for deferred UI messages. Thanks Igor Stasenko
	http://code.google.com/p/pharo/issues/detail?id=6126

- Issue 6123:	DummyUIManager and new progress bar> Thanks Pavel and Sean.
	http://code.google.com/p/pharo/issues/detail?id=6123
	
- Issue 6114:	FileDialogWindow fails to open in Monticello Browser. Thanks Sean.
	http://code.google.com/p/pharo/issues/detail?id=6114
	
'.
	self loadTogether: self script147 merge: false.
	self flushCaches.
