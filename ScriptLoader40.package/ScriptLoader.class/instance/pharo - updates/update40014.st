update40014
	"self new update40014"
	self withUpdateLog: '13299 findAChangeSorter: should be removed
	https://pharo.fogbugz.com/f/cases/13299

'.
	self loadTogether: self script14 merge: false.
	self flushCaches.
