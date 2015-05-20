update50054
	"self new update50054"
	self withUpdateLog: '15425 Make AST based syntax coloring the default
	https://pharo.fogbugz.com/f/cases/15425

15563 ClassOrganization>>#categories should not answer "all" category 
	https://pharo.fogbugz.com/f/cases/15563'.
	self loadTogether: self script50054 merge: false.
	
SHRBTextStyler useAstColoring: true.
	self flushCaches.
