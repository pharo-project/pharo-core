step9
"Step 9: Saving & restoring transformation.
	
	Protocol: 
	<transform> restoreAfter: [ block ]
	
"

surface drawDuring: [:canvas |
	surface clear: Color gray. 

	canvas setShape: (0@0 corner: 100@100).

	canvas pathTransform 
		scaleBy:3;
		translateX: 50 Y: 50.

"Try to comment #restoreAfter: , to run the code inside without it
and see the difference"

	canvas pathTransform restoreAfter: [
		
		canvas setPaint: (Color blue).
	
		canvas pathTransform
			translateX: 50 Y: 50;
			rotateByDegrees: 45;
			translateX: -50 Y: -50.

		canvas draw.
	].

	canvas setPaint: (Color yellow).
	canvas draw.
	]

