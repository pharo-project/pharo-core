step17
"Step 17: Self-intersecting paths and how they are filled.


There is a simple algorithm to determine whether given point will be filled or not: 
 - take an arbitrary point, infinitely distant from path interior and connect it with a point under the question.
 - count how many times the resulting ray intersects with path segments
 - if number of intersections is odd, then given point will be filled
 - if number of intersections is even, then given point will NOT be filled 
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
		surface clear: Color gray.
		
		canvas pathTransform
			translateX: surface width/2.0 Y: surface height / 2.0 ;
			scaleBy:3.
	
		canvas setShape: path.
		canvas setPaint: Color yellow.
		canvas draw.
		
		canvas pathTransform loadIdentity.
		"draw a line to demonstrate imaginery ray"
		
		canvas setStrokePaint: Color blue.
		
		canvas drawShape: (canvas createPath: [:b | b lineTo:300@300 ])
	].
