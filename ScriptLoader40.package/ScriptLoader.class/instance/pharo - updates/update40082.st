update40082
	"self new update40082"
	self withUpdateLog: '13546 Move EdgeGripMorph and WindowEdgeGripMorph to Morphic-Widgets-Window
	https://pharo.fogbugz.com/f/cases/13546

13544 Move ThreadSafeTranscriptPluggableTextMorph close to Transcript 
	https://pharo.fogbugz.com/f/cases/13544

13545 Move extension methods from Polymorph-Tools-Diff into MCMergeBrowser
	https://pharo.fogbugz.com/f/cases/13545

'.
	self loadTogether: self script82 merge: false.
	self flushCaches.
self cleanRepositories.
