step14
"Step 14: Various path segment types.


"
	| path |

	path := surface createPath: [:builder |
			
		builder 
			absolute;
				
			"The path consists from a list of segments connected with each other, e.g.
			the starting point of next segment is always an end point of previous one"
			 				
			lineTo: -50@ -50;
			
			"quadric Bezier curve"
			
			curveVia: 0@ -80 to: 50@ -50;
			
			"cubic Bezier curve" 
			
			curveVia: 100@ -20 and: -50@20 to: 50@ 50;

			 "clockwise arc"
			
			cwArcTo: 50@100 angle: 45; 
			
			"counter-clockwise arc"

			ccwArcTo: -50@100 angle: 45.
			
			"close segment. Simply connects endpoint of previous segment with path starting point.
			Try to comment following line to see the difference" 
			builder close.
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
