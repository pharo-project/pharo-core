exampleFill
	<example: 'Basic Rubric Editing Area that fills parent'>
	^ self exampleBasic
		vSpaceFill;
		updateTextWith: 'Hello world!';
		yourself