update50756
	"self new update50756"
	self withUpdateLog: '18203 Welcome window does not show content at startup
	https://pharo.fogbugz.com/f/cases/18203

18204 typo in Explore Pharo Environment chapter
	https://pharo.fogbugz.com/f/cases/18204

18205 typo in chapter "Learn Pharo Smalltalk"
	https://pharo.fogbugz.com/f/cases/18205'.
	self loadTogether: self script50756 merge: false.
	
PharoWelcomePage openForRelease.
100 timesRepeat: [10 milliSecond wait. World doOneCycle. Processor yield. ].
3 timesRepeat: [Smalltalk garbageCollect].
	self flushCaches.
