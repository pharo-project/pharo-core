update50721
	"self new update50721"
	self withUpdateLog: '18025 Trait Polymorphism test failing again...
	https://pharo.fogbugz.com/f/cases/18025'.
	self loadTogether: self script50721 merge: false.
	self loadConfiguration: 'Ston' version: '0.19'.self flushCaches.
