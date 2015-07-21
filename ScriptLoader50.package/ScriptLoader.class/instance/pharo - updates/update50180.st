update50180
	"self new update50180"
	self withUpdateLog: '16001 New decompiler
	https://pharo.fogbugz.com/f/cases/16001'.
	self loadTogether: self script50180 merge: false.
	self flushCaches.
