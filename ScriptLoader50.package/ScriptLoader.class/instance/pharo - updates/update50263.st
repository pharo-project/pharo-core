update50263
	"self new update50263"
	self withUpdateLog: '16294 get rid of System-VMEvents dependency in the bootstrap
	https://pharo.fogbugz.com/f/cases/16294

16349 Lowercase button should be uppercase (when selecting an st file)
	https://pharo.fogbugz.com/f/cases/16349

16350 Default HelpIcon in CustomHelp has to be book instead of page
	https://pharo.fogbugz.com/f/cases/16350

16299 Monticello should not depend on Text-Diff
	https://pharo.fogbugz.com/f/cases/16299'.
	self loadTogether: self script50263 merge: false.
	self flushCaches.
