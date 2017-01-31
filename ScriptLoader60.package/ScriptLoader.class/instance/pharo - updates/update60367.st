update60367
	"self new update60367"
	self withUpdateLog: '19635 DisplayScreen has  depth 1 on Linux
	https://pharo.fogbugz.com/f/cases/19635

19634 WriteBarrier mirror methods should be moved to MirrorPrimitives
	https://pharo.fogbugz.com/f/cases/19634'.
	self loadTogether: self script60367 merge: false.
	
DisplayScreen initialize.
	self flushCaches.
