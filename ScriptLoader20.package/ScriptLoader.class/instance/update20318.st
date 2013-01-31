pharo - updates
update20318
	"self new update20318"
	self withUpdateLog: 'Issue 6751:	Use gzip compression for most transferred files
	http://code.google.com/p/pharo/issues/detail?id=6751
	
Issue 6729:	Array SubscriptOutOfBounds: in PluggableListMorph
	http://code.google.com/p/pharo/issues/detail?id=6729'.
	self loadTogether: self script303 merge: false.
	self flushCaches.
