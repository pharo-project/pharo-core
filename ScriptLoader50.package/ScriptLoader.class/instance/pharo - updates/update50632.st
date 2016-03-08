update50632
	"self new update50632"
	self withUpdateLog: '16368 refersToLiteral: should (for now) just call hasLiteralThorough:
	https://pharo.fogbugz.com/f/cases/16368

17768  remove again isEphemeronClass and isImmediateClass
	https://pharo.fogbugz.com/f/cases/17768'.
	self loadTogether: self script50632 merge: false.
	self flushCaches.
