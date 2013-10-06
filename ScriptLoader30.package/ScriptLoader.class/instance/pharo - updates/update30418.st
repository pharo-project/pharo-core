update30418
	"self new update30418"
	self withUpdateLog: '11661 Small cleanup of dead code
	https://pharo.fogbugz.com/f/cases/11661
	
11659 Add basic Morph Viewer for the Inspectors
	https://pharo.fogbugz.com/f/cases/11659
'.
	self loadTogether: self script210 merge: false.
	self flushCaches.
