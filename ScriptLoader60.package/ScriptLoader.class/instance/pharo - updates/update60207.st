update60207
	"self new update60207"
	self withUpdateLog: '19054 QA 3.2.7
	https://pharo.fogbugz.com/f/cases/19054

19050 Copying a class doesnt replicate the pool dictionary definitions
	https://pharo.fogbugz.com/f/cases/19050

19044 DebugAction should use key-mappings and not characters to indicate shortcuts
	https://pharo.fogbugz.com/f/cases/19044'.
	self loadTogether: self script60207 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.7'.self flushCaches.
