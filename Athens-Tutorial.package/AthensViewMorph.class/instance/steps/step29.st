step29

"Step 29: Clipping.

"
	
	surface drawDuring: [:canvas |
		| stroke |
		surface clear: Color gray.

			
		"Draw a blue rectangle to use it as background "
		canvas setPaint: Color blue.	

		canvas clipBy:  (100@100 corner: 200@200) during: [ 	

			canvas drawShape: (0@0 corner: surface extent).
		].
	].
