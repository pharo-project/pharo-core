step25
"Step 25: Stroke paints: Cap style

The cap style affects drawing the end segments (what kind of 'cap' to use).

"
	| path |

	path := surface createPath: [:builder |
			
		builder 
			moveTo: -50@ -50;
			lineTo: 50@0;
			lineTo: 0@50;
			lineTo: -50@0;
			lineTo: 80@ -30 
			
			].
	
	surface drawDuring: [:canvas |
		| stroke |
		surface clear: Color gray.
			
		stroke := canvas setStrokePaint: Color white.
		stroke width: 5.

		stroke joinRound.
		
		"There are 3 kinds of cap: 
		  - round
		  - square
		  - and butt
		
		(uncomment to see the difference)
		"
		
		stroke capRound. 
		"stroke capButt."
		"stroke capSquare. "
		
		canvas pathTransform 
			translateX: 400 Y:400;
			scaleBy: 4.
		canvas drawShape: path.

	].
