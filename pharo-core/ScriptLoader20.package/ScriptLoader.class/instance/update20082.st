pharo - updates
update20082
	"self new update20082"
	self withUpdateLog: '- Issue 5877:	piecesCutWhere:. From Squeak, thanks E. Miranda.
	http://code.google.com/p/pharo/issues/detail?id=5877
	
- Issue 5733:	Finder help text enhancements. Thanks Ben Coman and Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=5733

- Issue 5880:	FileBrowser is slow when directory has lot of entries. Thanks Nicolas Cellier
	http://code.google.com/p/pharo/issues/detail?id=5880

- Issue 5748:	Better modularization for Ring packages. Thanks Mariano Martinez-Peck and Veronica Uquillaz Gomes.'.
	self loadTogether: self script71 merge: false.
	self flushCaches.
