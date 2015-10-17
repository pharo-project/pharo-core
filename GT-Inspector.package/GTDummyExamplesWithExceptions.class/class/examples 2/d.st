d
	<gtExample>
	<label: 'Dummy #d'>
	<description: 'Dummy #d, raises ZeroDivide or AssertionFailure'>
	<raises: ZeroDivide>
	<raises: AssertionFailure>
	
	self assert: #( true false ) atRandom.
	^ 1/0