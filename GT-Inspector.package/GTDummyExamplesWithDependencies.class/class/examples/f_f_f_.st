f: aBoolean1 f: aBoolean2 f: aBoolean3
	" to have the same dependency more than once probably makes no sense at all, but it is technically valid. We don't make any constraints "
	<gtExample>
	<label: 'Dummy #f:f:f:'>
	<description: 'Dummy #f:f:f:, depends: #a and #a and #a'>
	<depends: #a> " aBoolean1 "
	<depends: #a> " aBoolean2 "
	<depends: #a> " aBoolean3 "
	
	^ aBoolean1 & aBoolean2 & aBoolean3