update50698
	"self new update50698"
	self withUpdateLog: '17616 CI Server: Failing tests related to Traits Polymorphism
	https://pharo.fogbugz.com/f/cases/17616

18019 Do a final sync of Fastable for Pharo5 release
	https://pharo.fogbugz.com/f/cases/18019'.
	self loadTogether: self script50698 merge: false.
	self loadConfiguration: 'FastTable' version: '0.10.2'.self flushCaches.
