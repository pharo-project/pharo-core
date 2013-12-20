step7
	"Step 7: Scaling.
	

	Protocol: 
	<transform> scaleBy: <scalar/point>
	
	or:
	
	<transform> scaleX: <x scale> Y: <y scale>
		
"

surface drawDuring: [:canvas |
	surface clear: Color gray. 

	canvas setShape: (0@0 corner: 100@100).
	
	canvas setPaint: Color white.

	canvas draw.
	
	"try to vary the scale argument to see the difference"
	canvas pathTransform scaleBy: 2.

	canvas setPaint: (Color yellow alpha: 0.3).
	canvas draw.

	]


