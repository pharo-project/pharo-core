update60371
	"self new update60371"
	self withUpdateLog: '19631 GTPlayBook is producing memory leaks
	https://pharo.fogbugz.com/f/cases/19631

19633 EvaluateCommandLineHandler cannot process --evaluate
	https://pharo.fogbugz.com/f/cases/19633

19627 More contrast for default tooltip  
	https://pharo.fogbugz.com/f/cases/19627'.
	self loadTogether: self script60371 merge: false.
	self flushCaches.
