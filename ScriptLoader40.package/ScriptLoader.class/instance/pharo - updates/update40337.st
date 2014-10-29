update40337
	"self new update40337"
	self withUpdateLog: '14349 announcement subscription in TestCase class>>#initialize should be weak
	https://pharo.fogbugz.com/f/cases/14349'.
	self loadTogether: self script337 merge: false.
	
TestCase initialize.
	self flushCaches.
