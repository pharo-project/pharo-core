colorFromRGBInteger: anInteger
	|red green blue|
	
	blue := (anInteger >> 16) & 16r0ff.
	green := (anInteger >> 8) & 16r0ff.
	red := anInteger & 16r0ff.	
	
	^ self r: red g: green b: blue range: 255.
