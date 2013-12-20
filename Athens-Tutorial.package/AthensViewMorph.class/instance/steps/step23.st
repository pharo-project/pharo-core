step23
"Step 23: Stroke paints.

Stroke paint is a special kind of paint, which instead of filling the shape,
 drawing a connected contour of certain width following the path.
"
	| path |

	path := surface createPath: [:builder |
			
		builder 
			moveTo: -50@ -50;
			lineTo: 50@0;
			lineTo: 0@50;
			lineTo: -50@0;
			lineTo: 80@ -30;
			close
		].
	
	surface drawDuring: [:canvas |
		| stroke |
		surface clear: Color gray.
			
		"A stroke paint uses another paint for fills"
		
		stroke := canvas setStrokePaint: Color white.
		
		"You can control the width of stroke by setting width parameter"
		stroke width: 5.
		
		canvas pathTransform 
			translateX: 400 Y:400;
			scaleBy: 4.
		canvas drawShape: path.

	].
