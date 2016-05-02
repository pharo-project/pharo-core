update50742
	"self new update50742"
	self withUpdateLog: '18139 getenv() call on Ubuntu 14.04 (32 bit) fails in one-click image
	https://pharo.fogbugz.com/f/cases/18139'.
	self loadTogether: self script50742 merge: false.
	Author useAuthor: 'auto' during: 
	[OSEnvironment compile: 'getEnv: arg1
	"This method calls the Standard C Library getenv() function. The name of the argument (arg1) should fit decompiled version."
	 ^ self ffiCall: #( String getenv (String arg1) ) module: LibC'.
FFIMethodRegistry cleanUp: false.]
.
	self flushCaches.
self cleanRepositories.
