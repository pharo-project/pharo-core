update50013
	"self new update50013"
	self withUpdateLog: '15249 Comment RBEnvironment classes
	https://pharo.fogbugz.com/f/cases/15249

15412 SHParserST80 class>#new not needed
	https://pharo.fogbugz.com/f/cases/15412

15413 fix AST based syntax colouring
	https://pharo.fogbugz.com/f/cases/15413'.
	self loadTogether: self script622 merge: false.
	self flushCaches.
