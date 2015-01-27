update40465
	"self new update40465"
	self withUpdateLog: '14803 Prepare Encoder for Opal integration
	https://pharo.fogbugz.com/f/cases/14803

14802 Opal should rely on the bytecode encoder for bytecode generation
	https://pharo.fogbugz.com/f/cases/14802

'.
	self loadTogether: self script465 merge: false.
	self flushCaches.
self cleanRepositories.
