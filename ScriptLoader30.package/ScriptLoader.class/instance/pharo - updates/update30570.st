update30570
	"self new update30570"
	self withUpdateLog: '12149 Add support for removing a binding
	https://pharo.fogbugz.com/f/cases/12149'.
	self loadTogether: self script226 merge: false.
	KMRepository reset.
	self flushCaches.
