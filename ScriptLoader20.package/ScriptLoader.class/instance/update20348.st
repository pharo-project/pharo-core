pharo - updates
update20348
	"self new update20348"
	self withUpdateLog: 'Issue 6761:	Class side Trait methods do not work in Nautilus
	http:Argument expected -> //code.google.com/p/pharo/issues/detail?id=6761
	
Issue 6831:	unload monticello package breaks RPackage
	http://code.google.com/p/pharo/issues/detail?id=6831
	
Issue 6539:	Integrate Metacello
	http://code.google.com/p/pharo/issues/detail?id=6539'.
	self loadTogether: self script330 merge: false.
	Gofer it 
	squeaksource: 'MetacelloRepository';
	configurationOf: 'Metacello';
	load.
(Smalltalk at: #ConfigurationOfMetacello) load.
ScriptLoader new 
	unloadPackage: 'ConfigurationOfGofer';
	unloadPackage: 'ConfigurationOfMetacello'.
	self flushCaches.
