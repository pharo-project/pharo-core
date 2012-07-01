pharo - updates
update20158
	"self new update20158"
	self withUpdateLog: '- Issue 6135:	Code completion in all tools. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=6135
	
- Issue 6091:	FileReference>>extension should be after last separator. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=6091
	
- Issue 6086:	Running tests with test runner is very slow due to progress bar. Tx
	http://code.google.com/p/pharo/issues/detail?id=6086
	
- Issue 6092:	Clean Chronology tests.Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=6092'.
	self loadTogether: self script148 merge: false.
	self flushCaches.
