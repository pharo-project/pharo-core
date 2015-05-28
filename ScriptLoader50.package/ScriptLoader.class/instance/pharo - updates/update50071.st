update50071
	"self new update50071"
	self withUpdateLog: '15623 regenerate package information for TClass classTrait methods
	https://pharo.fogbugz.com/f/cases/15623

15620 RBRefactoringTest has strange code to access class variables
	https://pharo.fogbugz.com/f/cases/15620

15612 ToolShortcutsCategory has hard code shortcut.
	https://pharo.fogbugz.com/f/cases/15612

15618 Remove ComposableModel>>#instantiateModels:s senders in Spec-Tests
	https://pharo.fogbugz.com/f/cases/15618'.
	self loadTogether: self script50071 merge: false.
	
TClass classTrait localMethods do:[:traitMethod | TClass classTrait package addMethod: traitMethod].
	self flushCaches.
