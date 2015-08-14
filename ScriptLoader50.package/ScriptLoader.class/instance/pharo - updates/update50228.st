update50228
	"self new update50228"
	
Nautilus useExperimentalFastTable: true.
	self withUpdateLog: '16197 update and merge Rubric 
	https://pharo.fogbugz.com/f/cases/16197

16198 Add users button in message browser 
	https://pharo.fogbugz.com/f/cases/16198

16201 Remove unsent extension methods in System-Changes
	https://pharo.fogbugz.com/f/cases/16201'.
	self loadTogether: self script50228 merge: false.
	self loadConfiguration: 'Rubric' version: '1.16.6'.self flushCaches.
