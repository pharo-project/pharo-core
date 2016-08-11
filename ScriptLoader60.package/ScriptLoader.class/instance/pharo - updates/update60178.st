update60178
	"self new update60178"
	self withUpdateLog: '18907 Prevent LanguageEnvironment sublclasses to be in startup list
	https://pharo.fogbugz.com/f/cases/18907

18906 SessionManager default should store the new instance when no default defined
	https://pharo.fogbugz.com/f/cases/18906

18908 Prevent Symbol subclasses to be in startup list
	https://pharo.fogbugz.com/f/cases/18908'.
	self loadTogether: self script60178 merge: false.
	self flushCaches.
