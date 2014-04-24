update30833
	"self new update30833"
	self withUpdateLog: '11596 Adding an iVar to class Class  gives error
	https://pharo.fogbugz.com/f/cases/11596'.
	self loadTogether: self script486 merge: false.
	ClassHierarchyTest fixSlotScope.
	self flushCaches.
