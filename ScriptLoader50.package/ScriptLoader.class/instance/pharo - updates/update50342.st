update50342
	"self new update50342"
	self withUpdateLog: '16640 Reflectivity: add support for reifications #name and #value for Class Variables
	https://pharo.fogbugz.com/f/cases/16640'.
	self loadTogether: self script50342 merge: false.
	self flushCaches.
