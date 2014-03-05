update30788
	"self new update30788"
	self withUpdateLog: '13006 Browsers do not synchronize class definitions
	https://pharo.fogbugz.com/f/cases/13006

13032 Transcript red screen of death
	https://pharo.fogbugz.com/f/cases/13032

13046 Error when browsing a Traits class-side in Monticello Browser
	https://pharo.fogbugz.com/f/cases/13046

13005 SystemWindow>>sendToBack should only consider other SystemWindows
	https://pharo.fogbugz.com/f/cases/13005

'.
	self loadTogether: self script441 merge: false.
	self flushCaches.
