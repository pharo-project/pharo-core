pharo - updates
update20292
	"self new update20292"
	self withUpdateLog: 'Issue 6630:	 [Enh] Pointers only via STRONG references
	http://code.google.com/p/pharo/issues/detail?id=6630

Issue 6674:	Make HTTPProgress a proper object
	http://code.google.com/p/pharo/issues/detail?id=6674
	
Issue 6676:	PseudoClassOrganizer DNU #categoriesSorted
	http://code.google.com/p/pharo/issues/detail?id=6676'.
	self loadTogether: self script279 merge: false.
	StrongPointerExplorer registerToolsOn: Smalltalk tools.
.
	self flushCaches.
