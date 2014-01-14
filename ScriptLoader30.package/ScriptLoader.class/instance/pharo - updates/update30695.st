update30695
	"self new update30695"
	self withUpdateLog: '7542 NB system example
	Part 2: Sync NB with Repo
	https://pharo.fogbugz.com/f/cases/7542'.
	self loadTogether: self script348 merge: false.
	self flushCaches.
