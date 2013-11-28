update30605
	"self new update30605"
	self withUpdateLog: '12259 FileSystem memory reads/writes using a binary stream by default
	https://pharo.fogbugz.com/f/cases/12259
	
12265 Copying class does not copy comment
	https://pharo.fogbugz.com/f/cases/12265
'.
	self loadTogether: self script260 merge: false.
	self flushCaches.
