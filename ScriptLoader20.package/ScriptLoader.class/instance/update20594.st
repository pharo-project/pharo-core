pharo - updates
update20594
	"self new update20594"
	self withUpdateLog: '10123 Bug in warning in CriticBrowser
	https://pharo.fogbugz.com/f/cases/10123'.
	self loadTogether: self script568 merge: false.
	self flushCaches.
