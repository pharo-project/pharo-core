pharo - updates
update20531
	"self new update20531"
	self withUpdateLog: 'Issue 7464:	Code critic - codecritc browser
	http://code.google.com/p/pharo/issues/detail?id=7464
	
Issue 7102:	Dont insert spaces between SmartCharacters
	http://code.google.com/p/pharo/issues/detail?id=7102
	
Issue 7466:	PluggableTextMorph redo still not working
	http://code.google.com/p/pharo/issues/detail?id=7466'.
	self loadTogether: self script508 merge: false.
	self flushCaches.
