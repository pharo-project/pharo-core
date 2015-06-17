update50117
	"self new update50117"
	self withUpdateLog: '15783 First cleanup of Workspace
	https://pharo.fogbugz.com/f/cases/15783

15778 The meaning of command-click (apple-click) on class names changed from Browse class to References to class
	https://pharo.fogbugz.com/f/cases/15778

15779 Clean up discouraged uses of SourceFiles and friends (3)
	https://pharo.fogbugz.com/f/cases/15779

15724 RB lint rules should not directly query the system dictionary
	https://pharo.fogbugz.com/f/cases/15724'.
	self loadTogether: self script50117 merge: false.
	self flushCaches.
