update30425
	"self new update30425"
	self withUpdateLog: '11688 Pharo Kernel shrinking update for 30424
	https://pharo.fogbugz.com/f/cases/11688
	
11689 Spec Inspectors still let update process in some circumstances
	https://pharo.fogbugz.com/f/cases/11689
'.
	self loadTogether: self script104 merge: false.
	self flushCaches.
