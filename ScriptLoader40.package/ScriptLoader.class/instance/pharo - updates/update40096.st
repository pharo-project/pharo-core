update40096
	"self new update40096"
	self withUpdateLog: '13581 move ThreadSafeTranscriptPluggableTextMorph to own package named Tool-Transcript
	https://pharo.fogbugz.com/f/cases/13581

13583 #senders and #implementors on Symbol
	https://pharo.fogbugz.com/f/cases/13583

13579 MCPatchOperation >> #patchWrapper should be moved to package Polymorph-Tools-Diff
	https://pharo.fogbugz.com/f/cases/13579

13582 Deprecated #classSymbol
	https://pharo.fogbugz.com/f/cases/13582

'.
	self loadTogether: self script96 merge: false.
	self flushCaches.
self cleanRepositories.
