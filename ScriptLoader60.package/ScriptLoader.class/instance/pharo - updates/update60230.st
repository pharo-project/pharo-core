update60230
	"self new update60230"
	self withUpdateLog: '19104 Typo in SizeMismatch error message
	https://pharo.fogbugz.com/f/cases/19104

19051 Do not reinit selector table on startup (takes too long)
	https://pharo.fogbugz.com/f/cases/19051'.
	self loadTogether: self script60230 merge: false.
	self flushCaches.
