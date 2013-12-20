step28

"Step 28: Paint modes. Preserving the modes.

"
	
	surface drawDuring: [:canvas |
		| stroke |
		surface clear: Color gray.

			
		"Draw a blue rectangle to use it as background "
		canvas setPaint: Color blue.	
		canvas drawShape: (0@0 corner: 300@300).

	"Try to comment #restoreAfter: to see the difference "
		canvas paintMode restoreAfter: [		

			canvas paintMode source.
			canvas setPaint: (Color yellow alpha: 0.5).	
			canvas drawShape: (150@150 corner: 450@450).
		].
	
	
		canvas setPaint: (Color red).	
		canvas drawShape: (200@200 corner: 500@500).
	].
