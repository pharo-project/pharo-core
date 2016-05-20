update60026
	"self new update60026"
	self withUpdateLog: '18266 OCClassScope should ask class directly to find variable 
	https://pharo.fogbugz.com/f/cases/18266'.
	self loadTogether: self script60026 merge: false.
	self flushCaches.
