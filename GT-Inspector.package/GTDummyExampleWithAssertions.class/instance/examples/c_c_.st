c: aBoolean c: anotherBoolean
	<gtExample>
	<depends: #a>
	<depends: #b>
	self assert: aBoolean equals: anotherBoolean.
	^ aBoolean & anotherBoolean