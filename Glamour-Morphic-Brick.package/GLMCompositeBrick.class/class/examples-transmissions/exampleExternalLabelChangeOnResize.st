exampleExternalLabelChangeOnResize
	<example: 'Table transmission'>
	|first second|
	first := GLMLabelBrick new.
	second := GLMLabelBrick new.
	
	(first transmit)
		from: #brickBounds; toPort: #text:;
		when: [ :value | value extent >= (300@150) ];
		transformed: [ :value | 'resize me! ', value asString ].
		
	(first transmit)
		from: #brickBounds; to: second port: #extent:;
		transformed: [ :value | value extent ];
		with: [ :secondBrick | secondBrick owner owner extent: secondBrick extent ].
		
	(first transmit)
		from: #label slot: #text;
		to: second port: #text:;
		transformed: [ :value | 'Do not ', value asString ];
		with: [ :label |
			label
				color: Color random muchLighter;
				changed ].
		
	((second 
		textPosition: #center;
		color: Color lightBlue)
			asBrickedMorph
			extent: 300@100;
			openInWindow) position: 200@200.
			
	((first 
		textPosition: #center;
		color: Color lightGreen)
			asBrickedMorph
			extent: 300@200;
			openInWindow)position: 500@500