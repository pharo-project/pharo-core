update60042
	"self new update60042"
	self withUpdateLog: '18337 Spelling mistakes in Pharo (forward port issue 18324 to Pharo 6.0)
	https://pharo.fogbugz.com/f/cases/18337

18335 MonticelloFileTree-Core extends class MCFileRepositoryInspector
	https://pharo.fogbugz.com/f/cases/18335

18336 StartupPreferences extends packages outside minimal Pharo
	https://pharo.fogbugz.com/f/cases/18336

18326 add some more keymapping definitions in PharoShortcuts
	https://pharo.fogbugz.com/f/cases/18326'.
	self loadTogether: self script60042 merge: false.
	self flushCaches.
