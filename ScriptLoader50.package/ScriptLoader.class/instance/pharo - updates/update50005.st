update50005
	"self new update50005"
	self withUpdateLog: '15387 Put back simplistic link code generation support+ enable test
	https://pharo.fogbugz.com/f/cases/15387

15332 [Spec Help] protocol and protocol-events dont exist anymore
	https://pharo.fogbugz.com/f/cases/15332

15349 The menu in the PharoTutorial has an erroneous label
	https://pharo.fogbugz.com/f/cases/15349

'.
	self loadTogether: self script614 merge: false.
	self flushCaches.
self cleanRepositories.
