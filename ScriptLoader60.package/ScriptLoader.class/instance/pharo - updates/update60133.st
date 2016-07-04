update60133
	"self new update60133"
	self withUpdateLog: '18658 Browse class directly for global variables
	https://pharo.fogbugz.com/f/cases/18658

18529 There is empty packages in the image
	https://pharo.fogbugz.com/f/cases/18529

15857 review rule RBAsOrderedCollectionNotNeededRule
	https://pharo.fogbugz.com/f/cases/15857

18675 Cleanup related to deprecated methods
	https://pharo.fogbugz.com/f/cases/18675

18673 Move variable declaration refactoring creates undeclared variables
	https://pharo.fogbugz.com/f/cases/18673'.
	self loadTogether: self script60133 merge: false.
	self flushCaches.
