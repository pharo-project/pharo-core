b: aBoolean1 b: aBoolean2
	<gtExample>
	<label: 'Dummy #b:b:'>
	<description: 'Dummy #b:b:, depends: GTDummyExamples>>#a and GTDummyExamples>>#b:'>
	<dependsClass: GTDummyExamples selector: #a> 
	<dependsClass: #GTDummyExamples selector: #b:> 
	
	^ aBoolean1 & aBoolean2