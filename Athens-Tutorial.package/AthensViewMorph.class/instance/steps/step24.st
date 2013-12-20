step24

"Step 24: Stroke paints: Join type.

The stroke join type affects how to connect the segments.

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
			
		stroke := canvas setStrokePaint: Color white.
		stroke width: 5.

	"There are 3 kinds of joins: bevel, miter and round (uncomment to see the difference)"
	
		stroke joinBevel. 
"		stroke joinRound.
		stroke joinMiter.  
"		
		 		
		canvas pathTransform 
			translateX: 400 Y:400;
			scaleBy: 4.
		canvas drawShape: path.

	].
