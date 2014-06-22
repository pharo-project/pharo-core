update40031
	"self new update40031"
	self withUpdateLog: '13358 TreeMorph* should be extracted from Morphic-Base and put in its own package
	https://pharo.fogbugz.com/f/cases/13358

13361 Extracted Spotlight from tools and move it to Tool-Spotlight
	https://pharo.fogbugz.com/f/cases/13361

'.
	self loadTogether: self script31 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
