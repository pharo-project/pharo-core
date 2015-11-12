update50440
	"self new update50440"
	self withUpdateLog: '16960 fix DNU hasBindingOf:
	https://pharo.fogbugz.com/f/cases/16960

16998 Loading old monticello files throws UTF8InvalidText
	https://pharo.fogbugz.com/f/cases/16998

'.
	self loadTogether: self script50440 merge: false.
	self flushCaches.
self cleanRepositories.
