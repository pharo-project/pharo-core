h
	<gtExample>
	<label: 'Dummy #h'>
	<description: 'Dummy #h, should raise an exception (by declaration) but it does not'>
	<raises: AssertionFailure>
	<raises: ZeroDivide>
	<noTest>
	
	self assert: true. " no exception raised -> expected exception not raises"
	true " no exception raised -> expected exception not raises "
		ifTrue: [ ^ 1 ] 
		ifFalse: [ 1/0 ]