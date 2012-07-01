pharo - updates
update20022
	"self new update20022"
	self withUpdateLog: 'Issue 5633:	Cleaning addUpdating: wordingSelector target: target selector: aSymbol argumentList: argList
	http://code.google.com/p/pharo/issues/detail?id=5633
'.
	self loadTogether: self script16 merge: false.
	self flushCaches.
