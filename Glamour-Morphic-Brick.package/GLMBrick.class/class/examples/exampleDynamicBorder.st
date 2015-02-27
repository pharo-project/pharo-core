exampleDynamicBorder
	<example:'Dynamic border width'>
	
	(GLMLabelBrick new
		borderColor: Color blue; 
		borderWidth: [ :b | (b height min: b width) * 0.1 ];
		color: Color white;
		text: 'Resize me';
		fontSize: 12;
		textPosition: #center) asBrickedMorph openInWindow