update60013
	"self new update60013"
	self withUpdateLog: '18197 Text asUrl makes the package Network-Url dependent on Text
	https://pharo.fogbugz.com/f/cases/18197

18251 add 50 repo for now so we can merge
	https://pharo.fogbugz.com/f/cases/18251'.
	self loadTogether: self script60013 merge: false.
	self flushCaches.
