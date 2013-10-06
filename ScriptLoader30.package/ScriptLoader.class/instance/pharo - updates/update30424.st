update30424
	"self new update30424"
	self withUpdateLog: '11684 Make Compiler unloadable part 1
	https://pharo.fogbugz.com/f/cases/11684
	
11685 Make Compiler unloadable part 2
	https://pharo.fogbugz.com/f/cases/11685
	
'.
	self loadTogether: self script103 merge: false.
	self flushCaches.
