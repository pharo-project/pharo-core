testExceptionHandling

	self assert: (self interpret: '[ ] on: Error do: [ :err| false ].') = nil.
	self assert: (self interpret: '[ ] on: Error do: [ :err| false ]. true') = true.
	self assert: (self interpret: '[ ] on: Error do: [ :err| ^ false ]. true') = true.
	
	self assert: (self interpret: '[ Error signal ] on: Error do: [ :err| false ]') = false.
	self assert: (self interpret: '[ Error signal ] on: Error do: [ :err| false ]. true') equals: true.
	self assert: (self interpret: '[ Error signal ] on: Error do: [ :err| ^ false ]. true') = false.
	
	self assert: (self interpret: '[[ Error signal ] value ] on: Error do: [ :err| false ]') = false.
	self assert: (self interpret: '[[ Error signal ] value ] on: Error do: [ :err| false ]. true') = true.
	self assert: (self interpret: '[[ Error signal ] value ] on: Error do: [ :err| ^ false ]. true') = false.
	
	self assert: (self interpret: '[self errorBlock value] on: Error do: [:err | false]') equals: false.
	self assert: (self interpret: '[self errorBlock value ] on: Error do: [ :err| false ]. true') = true.
	self assert: (self interpret: '[self errorBlock value ] on: Error do: [ :err| ^ false ]. true') = false.