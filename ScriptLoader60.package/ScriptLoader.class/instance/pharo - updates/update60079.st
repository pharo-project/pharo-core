update60079
	"self new update60079"
	self withUpdateLog: '18473 move var to class refactoring broken
	https://pharo.fogbugz.com/f/cases/18473

18475 Do not announce method creation if the class is anonymous
	https://pharo.fogbugz.com/f/cases/18475'.
	self loadTogether: self script60079 merge: false.
	self flushCaches.
