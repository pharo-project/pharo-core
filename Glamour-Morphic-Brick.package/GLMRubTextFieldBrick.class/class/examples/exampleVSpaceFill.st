exampleVSpaceFill
	<gtExample: 'Rubric text field that shrinks to fit width of the text and fills parent height'>
	
	^ self exampleWithBorder
			vSpaceFill;
			setTextWith: 'Hello world!';
			yourself