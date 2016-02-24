update50610
	"self new update50610"
	self withUpdateLog: '17683 but right button (menu) is broken in process browser
	https://pharo.fogbugz.com/f/cases/17683

17688 speedup RBSentNotImplementedRule
	https://pharo.fogbugz.com/f/cases/17688

17065 Transcript has no context menu
	https://pharo.fogbugz.com/f/cases/17065

17684  highlighting broken in message list (senders off / implementors of)
	https://pharo.fogbugz.com/f/cases/17684'.
	self loadTogether: self script50610 merge: false.
	self flushCaches.
