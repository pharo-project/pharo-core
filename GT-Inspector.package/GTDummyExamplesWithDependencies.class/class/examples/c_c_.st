c: aBoolean1 c: aBoolean2
	<gtExample>
	<label: 'Dummy #c:c:'>
	<description: 'Dummy #c:c:, depends: #a and #b:'>
	<depends: #a> " aBoolean1 "
	<depends: #b:> " aBoolean2 "
	
	^ aBoolean1 & aBoolean2