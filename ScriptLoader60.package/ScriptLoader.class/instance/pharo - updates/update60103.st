update60103
	"self new update60103"
	self withUpdateLog: '18554 Update SystemCommandLineHandler dependencies
	https://pharo.fogbugz.com/f/cases/18554

18553 AST based execution counter 
	https://pharo.fogbugz.com/f/cases/18553

18552 Move menu item morph creation to RubSegment
	https://pharo.fogbugz.com/f/cases/18552

7241 Object>>#name should best be removed
	https://pharo.fogbugz.com/f/cases/7241'.
	self loadTogether: self script60103 merge: false.
	self flushCaches.
