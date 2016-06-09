update60073
	"self new update60073"
	self withUpdateLog: '18461 ConfigurationOfEpicea needs update
	https://pharo.fogbugz.com/f/cases/18461'.
	self loadTogether: self script60073 merge: false.
	self loadConfiguration: 'Epicea' version: '7.92.p5'.self flushCaches.
