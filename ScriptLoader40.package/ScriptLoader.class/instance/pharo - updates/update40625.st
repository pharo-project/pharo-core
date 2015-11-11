update40625
	"self new update40625"
	self withUpdateLog: '16908 wrong source node for pc in mustBeBooleanInMagic
	https://pharo.fogbugz.com/f/cases/16908'.
	self loadTogether: self script625 merge: false.
	self flushCaches.
