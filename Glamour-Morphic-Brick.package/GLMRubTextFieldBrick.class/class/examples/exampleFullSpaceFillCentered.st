exampleFullSpaceFillCentered
	<example: 'Rubric centered text field that fills parent'>
	^ self exampleWithBorder
			hSpaceFill;
			vSpaceFill;
			beCentered;
			setTextWith: 'Hello world!';
			yourself