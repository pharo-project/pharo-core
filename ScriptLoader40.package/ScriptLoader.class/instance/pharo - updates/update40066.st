update40066
	"self new update40066"
	self withUpdateLog: '12786 Review SmalltalkImageTest>>testImageName
	https://pharo.fogbugz.com/f/cases/12786

13475 ClassOrganizer: commentRemoteStr --> commentRemoteStrig
	https://pharo.fogbugz.com/f/cases/13475

12767 FontTest has extension from Font package
	https://pharo.fogbugz.com/f/cases/12767

5685 offImage is private but used and it is exactly the same as offIcon
	https://pharo.fogbugz.com/f/cases/5685
	
13481 Unload tests for the old Compiler
	https://pharo.fogbugz.com/f/cases/13481

'.
	self loadTogether: self script66 merge: false.
	ScriptLoader new deletePackage: 'CompilerTests'.
	self flushCaches.
self cleanRepositories.
