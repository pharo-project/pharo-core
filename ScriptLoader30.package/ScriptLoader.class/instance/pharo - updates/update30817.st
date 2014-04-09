update30817
	"self new update30817"
	self withUpdateLog: '13014 Hide Refactoring Scope chooser for 3.0 release
	https://pharo.fogbugz.com/f/cases/13014

12738 Nautilus: Scoped on Class-side = Empty Class Pane
	https://pharo.fogbugz.com/f/cases/12738

13103 Komitter mixes up when some methods of extension are modified 
	https://pharo.fogbugz.com/f/cases/13103

'.
	self loadTogether: self script470 merge: false.
	self flushCaches.
