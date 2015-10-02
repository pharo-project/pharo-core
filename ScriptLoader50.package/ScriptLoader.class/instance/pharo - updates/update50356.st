update50356
	"self new update50356"
	self withUpdateLog: '16680 remove direct references to icontheme classes
	https://pharo.fogbugz.com/f/cases/16680'.
	self loadTogether: self script50356 merge: false.
	self flushCaches.
