update50492
	"self new update50492"
	self withUpdateLog: '17221 clean dirty packages after metacello update
	https://pharo.fogbugz.com/f/cases/17221

17219 Class Definitions not in Changes... again again
	https://pharo.fogbugz.com/f/cases/17219

17217 Remove PasteUpMorph>>#addMorphs:
	https://pharo.fogbugz.com/f/cases/17217'.
	self loadTogether: self script50492 merge: false.
	
ChangesLog reset; default.
	self flushCaches.
