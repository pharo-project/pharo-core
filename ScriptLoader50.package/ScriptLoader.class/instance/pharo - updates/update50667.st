update50667
	"self new update50667"
	self withUpdateLog: '17537 SystemAnnouncer has far too many subscriptions
	https://pharo.fogbugz.com/f/cases/17537

17899 Slots should not send messages to the parent objects
	https://pharo.fogbugz.com/f/cases/17899

17906 WeakMessageSend is broken
	https://pharo.fogbugz.com/f/cases/17906'.
	self loadTogether: self script50667 merge: false.
	
WeakAnnouncementSubscription allInstancesDo: [ :sub |
         sub becomeForward: (LegacyWeakSubscription new copyFrom: sub; yourself).
         sub subscriber isNil
            ifFalse: [ sub register ]
            ifTrue: [ sub finalize ] ] .

Smalltalk garbageCollect.
	self flushCaches.
