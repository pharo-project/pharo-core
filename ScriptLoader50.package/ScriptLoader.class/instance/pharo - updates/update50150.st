update50150
	"self new update50150"
	self withUpdateLog: '15881 Add a method to lookup a Job in the chain of parent jobs
	https://pharo.fogbugz.com/f/cases/15881

15883 LinkedList>>#collect:thenReject: is slow
	https://pharo.fogbugz.com/f/cases/15883'.
	self loadTogether: self script50150 merge: false.
	self flushCaches.
