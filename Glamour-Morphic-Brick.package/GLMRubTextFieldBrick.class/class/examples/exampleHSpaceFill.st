exampleHSpaceFill
	<example: 'Rubric text field that shrinks to fit height of the text and fills parent width'>
	
	^ self exampleWithBorder
			hSpaceFill;
			setTextWith: 'Hello world!';
			yourself