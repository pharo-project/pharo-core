update40012
	"self new update40012"
	self withUpdateLog: '12858 Remove hasRolloverBorder - Second part
	https://pharo.fogbugz.com/f/cases/12858

'.
	self loadTogether: self script12 merge: false.
	self flushCaches.
