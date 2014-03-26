update30803
	"self new update30803"
	self withUpdateLog: '13114 Broken PharoTheme
	https://pharo.fogbugz.com/f/cases/13114

13112 Broken Vistary theme
	https://pharo.fogbugz.com/f/cases/13112

'.
	self loadTogether: self script456 merge: false.
	self flushCaches.
