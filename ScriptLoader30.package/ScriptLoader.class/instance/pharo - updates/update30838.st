update30838
	"self new update30838"
	self withUpdateLog: '13232 fix condense sources
	https://pharo.fogbugz.com/f/cases/13232'.
	self loadTogether: self script100 merge: false.
	self flushCaches.
