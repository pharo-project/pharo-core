update50243
	"self new update50243"
	self withUpdateLog: '16253 Failing Test: RBSmalllintTest>>#testMissingYourself 
	https://pharo.fogbugz.com/f/cases/16253

16251 Dictionary tests are failing
	https://pharo.fogbugz.com/f/cases/16251

16204 Traits package should not depend in System-Changes: fix two obvious causes
	https://pharo.fogbugz.com/f/cases/16204'.
	self loadTogether: self script50243 merge: false.
	self flushCaches.
