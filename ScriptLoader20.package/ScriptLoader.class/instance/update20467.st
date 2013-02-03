pharo - updates
update20467
	"self new update20467"
	self withUpdateLog: 'Issue 7231:	testInstalledMethodsWithIncorrectTrailerKind
	http://code.google.com/p/pharo/issues/detail?id=7231
	
Issue 7169:	Failing test: testInstanceSideMethodsWithNilKeyInLastLiteral
	http://code.google.com/p/pharo/issues/detail?id=7169
	
Issue 7226:	Failing test: AuthorTest>>testInitiallyEmpty
	http://code.google.com/p/pharo/issues/detail?id=7226'.
	self loadTogether: self script445 merge: false.
	SystemNavigation new instanceSideMethodsWithNilKeyInLastLiteral do: [ :thisShouldNotBeAStringButAMethod |
		| method classAndSelector |
		classAndSelector := ' ' split: thisShouldNotBeAStringButAMethod.
		method := (Smalltalk at: classAndSelector first asSymbol) methodNamed: classAndSelector second asSymbol.
		method recompile.
	].
	self flushCaches.
