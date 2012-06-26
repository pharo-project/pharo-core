pharo - updates
update20080
	"self new update20080"
	self withUpdateLog: '- Issue 5912: 	[ENH]: IntegerTests for Dummies. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=5912
	
- Issue 5756:	Failing tests: MC loading/ unloading. First test.
	http://code.google.com/p/pharo/issues/detail?id=5756 
	
- Issue 5909:	[ENH]: Easy TimeZone instances. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=5909
	
- Issue 5897:	[ENH]: Clean SystemProgressMorph and friends. Thanks Sean De Nigris.	
	http://code.google.com/p/pharo/issues/detail?id=5897'.
	self loadTogether: self script69 merge: false.
	self flushCaches.
