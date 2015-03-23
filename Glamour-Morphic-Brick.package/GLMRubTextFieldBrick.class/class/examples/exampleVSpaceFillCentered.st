exampleVSpaceFillCentered
	<example: 'Rubric centered text field that shrinks to fit width of the text and fills parent height'>
	
	^ self exampleWithBorder
			vSpaceFill;
			beCentered;
			setTextWith: 'Hello world!';
			yourself