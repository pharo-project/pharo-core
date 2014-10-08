update40290
	"self new update40290"
	self withUpdateLog: '14183 Update Zn October 2014
	https://pharo.fogbugz.com/f/cases/14183'.
	self loadTogether: self script290 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.5.5'.self flushCaches.
