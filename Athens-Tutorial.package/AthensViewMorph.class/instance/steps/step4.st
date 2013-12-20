step4
"Step 4: Shapes and paints.

"

surface drawDuring: [:canvas |
	surface clear: Color black. 
	
	"There's two objects involved in any draw operation: 
		- paint
		- shape
		
	The #draw API method simply fills current shape with current paint.
	"
	
	"To set current paint, use #setPaint: method "

	canvas setPaint: Color green.

	"To set current shape use #setShape: method "

	canvas setShape: (40@40 corner: 100@100).

	"Nothing will be drawn until #draw command will be issued: "
	canvas draw.

	]


