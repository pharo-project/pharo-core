update40335
	"self new update40335"
	self withUpdateLog: '14334 Replace Announcer>>#on:send:to:s senders in RecentSubmissions
	https://pharo.fogbugz.com/f/cases/14334

14332 use #ast, not #parseTree so we benefit from the ASTCache
	https://pharo.fogbugz.com/f/cases/14332'.
	self loadTogether: self script335 merge: false.
	self flushCaches.
