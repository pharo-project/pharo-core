update30830
	"self new update30830"
	self withUpdateLog: '13028 Adding ClassVariables corrupts class hierarchy
	https://pharo.fogbugz.com/f/cases/13028

'.
	self loadTogether: self script483 merge: false.
	self flushCaches.
