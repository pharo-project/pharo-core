update50628
	"self new update50628"
	self withUpdateLog: '17735 SHA256 hashStream: errors on strings longer than 64 characters
	https://pharo.fogbugz.com/f/cases/17735

17749 Do not return #nil but fall back on the decompiler in #parseTree
	https://pharo.fogbugz.com/f/cases/17749'.
	self loadTogether: self script50628 merge: false.
	self flushCaches.
