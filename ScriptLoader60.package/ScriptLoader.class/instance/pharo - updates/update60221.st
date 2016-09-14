update60221
	"self new update60221"
	self withUpdateLog: '19087 Tracking of processes during test run should not keep processes strongly.
	https://pharo.fogbugz.com/f/cases/19087

18755 Variable-button raises "SubscriptOutOfBounds: 1" when a Trait is selected
	https://pharo.fogbugz.com/f/cases/18755

17543 VM crash in Windows when compiling many symbols
	https://pharo.fogbugz.com/f/cases/17543'.
	self loadTogether: self script60221 merge: false.
	self flushCaches.
