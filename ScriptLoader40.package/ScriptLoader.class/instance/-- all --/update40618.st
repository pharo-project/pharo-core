update40618
	"self new update40618"
	self withUpdateLog: '15929 backport Pharo4: Revisiting RBUnpackagedCodeRule
	https://pharo.fogbugz.com/f/cases/15929'.
	self loadTogether: self script618 merge: false.
	self flushCaches.
