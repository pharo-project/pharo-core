pharo - updates
update20523
	"self new update20523"
	self withUpdateLog: 'Issue 7441:	EventHandler is deprecated yet EventHandlerPlus, a subclass, still is there
	http://code.google.com/p/pharo/issues/detail?id=7441
	
Issue 6622:	PluggableTextMorph: Copy/Paste and Undo should respect autoAccept (was Bug when doing Paste in Find & Replace dialog)
	http://code.google.com/p/pharo/issues/detail?id=6622
'.
	self loadTogether: self script500 merge: false.
	self flushCaches.
