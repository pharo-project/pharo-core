pharo - updates
update20421
	"self new update20421"
	self withUpdateLog: 'Issue 7060:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=7060

Issue 7054:	InputEventHandler unregistering should nil the eventFetcher
	http://code.google.com/p/pharo/issues/detail?id=7054

Issue 7041:	remove theme UIThemeStandardSqueak
	http://code.google.com/p/pharo/issues/detail?id=7041

Issue 7036:	move Form class>>#fromFileNamed and fromBinaryStream to Graphic-Files
	http://code.google.com/p/pharo/issues/detail?id=7036

Issue 7031:	Package HistoryCollection should be merged into Nautilus
	http://code.google.com/p/pharo/issues/detail?id=7031'.
	self loadTogether: self script400 merge: false.
	self flushCaches.
