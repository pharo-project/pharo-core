update40115
	"self new update40115"
	self withUpdateLog: '13645 Small CodeCritique Cleanup of Network-Mail
	https://pharo.fogbugz.com/f/cases/13645

13643 Move extensions of Package Compiler to Kernel
	https://pharo.fogbugz.com/f/cases/13643

13642 remove registration of #userManager from ToolsRegistry
	https://pharo.fogbugz.com/f/cases/13642

12975 Metacello ProfStef use inexistant browse:selector:
	https://pharo.fogbugz.com/f/cases/12975

13644 Small Codecritic cleanup of Network-MIME
	https://pharo.fogbugz.com/f/cases/13644
	
13646 MIMELocalFileDocument seems to be dead code
	https://pharo.fogbugz.com/f/cases/13646

'.
	self loadTogether: self script115 merge: false.
	Smalltalk tools remove: #userManager.
	self flushCaches.
self cleanRepositories.
