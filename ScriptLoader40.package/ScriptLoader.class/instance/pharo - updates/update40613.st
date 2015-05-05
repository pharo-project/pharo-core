update40613
	"self new update40613"
	self withUpdateLog: '15423 Backport Pharo4: 15422 SHTextStyler>>#styleInBackgroundProcess: should not set the text if styling process was terminated
	https://pharo.fogbugz.com/f/cases/15423

15492 Backport Nautilus MergeGroups + sourceNodeForPC should use #methodNode
	https://pharo.fogbugz.com/f/cases/15492'.
	self loadTogether: self script613 merge: false.
	self flushCaches.
