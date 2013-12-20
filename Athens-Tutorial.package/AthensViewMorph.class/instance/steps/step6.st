step6
	"Step 6: Transforming coordinate space.
	
	There are two transformation matrices which control coordinate space:
	   - path transform
	   - paint transform
	
	Both transformations represented by affine transformation matrices.
	(See AthensAffineTransform class for details).
	
	Accessing path transform:
	
	  <canvas> pathTransform
	
	Accessing paint transform:
	
	  <canvas> paintTransform
"

surface drawDuring: [:canvas |
	surface clear: Color black. 

	"Here, we're translating the canvas coordinate system origin, 
	so now it will be at 100@50 in surface's coordinate system"
	
	canvas pathTransform translateX: 100 Y: 50.
	"x axis"

	canvas setPaint: Color red.
	
	canvas drawShape: (0@0 corner: surface width@5).
	

	"y axis"
	canvas setPaint: Color blue.

	canvas drawShape: (0@0 corner: 5@surface height).

	
	]


