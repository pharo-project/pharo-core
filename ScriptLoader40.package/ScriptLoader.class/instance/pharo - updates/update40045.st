update40045
	"self new update40045"
	self withUpdateLog: '13410 Wrong Nautilus is registered as default browser
	https://pharo.fogbugz.com/f/cases/13410

13395 Add SHA256 HashFunction
	https://pharo.fogbugz.com/f/cases/13395

'.
	self loadTogether: self script45 merge: false.
	Smalltalk resetTools.
	self flushCaches.
