step5
"Step 5: Coordinates. 

The initial coordinate space set up to cover entire surface using its dimensions. "

surface drawDuring: [:canvas |
	surface clear: Color black. 


	"x axis: goes from left to right"

	canvas setPaint: Color red.
	
	"here we're using #drawShape: convenience method, which is simply
	  setShape: + draw "
	
	canvas drawShape: (0@0 corner: surface width@5).
	

	"y axis: goes from top to bottom"
	canvas setPaint: Color blue.

	canvas drawShape: (0@0 corner: 5@surface height).

		

	]

