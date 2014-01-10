update30684
	"self new update30684"
	self withUpdateLog: '
10578 Improve default Configuration Template
	https://pharo.fogbugz.com/f/cases/10578

12614 Update LRUCache Implementation - Step 1A - Copy LRUCache to OldLRUCache
	https://pharo.fogbugz.com/f/cases/12614

12612 Do not show image save mouse icon when quit with no save
	https://pharo.fogbugz.com/f/cases/12612

12617 unskip a Fuel test that was disabled when bug hunting...
	https://pharo.fogbugz.com/f/cases/12617
'.
	self loadTogether: self script337 merge: false.
	self flushCaches.
