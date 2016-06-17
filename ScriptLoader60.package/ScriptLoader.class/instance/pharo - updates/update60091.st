update60091
	"self new update60091"
	self withUpdateLog: '18507 add #deprecated:transformWith: (automatic rewrites of deprecated sends)
	https://pharo.fogbugz.com/f/cases/18507'.
	self loadTogether: self script60091 merge: false.
	self flushCaches.
