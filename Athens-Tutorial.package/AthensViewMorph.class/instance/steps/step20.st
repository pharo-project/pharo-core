step20
"Step 20: Radial gradients.

"
	| ramp perfectRadial radialWithCustomFocus |


	"A radial gradient defined using following parameters:
	 - a color ramp (a points in range from 0 to 1 with associated colors)
	- center point
	- radius
	- focal point (can be omited if focus is at center)
	"	
	ramp :=  {
			0 -> Color blue .
			0.25 -> Color red.
			0.5 -> Color white.
			0.75 -> Color yellow.
			1 -> (Color blue alpha: 0)
		}.
		
	perfectRadial := surface createRadialGradient: ramp
		center: 50@50  radius: 50 .
	
	radialWithCustomFocus := surface createRadialGradient: ramp
		center: 50@50  radius: 50	focalPoint: 20@20. 
	

	surface drawDuring: [:canvas |
		surface clear: Color gray.
			
			
		canvas pathTransform translateX: 10 Y: 10.
		
		canvas setShape: (0@0 corner:100@100).
		canvas setPaint: perfectRadial.
		
		canvas draw.


		canvas pathTransform translateX: 150 Y: 0.
		canvas setPaint: radialWithCustomFocus.
		
		canvas draw.

	].
