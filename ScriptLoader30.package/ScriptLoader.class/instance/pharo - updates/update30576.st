update30576
	"self new update30576"
	self withUpdateLog: '12172 relax #testUnknownProcesses a little
	https://pharo.fogbugz.com/f/cases/12172
	
12171 Fix last reference to ExtendedNumberParser
	https://pharo.fogbugz.com/f/cases/12171
	
12165 #testObsoleteBehaviors failing after running native boost tests
	https://pharo.fogbugz.com/f/cases/12165'.
	self loadTogether: self script232 merge: false.
	self flushCaches.
