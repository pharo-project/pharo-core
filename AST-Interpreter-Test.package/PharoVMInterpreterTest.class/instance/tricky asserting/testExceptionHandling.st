testExceptionHandling

	self assert: ([ ] on: Error do: [ :err| false ]) = nil.
	self assert: [[ ] on: Error do: [ :err| false ]. true] value = true.
	self assert: [[ ] on: Error do: [ :err| ^ false ]. true] value = true.
	
	self assert: ([ Error signal ] on: Error do: [ :err| false ]) = false.
	self assert: [[ Error signal ] on: Error do: [ :err| false ]. true] value = true.
	self assert: [[ Error signal ] on: Error do: [ :err| ^ false ]. true] value = false.
	
	self assert: ([[ Error signal ] value ] on: Error do: [ :err| false ]) = false.
	self assert: [[[ Error signal ] value ] on: Error do: [ :err| false ]. true] value = true.
	self assert: [[[ Error signal ] value ] on: Error do: [ :err| ^ false ]. true] value = false.
	
	self assert: ([self errorBlock value] on: Error do: [:err | false]) equals: false.
	self assert: [[self errorBlock value ] on: Error do: [ :err| false ]. true] value = true.
	self assert: [[self errorBlock value ] on: Error do: [ :err| ^ false ]. true] value = false.