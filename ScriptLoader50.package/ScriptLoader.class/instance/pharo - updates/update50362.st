update50362
	"self new update50362"
	self withUpdateLog: '16715 options defined by classes or methods need to have overlay semantics
	https://pharo.fogbugz.com/f/cases/16715

16714 Remove Tool-DependencyAnalyser-Checker package
	https://pharo.fogbugz.com/f/cases/16714

16704 no helptext for playground buttons
	https://pharo.fogbugz.com/f/cases/16704'.
	self loadTogether: self script50362 merge: false.
	
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Tool-DependencyAnalyser-Checker' ]) unload.
wc := MCWorkingCopy allManagers detect: [ :each | each packageName = 'Tool-DependencyAnalyser' ].
[ (wc repositoryGroup versionWithInfo: wc ancestors first) load ] on: MCMergeOrLoadWarning do: [ :w | w load ].
	self flushCaches.
