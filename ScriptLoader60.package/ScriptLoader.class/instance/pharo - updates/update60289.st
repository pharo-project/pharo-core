update60289
	"self new update60289"
	self withUpdateLog: '18760 Failing test: WeakAnnouncerTest>>#testNoDeadWeakSubscriptions
	https://pharo.fogbugz.com/f/cases/18760

19327 failing tests testClassDescriptionRespectsPolymorphismWithTraitDescription
	https://pharo.fogbugz.com/f/cases/19327

19314 integrate basic baselines
	https://pharo.fogbugz.com/f/cases/19314'.
	self loadTogether: self script60289 merge: false.
	
(SystemAnnouncer uniqueInstance subscriptions glmSubscriptions select: [:sub | sub subscriber isNil]) do: #finalize. 3 timesRepeat: [Smalltalk garbageCollect ].
	self flushCaches.
