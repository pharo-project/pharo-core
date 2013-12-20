step18
"Step 18: Creating hollow shapes using multiple contours.

"
	| path |

	path := surface createPath: [:builder |
			
		builder 
		
			"The first contour is a rectangle"

			moveTo: -50@ -50;
			lineTo: 50@0;			
			lineTo: 0@50;
			lineTo: -50@0;
			close;
			
			"A second contour is a rectangle, embedded into previous one. "
			
			"Important to note here: a close and moveTo: commands are ones 
			which starting new contour. If there is no #close segment, but
			moveTo: , it is counted as if implicit #close segment were added. 
			This is of course relevant only for filled paths, not stoked ones"
				
			moveTo: 10@10;
			lineTo: 0@30;
			lineTo: 30@0;
			lineTo: 0@ -30;
			close.
			
			"An important note here: the winding of contours must be different in order 
			to exclude the area inside one contour from another.
			If contours having same winding (both clockwise or both counter-clockwise,
			they will be both filled."


			"The third rectangle intersecting with both contours, try to change the initial moveTo: 
			segment coordinates to draw it outside or inside and see the difference"
			builder
			moveTo: 25@10;
			lineTo: 0@10;
			lineTo: 10@0;
			lineTo: 0@ -10;
			close.

		].


	surface drawDuring: [:canvas |
		surface clear: Color gray.
		
		canvas pathTransform
			translateX: surface width/2.0 Y: surface height / 2.0 ;
			scaleBy:3.
	
		canvas setShape: path.
		canvas setPaint: Color yellow.
		
		canvas draw.
	].
