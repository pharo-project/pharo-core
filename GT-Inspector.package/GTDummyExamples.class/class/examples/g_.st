g: aBoolean
	<gtExample>
	<label: 'Dummy #g, depends: #c'>
	<description: 'should raise a ZeroDivide'>
	<depends: #c:>
	<raises: #ZeroDivide>
	
	self assert: aBoolean.
	^ 1/0