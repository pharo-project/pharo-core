update50392
	"self new update50392"
	self withUpdateLog: '15184 Systembrowser package navigation inconsistent behavior
	https://pharo.fogbugz.com/f/cases/15184

16799 RBParser assigns comments to wrong node
	https://pharo.fogbugz.com/f/cases/16799

16798 #sourceInterval should work for every RBNode
	https://pharo.fogbugz.com/f/cases/16798

16476 dropping an MCZ file on the world does not propose a browse anymore
	https://pharo.fogbugz.com/f/cases/16476

'.
	self loadTogether: self script50392 merge: false.
	self flushCaches.
self cleanRepositories.
