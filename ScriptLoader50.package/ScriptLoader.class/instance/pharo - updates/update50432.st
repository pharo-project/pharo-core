update50432
	"self new update50432"
	self withUpdateLog: '16891 MethodWidget should use a dictionary to store selected methods (Was: FT: Multi selection can happen when it should not)
	https://pharo.fogbugz.com/f/cases/16891

16980 Folding CategoryWidget into superclass
	https://pharo.fogbugz.com/f/cases/16980

16979 Integrate latest version of Catalog browser 12.11.2015
	https://pharo.fogbugz.com/f/cases/16979'.
	self loadTogether: self script50432 merge: false.
	self loadConfiguration: 'Catalog' version: '0.10'.self flushCaches.
