update40455
	"self new update40455"
	self withUpdateLog: '14766 Fix two release methods in Versionner
	https://pharo.fogbugz.com/f/cases/14766

14768 MCClassDefinition: merge #createClass into #load
	https://pharo.fogbugz.com/f/cases/14768'.
	self loadTogether: self script455 merge: false.
	self flushCaches.
