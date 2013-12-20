step16
"Step 16: Absolute versus relative path building mode.


"
	| path |

	path := surface createPath: [:builder |

	"In absolute path building mode, all segment coordinates is absolute (relative to coordinate system origin which is 0@0).
	
	In relative path building mode, the coordinates of next segment computed relative
	to the end point of previous segment"
	
			
		builder 
			relative;  "actually, relative is default. You can simply delete this line without any effect"

			moveTo: -50@ -50;
			
			
			lineTo: 50@0;
			
			"The building mode can be switched at any moment. 
			Try to uncomment line below to see the difference"
			"absolute;"
			
			lineTo: 0@50;
			lineTo: -50@0
		].


	surface drawDuring: [:canvas |
		surface clear: Color gray.
		
		canvas pathTransform
			translateX: surface width/2.0 Y: surface height / 2.0 ;
			scaleBy:2.
	
		canvas setShape: path.
		(canvas setStrokePaint: Color yellow) width:4.
		
		canvas draw.
	].
