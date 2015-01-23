update40458
	"self new update40458"
	self withUpdateLog: '14775 Cleanup "Jobs" package further
	https://pharo.fogbugz.com/f/cases/14775

14770 Clean up the AST-Interpreter package further
	https://pharo.fogbugz.com/f/cases/14770

'.
	self loadTogether: self script458 merge: false.
	self flushCaches.
self cleanRepositories.
