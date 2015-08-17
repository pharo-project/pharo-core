update50241
	"self new update50241"
	self withUpdateLog: '16233 Add balloon-text to the various buttons used by Nautilus browser
	https://pharo.fogbugz.com/f/cases/16233

16210 Multilinguage-OtherLinguage should not have the tests inside his packages.
	https://pharo.fogbugz.com/f/cases/16210

15020 remove "missing yourself" rule
	https://pharo.fogbugz.com/f/cases/15020

16241 RBFutureDeprecationWarningRule not needed
	https://pharo.fogbugz.com/f/cases/16241'.
	self loadTogether: self script50241 merge: false.
	self flushCaches.
