pharo - updates
update20174
	"self new update20174"
	self withUpdateLog: 'Issue 6192:	[Bug]: FileReference>>#extension causes error if no extension
	http://code.google.com/p/pharo/issues/detail?id=6192
	
Issue 6198:	Extension missing
	http://code.google.com/p/pharo/issues/detail?id=6198
	
Issue 6130:	Use of freetype will crash on Windows due to FS changes
	http://code.google.com/p/pharo/issues/detail?id=6130'.
	self loadTogether: self script164 merge: false.
	ScriptLoader new unloadPackageNamed: 'Multilingual-UnicodeInitialization'.
.
	self flushCaches.
