pharo - updates
update20070
	"self new update20070"
	self withUpdateLog: 'Issue 5137:	Object flash can be discarded
	http://code.google.com/p/pharo/issues/detail?id=5137
	
Issue 5867:	[BUG]: Nautilus wont launch
	http://code.google.com/p/pharo/issues/detail?id=5867'.
	self loadTogether: self script60 merge: false.
	RPackageOrganizer default packages do: [ :e |
	(e instVarNamed: #classExtensionSelectors) removeKey: #FlatMessageListBrowser ifAbsent: [] ].
	self flushCaches.
