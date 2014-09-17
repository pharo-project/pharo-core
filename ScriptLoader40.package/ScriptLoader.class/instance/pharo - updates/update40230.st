update40230
	"self new update40230"
	self withUpdateLog: '14027 ensureTransparentColor is unused and looks dead
	https://pharo.fogbugz.com/f/cases/14027'.
	self loadTogether: self script230 merge: false.
	self flushCaches.
