update50716
	"self new update50716"
	self withUpdateLog: '18087 Update Catalog 0.13
	https://pharo.fogbugz.com/f/cases/18087

18096 haltonce in formatter
	https://pharo.fogbugz.com/f/cases/18096'.
	self loadTogether: self script50716 merge: false.
	self loadConfiguration: 'Catalog' version: '0.13'.self flushCaches.
