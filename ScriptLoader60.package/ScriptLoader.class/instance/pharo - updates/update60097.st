update60097
	"self new update60097"
	self withUpdateLog: '18520 EyeTreeInspector is broken
	https://pharo.fogbugz.com/f/cases/18520

18527 #halt should not be in the badSelectors rule
	https://pharo.fogbugz.com/f/cases/18527

18525 fix for IconStyler
	https://pharo.fogbugz.com/f/cases/18525'.
	self loadTogether: self script60097 merge: false.
	self flushCaches.
