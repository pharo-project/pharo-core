update30567
	"self new update30567"
	self withUpdateLog: '- Issue: 12137
Temporary variables are not added properly 
	https://pharo.fogbugz.com/f/cases/12137/Temporary-variables-are-not-added-properly
	'.
	self loadTogether: self script223 merge: false.
	self flushCaches.
