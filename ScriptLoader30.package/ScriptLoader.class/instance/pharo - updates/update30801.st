update30801
	"self new update30801"
	self withUpdateLog: '13096 Do not update projects when releasing from the toolbox
	https://pharo.fogbugz.com/f/cases/13096

13081 Integer nthRoot: is not allways exact though it claims to
	https://pharo.fogbugz.com/f/cases/13081

13109 Incorrect sqrtFloor for large Integers
	https://pharo.fogbugz.com/f/cases/13109

13082 ScaledDecimal 0.050s should be interpreted with scale 3, not 0.
	https://pharo.fogbugz.com/f/cases/13082

'.
	self loadTogether: self script454 merge: false.
	self flushCaches.
