update50437
	"self new update50437"
	self withUpdateLog: '16986 folding PackageWidget into AbstractPackageWidget, ClassWidget into AbstractClassWidget and rest 
	https://pharo.fogbugz.com/f/cases/16986'.
	self loadTogether: self script50437 merge: false.
	self flushCaches.
