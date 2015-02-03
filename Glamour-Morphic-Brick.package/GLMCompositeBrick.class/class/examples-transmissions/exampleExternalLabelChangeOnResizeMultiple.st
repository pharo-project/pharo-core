exampleExternalLabelChangeOnResizeMultiple
	<example: 'Transmission from multiple origins'>
	|first second third|
	first := GLMLabelBrick new.
	second := GLMLabelBrick new.
	third := GLMLabelBrick new.
	
	(first transmit + second transmit + third transmit)
		from: #brickBounds; toPort: #text:;
		transformed: [ :value | 'My bounds: ', value asString ].
	
	(third transmit)
		from: first slot: #brickBounds;
		from: second slot: #brickBounds;
		to: [:brick | brick owner owner ] port: #extent:;
		when: [ :firstBounds :secondBounds | firstBounds isNotNil & secondBounds isNotNil ];
		transformed: [ :firstBounds :secondBounds | firstBounds extent + secondBounds extent ].
		
	
	"just showing widgets"
	 ((third 
		textPosition: #center;
		color: Color lightBlue)
			asBrickedMorph
			extent: 300@100;
			openInWindow) position: 500@50.
			
	((second 
		textPosition: #center;
		color: Color lightRed)
			asBrickedMorph
			extent: 300@100;
			openInWindow) position: 50@50.
			
	((first 
		textPosition: #center;
		color: Color lightGreen)
			asBrickedMorph
			extent: 300@200;
			openInWindow)position: 500@300