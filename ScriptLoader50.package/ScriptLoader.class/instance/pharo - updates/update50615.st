update50615
	"self new update50615"
	self withUpdateLog: '17711 Reset Registry of MetacelloProjectRegistration to remove Obsolete configuration instances
	https://pharo.fogbugz.com/f/cases/17711

17712 clean old startup mechanism - part 1
	https://pharo.fogbugz.com/f/cases/17712

17655 Changes in package loading behavior
	https://pharo.fogbugz.com/f/cases/17655'.
	self loadTogether: self script50615 merge: false.
	self flushCaches.
