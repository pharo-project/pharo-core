update60108
	"self new update60108"
	self withUpdateLog: '18541 MessageNotUnderstood when trying to look at versions of a class-side method.
	https://pharo.fogbugz.com/f/cases/18541

18569 Finder search selector : Object>>name deprecation warning
	https://pharo.fogbugz.com/f/cases/18569

18576 MCClassTraitDefinition>>#sortKey raises Warning #name
	https://pharo.fogbugz.com/f/cases/18576

18571 StringMorph draw underline and striketrough
	https://pharo.fogbugz.com/f/cases/18571

18575 MessageBrowser can not browse RGMethodDefinition with no package information
	https://pharo.fogbugz.com/f/cases/18575'.
	self loadTogether: self script60108 merge: false.
	self flushCaches.
