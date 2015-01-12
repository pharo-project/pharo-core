update40440
	"self new update40440"
	self withUpdateLog: '14716 Remove all #notify: from inline checking
	https://pharo.fogbugz.com/f/cases/14716

14718 Move class instance variable def from #load to #createClass in MCClassDefinition
	https://pharo.fogbugz.com/f/cases/14718'.
	self loadTogether: self script440 merge: false.
	self flushCaches.
