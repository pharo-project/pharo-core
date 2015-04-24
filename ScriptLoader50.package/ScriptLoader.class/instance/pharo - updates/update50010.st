update50010
	"self new update50010"
	self withUpdateLog: '12595 Add Morph>>#asText
	https://pharo.fogbugz.com/f/cases/12595

15338 OrderedDictionary changes to merge
	https://pharo.fogbugz.com/f/cases/15338

'.
	self loadTogether: self script619 merge: false.
	self flushCaches.
self cleanRepositories.
