update30649
	"self new update30649"
	self withUpdateLog: '11437 export settings in 3.0 cause a startup error when loading settings
	https://pharo.fogbugz.com/f/cases/11437
	
12431 DNU on Export Settings in Settings
	https://pharo.fogbugz.com/f/cases/12431
	
12416 File Permissions on Root not working
	https://pharo.fogbugz.com/f/cases/12416
	
12306 adding a group does not display it
	https://pharo.fogbugz.com/f/cases/12306
'.
	self loadTogether: self script302 merge: false.
	self flushCaches.
