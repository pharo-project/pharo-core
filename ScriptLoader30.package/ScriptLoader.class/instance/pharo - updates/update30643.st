update30643
	"self new update30643"
	self withUpdateLog: '12421 Fix DateAndTimeTest >> #testNotSymmetricWithString
	https://pharo.fogbugz.com/f/cases/12421
	
12420 DynamicSpecExample uses deprecated messages
	https://pharo.fogbugz.com/f/cases/12420
	
12423 Subclass of undefined classes should be subclasses of Object and not ProtoObject
	https://pharo.fogbugz.com/f/cases/12423
	
12165 #testObsoleteBehaviors failing after running native boost tests
	https://pharo.fogbugz.com/f/cases/12165
'.
	self loadTogether: self script296 merge: false.
	self flushCaches.
