update60189
	"self new update60189"
	self withUpdateLog: '18957 Class copy should not change the name of the instance variables
	https://pharo.fogbugz.com/f/cases/18957

18434 Metacello-ProfSef classes sends wrong methods
	https://pharo.fogbugz.com/f/cases/18434

18959 Create a class with a not existing trait does not suggest to create a new trait
	https://pharo.fogbugz.com/f/cases/18959

18969 RBParser gets stuck in an endless loop if literal array contains an error
	https://pharo.fogbugz.com/f/cases/18969'.
	self loadTogether: self script60189 merge: false.
	self flushCaches.
