update60186
	"self new update60186"
	self withUpdateLog: '18949 reduce direct references to OpalCompiler
	https://pharo.fogbugz.com/f/cases/18949

18951 Add helper methods to get all assignment nodes of a slot
	https://pharo.fogbugz.com/f/cases/18951

18952 adopt some extensions of AST-Core from Reflectivity
	https://pharo.fogbugz.com/f/cases/18952'.
	self loadTogether: self script60186 merge: false.
	self flushCaches.
