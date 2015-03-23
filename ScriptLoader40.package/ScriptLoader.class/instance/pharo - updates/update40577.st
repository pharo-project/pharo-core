update40577
	"self new update40577"
	self withUpdateLog: '15190 Nautilus incorrectly flags Error classes as "missing class comments"
	https://pharo.fogbugz.com/f/cases/15190

14924 Failing tests: testClassDescriptionRespectsPolymorphismWithTraitDescription
	https://pharo.fogbugz.com/f/cases/14924

15189 "Extended search" vs. "Code search"
	https://pharo.fogbugz.com/f/cases/15189'.
	self loadTogether: self script577 merge: false.
	self flushCaches.
