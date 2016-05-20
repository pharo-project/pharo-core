update60024
	"self new update60024"
	self withUpdateLog: '18044 Use iconNamed: instead of relying on DNU [Nautilus]
	https://pharo.fogbugz.com/f/cases/18044

18238 PluggableTextMorph is not well update on theme change.
	https://pharo.fogbugz.com/f/cases/18238

18227 TestRunner use component lacking/with incomplete #themeChanged 
	https://pharo.fogbugz.com/f/cases/18227'.
	self loadTogether: self script60024 merge: false.
	self flushCaches.
