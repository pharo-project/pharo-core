r: aBoolean1 r: aBoolean2
	<gtExample>
	<label: 'Dummy #r:, depends #q: and p:p:p:'>
	<depends: #p:p:p:>
	<depends: #q:>
	
	self assert: aBoolean1 & aBoolean2.
	^ aBoolean1 & aBoolean2