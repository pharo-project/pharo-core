update30533
	"self new update30533"
	self withUpdateLog: '3455 HashedCollection missed abstract method noCheckAdd:
	https://pharo.fogbugz.com/f/cases/3455
	
12035 Slot and Protocol should be compact
	https://pharo.fogbugz.com/f/cases/12035
	
12034 Accessor to temporaries of context in case of unwinding not explicit
	https://pharo.fogbugz.com/f/cases/12034
	'.
	self loadTogether: self script188 merge: false.
	Slot becomeCompact.
Protocol becomeCompact.
	self flushCaches.
