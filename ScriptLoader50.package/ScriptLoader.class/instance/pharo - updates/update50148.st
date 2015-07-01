update50148
	"self new update50148"
	self withUpdateLog: '15876 fix failing releasetest
	https://pharo.fogbugz.com/f/cases/15876

15877 ClassBuilder: simplify users of #layoutForType:
	https://pharo.fogbugz.com/f/cases/15877

15878 Clean up discouraged uses of SourceFiles and friends (11)
	https://pharo.fogbugz.com/f/cases/15878'.
	self loadTogether: self script50148 merge: false.
	self flushCaches.
