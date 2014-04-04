update30812
	"self new update30812"
	self withUpdateLog: '13170 Hanging process after running DebuggerTest>>testBasic
	https://pharo.fogbugz.com/f/cases/13170

13147 NB Mac System Call Example
	https://pharo.fogbugz.com/f/cases/13147

'.
	self loadTogether: self script465 merge: false.
	self flushCaches.
