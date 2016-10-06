update60255
	"self new update60255"
	self withUpdateLog: '19182 LinkedList>>#select:thenDo: is slow
	https://pharo.fogbugz.com/f/cases/19182

19181 TabManager should not stale focus from other widgets when tab content is ready
	https://pharo.fogbugz.com/f/cases/19181'.
	self loadTogether: self script60255 merge: false.
	self flushCaches.
