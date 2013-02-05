pharo - updates
update20493
	"self new update20493"
	self withUpdateLog: 'Issue 7336:	ReleaseTest is run double
	http://code.google.com/p/pharo/issues/detail?id=7336

Issue 7310:	PickListModel should be improved
	http://code.google.com/p/pharo/issues/detail?id=7310'.
	self loadTogether: self script471 merge: false.
	SystemNavigation new instanceSideMethodsWithNilKeyInLastLiteral do: [ :thisShouldNotBeAStringButAMethod |
	| method classAndSelector |
	classAndSelector := ' ' split: thisShouldNotBeAStringButAMethod.
	method := (Smalltalk at: classAndSelector first asSymbol) methodNamed: classAndSelector second asSymbol.
	method recompile.
].
	self flushCaches.
