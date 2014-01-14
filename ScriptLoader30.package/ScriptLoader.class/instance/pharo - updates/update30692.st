update30692
	"self new update30692"
	self withUpdateLog: '10578 Improve default Configuration Template
	https://pharo.fogbugz.com/f/cases/10578
	
12638 Does not update modified method on class side
	https://pharo.fogbugz.com/f/cases/12638
	
12634 Update
	https://pharo.fogbugz.com/f/cases/12634
'.
	self loadTogether: self script345 merge: false.
	self flushCaches.
