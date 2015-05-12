update50044
	"self new update50044"
	self withUpdateLog: '15526 Code generation for ASTs with syntax errors
	https://pharo.fogbugz.com/f/cases/15526

15527 creation of RBNullFormatter in AST-Core 
	https://pharo.fogbugz.com/f/cases/15527

15524 CodeImport: Better Error Info On Non-existent Behavior
	https://pharo.fogbugz.com/f/cases/15524

15519 error on printString for FileReference
	https://pharo.fogbugz.com/f/cases/15519

'.
	self loadTogether: self script50044 merge: false.
	self flushCaches.
self cleanRepositories.
