update40100
	"self new update40100"
	self withUpdateLog: '- make Globals and Class binding compact
- workaround for Associations appearing in globals and classPools due to Undeclared handling'.
	self loadTogether: self script100 merge: false.
	GlobalVariable becomeCompact.
ClassVariable becomeCompact.
	self flushCaches.
self cleanRepositories.
