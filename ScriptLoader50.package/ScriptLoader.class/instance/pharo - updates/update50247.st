update50247
	"self new update50247"
	self withUpdateLog: '16150 make OSWindow events work with morphic
	https://pharo.fogbugz.com/f/cases/16150

16276 thoroughWhichSelectorsReferTo:special:byte: does not need to use isTrait
	https://pharo.fogbugz.com/f/cases/16276'.
	self loadTogether: self script50247 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.2.1'.self flushCaches.
