update50573
	"self new update50573"
	
10 timesRepeat: [ 
| ann |
Smalltalk garbageCollect.
ann := SystemAnnouncer uniqueInstance.

ann subscriptions glmSubscriptions do: [ :sub | 
	((sub isKindOf: WeakAnnouncementSubscription) and: [ sub subscriber isNil ])
 ifTrue: [ ann removeSubscription:  sub ]
	
]].
	self withUpdateLog: '17551 random fail on RubTextComposer>>recomposeFrom:to:delta:
	https://pharo.fogbugz.com/f/cases/17551

17549 ChangesLog should subscribe weakly to SystemAnnouncer
	https://pharo.fogbugz.com/f/cases/17549

17538 Remove dead SystemAnnouncer subscriptions
	https://pharo.fogbugz.com/f/cases/17538'.
	self loadTogether: self script50573 merge: false.
	
ChangesLog reset; default.
	self flushCaches.
