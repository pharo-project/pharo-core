update40376
	"self new update40376"
	self withUpdateLog: '13516 Canvas and all subclasses should not be in Morphic
	https://pharo.fogbugz.com/f/cases/13516

14489 Clean references from System Support to Themes
	https://pharo.fogbugz.com/f/cases/14489'.
	self loadTogether: self script376 merge: false.
	self flushCaches.
