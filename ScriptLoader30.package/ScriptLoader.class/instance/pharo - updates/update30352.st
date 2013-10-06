update30352
	"self new update30352"
	self withUpdateLog: '10608 ShortCut for browse scope does not work
	https://pharo.fogbugz.com/f/cases/10608
	
11480 refactor old compiler api evaluate:for:logged:
	https://pharo.fogbugz.com/f/cases/11480
	
11482 [Fix] broken pointer explorer menu
	https://pharo.fogbugz.com/f/cases/11482
	
- undo 11473 
	'.
	self loadTogether: self script144 merge: false.
	self flushCaches.
