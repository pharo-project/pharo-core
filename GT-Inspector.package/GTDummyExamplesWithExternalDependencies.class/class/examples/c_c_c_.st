c: aBoolean1 c: aBoolean2 c: aBoolean3
	<gtExample>
	<label: 'Dummy #c:c:'>
	<description: 'Dummy #c:c:c:, depends: GTDummyExamples>>#a and GTDummyExamples>>#b: and GTDummyExamplesWithDependencies>>#a'>
	<dependsClass: #GTDummyExamples selector: #a> 
	<dependsClass: #GTDummyExamples selector: #b:> 
	<dependsClass: 'GTDummyExamplesWithDependencies' selector: #a>
	
	^ aBoolean1 & aBoolean2 & aBoolean3