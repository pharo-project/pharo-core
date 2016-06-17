update60093
	"self new update60093"
	self withUpdateLog: '18512 cleanup related to deprecations
	https://pharo.fogbugz.com/f/cases/18512'.
	self loadTogether: self script60093 merge: false.
	self flushCaches.
