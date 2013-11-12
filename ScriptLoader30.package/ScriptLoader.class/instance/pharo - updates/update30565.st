update30565
	"self new update30565"
	self withUpdateLog: '- Issue: 12146 Settings: Replace references to FileDirectory
	https://pharo.fogbugz.com/f/cases/12146/Settings-Replace-references-to-FileDirectory
	
- Issue 12140 Filing out a tag is broken
	https://pharo.fogbugz.com/f/cases/12140/Filing-out-a-tag-is-broken
	
- 12138 Finding a class is kind of broken
	https://pharo.fogbugz.com/f/cases/12138/Finding-a-class-is-kind-of-broken
'.
	self loadTogether: self script221 merge: false.
	self flushCaches.
