update30413
	"self new update30413"
	self withUpdateLog: '11607 Small Code Critic cleanup of Morphic-Base
	https://pharo.fogbugz.com/f/cases/11607

11634 diffmorph icons should not use generic names
	https://pharo.fogbugz.com/f/cases/11634
	
11643 add replacement methods for #isLiteral in IRLiteral and OCLiteralVariable
	https://pharo.fogbugz.com/f/cases/11643

'.
	self loadTogether: self script205 merge: false.
	self flushCaches.
