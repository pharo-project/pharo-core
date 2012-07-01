pharo - updates
update20019
	"self new update20019"
	self withUpdateLog: 'Issue 5598:	SHParserST80Test>>testObjectClass fails after Magritte is loaded
	http://code.google.com/p/pharo/issues/detail?id=5598
	
Issue 5621:	PackageInfo extensionMethods not gathering all extensions
	http://code.google.com/p/pharo/issues/detail?id=5621
	
Issue 5660:	having more handles*: for keyboard handling
	http://code.google.com/p/pharo/issues/detail?id=5660'.
	self loadTogether: self script13 merge: false.
	self flushCaches.
