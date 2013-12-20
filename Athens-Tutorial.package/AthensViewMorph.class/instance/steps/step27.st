step27

"Step 27: Paint modes

The paint mode controls how incoming (source) fragments will be combined with what is already on surface (destination).
"
	
	surface drawDuring: [:canvas |
		| stroke |
		surface clear: Color gray.

			
		"Draw a blue rectangle to use it as background "
		canvas setPaint: Color blue.	
		canvas drawShape: (0@0 corner: 300@300).
		
		canvas paintMode over.
	"Try one of following paint modes, and see the result: 	
	
		clear
		source
		over    <=== this is default mode
		in
		out 
		atop
		dest
		destOver
		destIn
		destOut
		destAtop
		xor
		add
		saturate
		multiply
		screen
		overlay
		darken
		lighten
		colorDodge
		colorBurn
		hardLight
		softLight
		difference
		exclusion
		hslHue
		hslSaturation
		hslColor
		hslLuminosity
	
	You can check if given mode is supported by sending: 
	
		canvas paintMode availableModes 
		
	"	
		"Draw a semi-transparent yellow rectangle to combine it with background "
		canvas setPaint: (Color yellow alpha: 0.5).	
		canvas drawShape: (150@150 corner: 450@450).

	].
