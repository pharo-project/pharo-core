step3
"Step 3: Start drawing.

Any drawing operations on surface is performed within #drawDuring: block.
There is no other (valid) way of obtaining canvas instance. 
"

surface drawDuring: [:canvas |
	
	"First, we clear the surface"
	surface clear. 
	
	"we can use 
	
	surface clear: Color black.  
	
	as well. A #clear is equivalent to: (surface clear: Color transparent).   "
	
	"Let''s draw a simple green rectangle"
	canvas setPaint: Color green.
	canvas setShape: (40@40 corner: 100@100).
	canvas draw.

	]

"Important to note:

- canvas instance should be used only within #drawDuring: scope.

"


