pharo - updates
update20504
	"self new update20504"
	self withUpdateLog: 'Issue 7385:	FreeTypeFace not recreated from embedded cache upon image load
	http://code.google.com/p/pharo/issues/detail?id=7385
	
Issue 7383:	TextModel>>setSelection: does not update the visual selection if the widget if not in focus
	http://code.google.com/p/pharo/issues/detail?id=7383
	'.
	self loadTogether: self script482 merge: false.
	self flushCaches.
