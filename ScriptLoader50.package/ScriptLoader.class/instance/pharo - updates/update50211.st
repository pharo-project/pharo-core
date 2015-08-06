update50211
	"self new update50211"
	self withUpdateLog: '16095 #browseScropedMorph and #browseVariablesMorph are Undeclared
	https://pharo.fogbugz.com/f/cases/16095

16094 SHRBTextStyler can not style incomplete literal arrays
	https://pharo.fogbugz.com/f/cases/16094

16102 wrong coloring for nested parentheses (SHRBTextStlyer)
	https://pharo.fogbugz.com/f/cases/16102

16103 Allow ManifestBuilder to update methods in different protocols
	https://pharo.fogbugz.com/f/cases/16103

16079 Nautilus window moves randomly and does something that takes time
	https://pharo.fogbugz.com/f/cases/16079

16104 Fast Table has infinite loop when drawing then consuming a lot of CPU
	https://pharo.fogbugz.com/f/cases/16104'.
	self loadTogether: self script50211 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.5'.self flushCaches.
