update30507
	"self new update30507"
	self withUpdateLog: '11958 Add support for window menu addition
	https://pharo.fogbugz.com/f/cases/11958
	
11956 Move CompiledMethods deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/11956
	
11957 Move OpalCompiler deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/11957
	
11492 Kill UpdatingStringMorph, UpdatingMenu, and NameInHaloMorph
	https://pharo.fogbugz.com/f/cases/11492'.
	self loadTogether: self script162 merge: false.
	self flushCaches.
