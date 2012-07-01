pharo - updates
update20083
	"self new update20083"
	self withUpdateLog: '- Issue 5760:	Some initialization fixes in DisplayScreen. Thanks Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=5760

- Issue 5926:	SystemNavigation>>#browseUndeclaredReferences not working. Thanks Marcus Denker
	http://code.google.com/p/pharo/issues/detail?id=5926

- Fixing post problem related to the removal of the DecodeTable.'.
	self loadTogether: self script72 merge: false.
	self flushCaches.
