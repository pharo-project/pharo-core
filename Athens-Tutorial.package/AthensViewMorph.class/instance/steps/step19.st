step19
"Step 19: Using gradient paints.


So far we're use a simplest kind of paint: just a solid color.
Now let's play with gradients.
"
	| linearGradient |


	"A linear gradient defined used 3 parameters:
	 - a color ramp (a points in range from 0 to 1 with associated colors)
	- origin (starting) point
	- end (stop) point
	
	A vector connecting start and stop defines the direction which gradient will be facing,
	as well as its dimensions. "	
	linearGradient := surface createLinearGradient: {
			0 -> Color blue .
			0.25 -> Color red.
			0.5 -> Color white.
			0.75 -> Color yellow.
			1 -> Color green	
		}
		start: 0@0  
		stop: 100@100.



	surface drawDuring: [:canvas |
		surface clear: Color gray.
			
			
		canvas pathTransform translateX: 10 Y: 10.
		
		canvas setShape: (0@0 corner:100@100).
		canvas setPaint: linearGradient.
		
		canvas draw.


		canvas pathTransform translateX: 150 Y: 0.
		
		"Here we are using a paint tranform to change the gradient's direction and scale"
		canvas paintTransform rotateByDegrees: 45; scaleBy: 0.7.
		canvas draw.

		canvas pathTransform translateX: 150 Y: 0.
		
		"The areas outside the ramp boundary filled by extending the colors defined for 0 and 1 points of ramp respectively. 
		(blue for top, green for bottom, in our case)"
		canvas paintTransform translateX: 0 Y: 80; scaleBy: 0.2.
		canvas draw.

	].
