update30383
	"self new update30383"
	self withUpdateLog: '11542 Load FileTree in the image core
	https://pharo.fogbugz.com/f/cases/11542
'.
	self loadTogether: self script175 merge: false.
	self flushCaches.
