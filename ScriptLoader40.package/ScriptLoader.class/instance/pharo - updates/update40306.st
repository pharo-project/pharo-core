update40306
	"self new update40306"
	self withUpdateLog: '14215 Fix for (Behavior new) compile: 
	https://pharo.fogbugz.com/f/cases/14215

14237 SymbolicBytecodeBuilder: rename #print to #addBytecode:
	https://pharo.fogbugz.com/f/cases/14237

14239 add inspector view for byte code with source highlighting
	https://pharo.fogbugz.com/f/cases/14239

'.
	self loadTogether: self script306 merge: false.
	self flushCaches.
self cleanRepositories.
