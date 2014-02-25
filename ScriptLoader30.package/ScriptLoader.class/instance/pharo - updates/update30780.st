update30780
	"self new update30780"
	self withUpdateLog: '12458 PointerExplorer MNU MenuMorph>>addGroup:
	https://pharo.fogbugz.com/f/cases/12458

12211 Special #inform: in headless mode no longer required
	https://pharo.fogbugz.com/f/cases/12211

12985 Sometimes multi-selection is lost on trees
	https://pharo.fogbugz.com/f/cases/12985

'.
	self loadTogether: self script433 merge: false.
	self flushCaches.
