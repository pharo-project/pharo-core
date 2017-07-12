update60508
	"self new update60508"
	self withUpdateLog: '20226 TabMorph should use stepping mechanism for animating background building
	https://pharo.fogbugz.com/f/cases/20226

20238 Run out of memory the image hangs without out of memory warning
	https://pharo.fogbugz.com/f/cases/20238'.
	self loadTogether: self script60508 merge: false.
	self flushCaches.
