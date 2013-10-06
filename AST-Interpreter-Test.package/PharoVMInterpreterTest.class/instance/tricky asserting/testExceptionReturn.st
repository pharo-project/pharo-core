testExceptionReturn
	
	self assert: ([ Error signal ] on: Error do: [ :err| err return: 5 + 1 ]) = 6.
	self assert: [[ Error signal ] on: Error do: [ :err| err return: 5 + 1 ]. true] value = true.