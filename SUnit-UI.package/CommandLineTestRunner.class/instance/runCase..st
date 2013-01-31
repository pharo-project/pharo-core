running
runCase: aTestCase
	self increaseTestCount.
	self printTestCase: aTestCase.
	
	[ aTestCase runCase ] 
		on: Halt , Error, TestFailure
		do: [ :err | self handleFailure: err of: aTestCase ]