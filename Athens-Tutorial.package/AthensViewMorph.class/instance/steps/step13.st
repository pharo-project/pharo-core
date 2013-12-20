step13

"Step 13: Building complex shapes using paths.

For complex and large paths, building it every time could be ineffective and computationally intensive. 
Instead you can use surface factory method (#createPath:) to create a path object
at any point, and use it later, whenever you see fit.

Note, that since we're not using canvas, it is not necessary to put path creation inside #drawDuring: method.
"
	| path |

	path := surface createPath: [:builder |
			
			"A simple polygon"
		builder 
			absolute;
				
			"The path consists from a list of connected segments connected with each other" 				
			lineTo: -50@ -50;
			lineTo: 60@ -60;
			lineTo: 150@50;
			lineTo: 0@0
		].


	surface drawDuring: [:canvas |
		surface clear: Color gray.
		
		canvas pathTransform translateX: surface width/2.0 Y: surface height / 2.0 .
	
		canvas setShape: path.

		(canvas setStrokePaint: Color yellow) width:4.
		
		canvas draw.
	].