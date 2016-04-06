update50676
	"self new update50676"
	self withUpdateLog: '17935 KMLog sends printString + string concatenation regardless of it logging or not
	https://pharo.fogbugz.com/f/cases/17935

17933 GlobalVariable>>#hasLiteral: is wrong
	https://pharo.fogbugz.com/f/cases/17933

17944 Typo Diff selectionHasAcutalClass
	https://pharo.fogbugz.com/f/cases/17944'.
	self loadTogether: self script50676 merge: false.
	
Smalltalk recompile.
	self flushCaches.
