update60204
	"self new update60204"
	self withUpdateLog: '18983 Kommitter is not working when invoked from Versionner
	https://pharo.fogbugz.com/f/cases/18983

18859 Loading a package break word selection on Windows
	https://pharo.fogbugz.com/f/cases/18859'.
	self loadTogether: self script60204 merge: false.
	self flushCaches.
