exampleInternalLabelChangeOnResize
	<example: 'Table transmission'>
	|first|
	first := GLMLabelBrick new.
	
	(first transmit)
		from: #brickBounds; toPort: #text:;
		when: [ :value | value extent >= (300@150) ];
		transformed: [ :value | 'resize me! ', value asString ].
			
	(first 
		textPosition: #center;
		color: Color lightGreen)
			asBrickedMorph
			extent: 300@200;
			openInWindow