e: aString
	<gtExample>
	<label: 'Dummy #e:, depends #c:'>
	<description: 'should raise an exception as the argument is not aString'>
	<depends: #c:>
	<raises: Error>
	
	^ 'Hellow World', aString