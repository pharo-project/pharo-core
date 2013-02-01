testing
testGetEnvironmentVariable
	"PATH should be accessible on any windows system, so we can use it to test"
	
	self assert: (NBWin32Shell getEnvironmentVariable: 'PATH') notEmpty
	