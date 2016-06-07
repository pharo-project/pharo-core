update60063
	"self new update60063"
	self withUpdateLog: '18410 Remove KMMockMorph
	https://pharo.fogbugz.com/f/cases/18410

18398 LanguageEnvironment class>>#localeID: can cause endless loop
	https://pharo.fogbugz.com/f/cases/18398

18406 Add EphemeronTests
	https://pharo.fogbugz.com/f/cases/18406

18400 Add Pharo 6 to #metacelloPlatformAttributes (but keep Pharo 5 for now)
	https://pharo.fogbugz.com/f/cases/18400'.
	self loadTogether: self script60063 merge: false.
	self flushCaches.
