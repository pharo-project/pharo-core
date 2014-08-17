update40172
	"self new update40172"
	self withUpdateLog: '13848 EyePatch for inspectors eye
	https://pharo.fogbugz.com/f/cases/13848

13820 Move #useAstColoring setting to the Shout settings group
	https://pharo.fogbugz.com/f/cases/13820

13852 MNU on ChangeSorter fileOut
	https://pharo.fogbugz.com/f/cases/13852

'.
	self loadTogether: self script172 merge: false.
	self flushCaches.
self cleanRepositories.
