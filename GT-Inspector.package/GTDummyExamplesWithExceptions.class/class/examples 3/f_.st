f: anObject
	<gtExample>
	<label: 'Dummy #f'>
	<description: 'Dummy #f, depends: #b which raises an expected exception, returns nil'>
	<depends: #b>
	
	self assert: anObject isNil