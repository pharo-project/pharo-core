update30731
	"self new update30731"
	self withUpdateLog: '12732 #sourceNode broken
	https://pharo.fogbugz.com/f/cases/12732

12751 Improve #cleanUpForProduction
	https://pharo.fogbugz.com/f/cases/12751

12750 Uppercase/lowercase different in config browser menu vs. buttons
	https://pharo.fogbugz.com/f/cases/12750


'.
	self loadTogether: self script384 merge: false.
	self flushCaches.
