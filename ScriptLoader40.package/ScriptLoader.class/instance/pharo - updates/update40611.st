update40611
	"self new update40611"
	self withUpdateLog: '15338 OrderedDictionary changes to merge
	https://pharo.fogbugz.com/f/cases/15338

15339 Monticello with spotter extension methods throws MNU errors when browsing packages in repos that dont contain every package
	https://pharo.fogbugz.com/f/cases/15339'.
	self loadTogether: self script611 merge: false.
	self flushCaches.
