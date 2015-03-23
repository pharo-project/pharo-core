exampleFullSpaceFill
	<example: 'Rubric centered text field that fills parent'>
	
	^ self exampleWithBorder
			hSpaceFill;
			vSpaceFill;
			setTextWith: 'Hello world!';
			yourself