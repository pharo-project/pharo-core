update60122
	"self new update60122"
	self withUpdateLog: '18374 SmalltalkImage>>backupTo: modifies current working directory
	https://pharo.fogbugz.com/f/cases/18374'.
	self loadTogether: self script60122 merge: false.
	self loadConfiguration: 'Epicea' version: '7.95'.self flushCaches.
