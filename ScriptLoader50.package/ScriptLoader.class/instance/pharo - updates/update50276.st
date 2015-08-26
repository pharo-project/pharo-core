update50276
	"self new update50276"
	self withUpdateLog: '16289 Get rid of System-Localization dependency from the bootstrap
	https://pharo.fogbugz.com/f/cases/16289

16188 System-Changes has low-level dependents
	https://pharo.fogbugz.com/f/cases/16188'.
	self loadTogether: self script50276 merge: false.
	self flushCaches.
