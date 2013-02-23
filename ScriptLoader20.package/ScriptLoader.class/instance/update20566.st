pharo - updates
update20566
	"self new update20566"
	self withUpdateLog: 'Issue 7579:	Faiing test: MessageTallyTest>>#testSampling1
	http://code.google.com/p/pharo/issues/detail?id=7579'.
	self loadTogether: self script541 merge: false.
	self flushCaches.
