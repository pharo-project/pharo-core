update30479
	"self new update30479"
	self withUpdateLog: '11014 Remove old Debugger
	https://pharo.fogbugz.com/f/cases/11014/
	
	'.
	self loadTogether: self script134 merge: false.
	self flushCaches.
