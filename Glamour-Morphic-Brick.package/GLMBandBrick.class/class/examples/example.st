example
	<example: 'Example of GLMBandBrick with many subbricks'>
	|band count|
	count := 100.
	band := self new
		width: 400;
		height: 600.
	
	1 to: count do: [ :index | 
		
		band addBrickBack: (
		GLMLabelBrick new
			text: (index asString, ' of ', count asString);
			textPosition: #center;
			color: Color random muchLighter;
			height: 40;
			hSpaceFill ) ].
		
	band asBrickedMorph openInWindow
	