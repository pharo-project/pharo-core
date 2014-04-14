update30825
	"self new update30825"
	self withUpdateLog: '12836 ImageSpecExample throws DNU
	https://pharo.fogbugz.com/f/cases/12836

'.
	self loadTogether: self script478 merge: false.
	ClassHierarchyTest fixSubclasses.
	self flushCaches.
