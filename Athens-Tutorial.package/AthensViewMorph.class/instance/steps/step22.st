step22
"Step 22: Using another surface as paint.

Simply pass surface as an argument to #setPaint: method.

"
	| surface2  |

	surface2 := AthensCairoSurface extent: 10@10.
	
	"checker board"
	surface2 drawDuring: [:canvas |
		surface2 clear.
		canvas setPaint: Color white.
		
		canvas 
			drawShape: (0@0 corner: 5@5);
			drawShape: (5@5 corner: 10@10)
		].

	
	surface drawDuring: [:canvas |
		surface clear: Color gray.
			
		(canvas setPaint: surface2) repeat.
		
		"And of course, using the paint transform we can affect the result.
		Uncomment the line below to see the difference"
		"canvas paintTransform scaleX: 3 Y:1; rotateByDegrees: 45 ."
		canvas drawShape: (0@0 corner: surface extent).

	].
