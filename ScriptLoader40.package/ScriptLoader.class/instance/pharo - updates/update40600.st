update40600
	"self new update40600"
	self withUpdateLog: '15325 DNU running code critics on a package tag
	https://pharo.fogbugz.com/f/cases/15325

15225 useless play icon in nautilus
	https://pharo.fogbugz.com/f/cases/15225

15316 FloatTest>>#testNaNCompare fails with new VM
	https://pharo.fogbugz.com/f/cases/15316

15318 Two tests in OSWindowTest fail on Windows with new VM 
	https://pharo.fogbugz.com/f/cases/15318'.
	self loadTogether: self script600 merge: false.
	self flushCaches.
