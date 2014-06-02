update40011
	"self new update40011"
	self withUpdateLog: '12858 Remove hasRolloverBorder (Part 0)
	https://pharo.fogbugz.com/f/cases/12858

'.
	self loadTogether: self script11 merge: false.
	self flushCaches.
