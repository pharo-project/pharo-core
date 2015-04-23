update40610
	"self new update40610"
	self withUpdateLog: '15349 The menu in the PharoTutorial has an erroneous label
	https://pharo.fogbugz.com/f/cases/15349

15375 backport pharo4: 15332 [Spec Help] protocol and protocol-events dont exist anymore
	https://pharo.fogbugz.com/f/cases/15375'.
	self loadTogether: self script610 merge: false.
	self flushCaches.
