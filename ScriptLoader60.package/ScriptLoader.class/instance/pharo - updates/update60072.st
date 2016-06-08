update60072
	"self new update60072"
	self withUpdateLog: '18451 Do not use #ifNotNilDo:ifNil:,  #ifNil:ifNotNilDo:, #ifNotNilDo:
	https://pharo.fogbugz.com/f/cases/18451

18443 update Versionner configuration to 2.13.14
	https://pharo.fogbugz.com/f/cases/18443

18433 Simplify DangerousClassNotifier logic
	https://pharo.fogbugz.com/f/cases/18433'.
	self loadTogether: self script60072 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.14'.self flushCaches.
