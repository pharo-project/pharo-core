update40135
	"self new update40135"
	self withUpdateLog: '5193 MC Browser: New Packages are never dirty in
	https://pharo.fogbugz.com/f/cases/5193

13723 Another Step in cleaning the MessageBrowser API
	https://pharo.fogbugz.com/f/cases/13723

13722 Failing test: OCDecompilerTest  #testExampleAndOr3   and #testExampleAndOr4
	https://pharo.fogbugz.com/f/cases/13722

'.
	self loadTogether: self script135 merge: false.
	OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
