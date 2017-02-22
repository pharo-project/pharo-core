runTests
	self testPackages 
		do: [ :each | self runTestsOn: each ]