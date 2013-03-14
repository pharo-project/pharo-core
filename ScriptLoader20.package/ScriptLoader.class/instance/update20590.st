pharo - updates
update20590
	"self new update20590"
	self withUpdateLog: 'Issue 7345:	DNU with Glamour: PaginatedMorphTreeMorph>>setSelectedMorph:
	https://code.google.com/p/pharo/issues/detail?id=7345
	https://pharo.fogbugz.com/f/cases/7282

	'.
	self loadTogether: self script564 merge: false.
	self flushCaches.
