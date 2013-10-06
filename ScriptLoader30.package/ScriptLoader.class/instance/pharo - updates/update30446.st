update30446
	"self new update30446"
	self withUpdateLog: '11719 integrate all the changes from the repository of the new debugger
	https://pharo.fogbugz.com/f/cases/11719'.
	self loadTogether: self script101 merge: false.
	self flushCaches.
