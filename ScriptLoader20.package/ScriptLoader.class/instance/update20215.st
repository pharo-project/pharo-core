pharo - updates
update20215
	"self new update20215"
	self withUpdateLog: 'Issue 6383:	Zn+Zdc Update 2012-07-16
	http://code.google.com/p/pharo/issues/detail?id=6383

Issue 6068:	FreeType fonts not working
	http://code.google.com/p/pharo/issues/detail?id=6068
	
Issue 6384:	DualChangeSorterApplication Context Menu DNU
	http://code.google.com/p/pharo/issues/detail?id=6384
	
Issue 6376:	New ProcessSpecificVariables & Running Processes
	http://code.google.com/p/pharo/issues/detail?id=6376
	
Issue 6380:	Text Packaging Weirdness
	http://code.google.com/p/pharo/issues/detail?id=6380'.
	self loadTogether: self script205 merge: false.
	ScriptLoader new deletePackage: 'Text-Core'.
ScriptLoader new deletePackage: 'Text-Edition'.
ScriptLoader new deletePackage: 'Text-Scanning'.
.
	self flushCaches.
