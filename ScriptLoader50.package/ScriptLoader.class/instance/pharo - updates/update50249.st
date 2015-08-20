update50249
	"self new update50249"
	self withUpdateLog: '16250 Activate new Encoders
	https://pharo.fogbugz.com/f/cases/16250

16295 Update NautilusGroupAutoBuilder
	https://pharo.fogbugz.com/f/cases/16295

16270 Rewrite ifTrue:ifFalse: using min: in Date>>#addMonths:
	https://pharo.fogbugz.com/f/cases/16270'.
	self loadTogether: self script50249 merge: false.
	self loadConfiguration: 'NautilusGroupAutoBuilder' version: '1.1'.
CompiledMethod initialize.
	self flushCaches.
