update60146
	"self new update60146"
	self withUpdateLog: '18732 Workaround for isBlockReturn:
	https://pharo.fogbugz.com/f/cases/18732

18721 external alignment for enumerations is bad in win32 
	https://pharo.fogbugz.com/f/cases/18721'.
	self loadTogether: self script60146 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.22.1'.self flushCaches.
