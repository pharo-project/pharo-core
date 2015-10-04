update50361
	"self new update50361"
	
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Tool-DependencyAnalyser-Checker' ]) unload.
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Tool-DependencyAnalyser-UI' ]) unload. "to avoid warnings"
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Tool-DependencyAnalyser' ]) unload. "this package becomes dirty after the checker unload preventing further load of this package"
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Tool-DependencyAnalyser-Test' ]) unload. "methods keep references to Obsolete classes".
	self withUpdateLog: '16584 new version of DependencyAnalyzer
	https://pharo.fogbugz.com/f/cases/16584

16708 pass over conditions
	https://pharo.fogbugz.com/f/cases/16708'.
	self loadTogether: self script50361 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.14'.self flushCaches.
