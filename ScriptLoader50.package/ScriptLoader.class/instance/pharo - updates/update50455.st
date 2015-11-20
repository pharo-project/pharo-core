update50455
	"self new update50455"
	self withUpdateLog: '17053 Merge DialogGroupManagerWithPackagesSelectionUI  into DialogGroupManagerUI
	https://pharo.fogbugz.com/f/cases/17053

17059 builder style API for Breakpoint
	https://pharo.fogbugz.com/f/cases/17059

17058 recompile whole image after compiler change
	https://pharo.fogbugz.com/f/cases/17058'.
	self loadTogether: self script50455 merge: false.
	
OpalCompiler recompileAll.
	self flushCaches.
