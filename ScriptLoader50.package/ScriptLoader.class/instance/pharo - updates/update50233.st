update50233
	"self new update50233"
	self withUpdateLog: '16217 zombie instances of Spec Tools: revert case 11115
	https://pharo.fogbugz.com/f/cases/16217

16187 Create a group automatically when you load a project
	https://pharo.fogbugz.com/f/cases/16187'.
	self loadTogether: self script50233 merge: false.
	self loadConfiguration: 'NautilusGroupAutoBuilder' version: '1.0'.self flushCaches.
