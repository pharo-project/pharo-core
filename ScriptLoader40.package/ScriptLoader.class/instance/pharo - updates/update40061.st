update40061
	"self new update40061"
	self withUpdateLog: '13461 Slots: GlobalVariable and more class creation methods
	https://pharo.fogbugz.com/f/cases/13461

13460 When selecting a UI Theme in the Setting, it should call #installFullTheme
	https://pharo.fogbugz.com/f/cases/13460

'.
	self loadTogether: self script61 merge: false.
	self flushCaches.
