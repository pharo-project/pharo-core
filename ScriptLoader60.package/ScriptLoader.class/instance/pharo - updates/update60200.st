update60200
	"self new update60200"
	self withUpdateLog: '19014 Autodeprecation creates a DoIt method on UndefinedObject
	https://pharo.fogbugz.com/f/cases/19014

19029 SystemAnnouncer allInstances size = 2
	https://pharo.fogbugz.com/f/cases/19029

19027 minimal Pharo build failing
	https://pharo.fogbugz.com/f/cases/19027'.
	self loadTogether: self script60200 merge: false.
	
[SystemAnnouncer allInstances second subscriptions glmSubscriptions
 select: [:each | 	each isKindOf: LegacyWeakSubscription] thenDo: [:each | each weakRegistry remove: each subscriber ifAbsent: []]. Smalltalk garbageCollect] value.
	self flushCaches.
