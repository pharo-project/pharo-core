pharo - updates
update20518
	"self new update20518"
	self withUpdateLog: 'Issue 7433:	Fixing command line
	http://code.google.com/p/pharo/issues/detail?id=7433
	
Issue 7432:	nautilus option for choosing old style keybindings and new one
	http://code.google.com/p/pharo/issues/detail?id=7432
	
Issue 7420:	Random behavior in ListComposableModel>>whenListChanged:
	http://code.google.com/p/pharo/issues/detail?id=7420
	
Issue 7431:	[Cleanup]: AbstractNautilusPlugin class>>#defaultPosition comment suggests non-existent options
	http://code.google.com/p/pharo/issues/detail?id=7431
	'.
	self loadTogether: self script495 merge: false.
	self flushCaches.
