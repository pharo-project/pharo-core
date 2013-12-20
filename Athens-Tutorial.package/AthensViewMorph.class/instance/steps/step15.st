step15
"Step 15: Path origin and moveTo: segment.


"
	| path |

	path := surface createPath: [:builder |
			
		builder 
			absolute;

			"All paths always having same origin, which is (0@0) point.
			To use different origin, use #moveTo: as initial command.
			Try to change moveTo: parameter to see the difference"

			 				
			moveTo: -50@ -50;
			
			"quadric Bezier curve"
			
			curveVia: 0@ -80 to: 50@ -50;
			
			"cubic Bezier curve" 
			
			curveVia: 100@ -20 and: -50@20 to: 50@ 50;

			 "clockwise arc"
			
			cwArcTo: 50@100 angle: 45; 
			
			"counter-clockwise arc"

			ccwArcTo: -50@100 angle: 45.
			
			
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
