update50430
	"self new update50430"
	DangerousClassNotifier disable.
	self withUpdateLog: '16967 Inspecting the Scopes presentation of some ProgramNodes results in an exception 
	https://pharo.fogbugz.com/f/cases/16967

16963 Smalltalk globals not needed for smart suggestions of OCLiteralValiable
	https://pharo.fogbugz.com/f/cases/16963

16953 Clean Point Reciprocal comment and improving class comment!
	https://pharo.fogbugz.com/f/cases/16953

'.
	self loadTogether: self script50430 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
self cleanRepositories.
