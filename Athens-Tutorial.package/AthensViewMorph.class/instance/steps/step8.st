step8

"Step 8: Rotating.
	

	Protocol: 
	<transform> rotateByDegrees: <scalar>
	
	or:
	
	<transform> rotateByRadians: <scalar>
		
"

surface drawDuring: [:canvas |
	surface clear: Color gray. 

	canvas setShape: (0@0 corner: 100@100).
	canvas setPaint: (Color blue).

	canvas pathTransform
		scaleBy:3;
		translateX: 50 Y: 50.

	canvas draw.
		
	canvas setPaint: Color yellow.
	
	canvas pathTransform
		translateX: 50 Y: 50;
		scaleBy: 0.7@0.5;
		
		rotateByDegrees: 45;
		"You can also use #rotateByRadians: if it fits better for you. 
		There is no #rotate: because it ambiguous"
	
		translateX: -50 Y: -50.

	canvas draw.

	]

