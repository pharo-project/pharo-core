j
	<gtExample>
	<label: 'Dummy #j'>
	<description: 'should raise ZeroDivide'>
	<raises: ZeroDivide>
	<raises: AssertionFailure>

	1/0.	
	self assert: false