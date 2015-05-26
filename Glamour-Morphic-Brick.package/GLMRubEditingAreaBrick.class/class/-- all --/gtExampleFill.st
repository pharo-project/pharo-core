gtExampleFill
	<gtExample: 'Basic Rubric Editing Area that fills parent'>
	^ self gtExampleBasic
		vSpaceFill;
		updateTextWith: 'Hello world!';
		yourself