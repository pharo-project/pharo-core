update40103
	"self new update40103"
	self withUpdateLog: '13598 MorphicModel ivar open: not used
	https://pharo.fogbugz.com/f/cases/13598

13602 SmalltalkImage >> #openLog dependent on Tools
	https://pharo.fogbugz.com/f/cases/13602

13601 Add in group DNU
	https://pharo.fogbugz.com/f/cases/13601

13600 DiffereratorSettings --> move to TextDiffBuilder
	https://pharo.fogbugz.com/f/cases/13600

'.
	self loadTogether: self script103 merge: false.
	self flushCaches.
self cleanRepositories.
