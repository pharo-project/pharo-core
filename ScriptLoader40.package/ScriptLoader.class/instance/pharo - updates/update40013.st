update40013
	"self new update40013"
	self withUpdateLog: '13302 error on menus after theme refactor
	https://pharo.fogbugz.com/f/cases/13302

13300 HaloMorph class should not invoke super initialize
	https://pharo.fogbugz.com/f/cases/13300'.
	self loadTogether: self script13 merge: false.
	self flushCaches.
