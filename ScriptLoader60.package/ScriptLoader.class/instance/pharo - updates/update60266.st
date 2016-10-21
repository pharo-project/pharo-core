update60266
	"self new update60266"
	self withUpdateLog: '19223 rename nautilus class comment pane to just "comment pane"
	https://pharo.fogbugz.com/f/cases/19223'.
	self loadTogether: self script60266 merge: false.
	self flushCaches.
