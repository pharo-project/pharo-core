update50107
	"self new update50107"
	self withUpdateLog: '15741 PluggableTextMorphWithLimits should be removed
	https://pharo.fogbugz.com/f/cases/15741

15749 RB: Dont Add Parens Around Lit Array Elements
	https://pharo.fogbugz.com/f/cases/15749

15751 catalog (with spotter) needs to show projects after classes and packages
	https://pharo.fogbugz.com/f/cases/15751

15752 make browsing versions of removed methods working again
	https://pharo.fogbugz.com/f/cases/15752'.
	self loadTogether: self script50107 merge: false.
	self loadConfiguration: 'Catalog' version: '0.5.1'.self flushCaches.
