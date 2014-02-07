update30749
	"self new update30749"
	self withUpdateLog: '12825 SimulateMouseSpecification>>testSimulateClick
	https://pharo.fogbugz.com/f/cases/12825

'.
	self loadTogether: self script402 merge: false.
	RPackageOrganizer default unregisterPackageNamed: 'ReactiveVariable'.
	self flushCaches.
