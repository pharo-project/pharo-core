update30662
	"self new update30662"
	self withUpdateLog: '12489 Hidden dependencies between Nautilus and ThemeIcons
	https://pharo.fogbugz.com/f/cases/12489
	
12507 run tests from package throws DNU
	https://pharo.fogbugz.com/f/cases/12507
	
12485 Splits and refactorings in the SpecLayout
	https://pharo.fogbugz.com/f/cases/12485
	
12509 Nautilus does not use changeStamp on newly modified class comment
	https://pharo.fogbugz.com/f/cases/12509'.
	self loadTogether: self script315 merge: false.
	self flushCaches.
