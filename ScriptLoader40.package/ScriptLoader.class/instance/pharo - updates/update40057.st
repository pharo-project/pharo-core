update40057
	"self new update40057"
	self withUpdateLog: '13415 Smalltalk resetTools breaks keybindings
	https://pharo.fogbugz.com/f/cases/13415

13417 Failing tests: ClassDescriptionTest #testClassDescriptionRespectsPolymorphismWithTraitDescription
	https://pharo.fogbugz.com/f/cases/13417

13451 For Pharo4: 13422 Image crashes because an open Nautilus browser hangs onto many objects
	https://pharo.fogbugz.com/f/cases/13451

'.
	self loadTogether: self script57 merge: false.
	self flushCaches.
