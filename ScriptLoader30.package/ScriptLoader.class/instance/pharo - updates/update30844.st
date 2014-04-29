update30844
	"self new update30844"
	self withUpdateLog: '13028 Adding ClassVariables corrupts class hierarchy
	https://pharo.fogbugz.com/f/cases/13028'.
	self loadTogether: self script106 merge: false.
	self flushCaches.
