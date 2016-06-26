update60115
	"self new update60115"
	self withUpdateLog: '18598 avoid DNU when reapplying rules targeting a package
	https://pharo.fogbugz.com/f/cases/18598

18601 #haltIfNil and deprecated:transformWith: have wrong visual
	https://pharo.fogbugz.com/f/cases/18601

18593 Remove Pharo references to Smalltalk evaluate:
	https://pharo.fogbugz.com/f/cases/18593

15859 review rule RBUncommonMessageSendRule
	https://pharo.fogbugz.com/f/cases/15859'.
	self loadTogether: self script60115 merge: false.
	self flushCaches.
