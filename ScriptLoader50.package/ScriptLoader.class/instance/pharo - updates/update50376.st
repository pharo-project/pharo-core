update50376
	"self new update50376"
	self withUpdateLog: '16729 Removing PluggableTextField from FT
	https://pharo.fogbugz.com/f/cases/16729

16748 inline installation code for restoring the original CM
	https://pharo.fogbugz.com/f/cases/16748

16747 updated Configuration
	https://pharo.fogbugz.com/f/cases/16747'.
	self loadTogether: self script50376 merge: false.
	self loadConfiguration: 'TxText' version: '2.12.1'.self flushCaches.
