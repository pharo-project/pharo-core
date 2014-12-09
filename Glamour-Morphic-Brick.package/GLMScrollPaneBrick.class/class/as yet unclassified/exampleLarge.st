exampleLarge
	|foundation scrollPane|
	
	scrollPane := self new.
	
	foundation := GLMFoundationBrick new.
	foundation brickRoot: scrollPane.
	
	1 to: 10000 do: [ :index |
		scrollPane addBrickBack: (GLMBrick new
			color: Color random;
			extent: 200@50).
	].
	
	foundation extent: 400@300.
	
	foundation openInWindow