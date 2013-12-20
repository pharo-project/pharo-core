step10
"Step 10: Loading matrix/using identity matrix.

"

surface drawDuring: [:canvas |  | m |
	surface clear: Color gray. 

	canvas setShape: (0@0 corner: 100@100).
	canvas setPaint: (Color blue).
	
	m := AthensAffineTransform new
		scaleBy: 4;
		translateX: 50 Y: 50;
		rotateByDegrees: 35;
		translateX: -50 Y: -50.
	

	"Load the built matrix into path transform"
	canvas pathTransform loadAffineTransform: m.	
		
	canvas draw.

	"The following statement resets coordinate transformation to match surface's coordinate space"
	canvas pathTransform loadIdentity.
	
	canvas setPaint: (Color yellow).
	canvas draw.

	"Now load the matrix back"
	
	canvas pathTransform 
		loadAffineTransform: m;
	
	"Offset it a bit"
		translateX: 2 Y: 2.
		
	canvas setPaint: (Color gray alpha:0.8).

	canvas draw.
		
	]

