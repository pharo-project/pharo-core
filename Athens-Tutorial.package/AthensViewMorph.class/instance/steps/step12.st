step12

"Step 12: Building complex shapes using paths.

So far, we used only rectangles as shapes, now time to create something more interesting.

"


	surface drawDuring: [:canvas |
		| path |
		surface clear: Color gray.
		
		canvas pathTransform translateX: surface width/2.0 Y: surface height / 2.0 .
	
		"To create a path, use #createPath: protocol.
		The block should accept a single argument, where AthensPathBuilder instance will be passed"	
		path := canvas createPath: [:builder |
			
			"A simple polygon"
			builder 
				absolute;
				
			"The path consists from a list of connected segments connected with each other" 
				lineTo: -50@ -50;
				lineTo: 60@ -60;
				lineTo: 150@50;
				lineTo: 0@0
			].
	
		canvas setShape: path.
		
		"Here we're using stroke paint to show the edges of path (more on stroke paints later)"
		(canvas setStrokePaint: Color white) width:4.
		
		"If you want to fill the path instead, uncomment the line below"
		"canvas setPaint: Color white."
		
		
		canvas draw.
	].