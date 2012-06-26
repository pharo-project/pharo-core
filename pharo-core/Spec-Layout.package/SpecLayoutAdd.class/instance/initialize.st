initialize
initialize
	"Initialization code for SpecLayoutAdd"

	super initialize.
	
	self selector: #add:.

	fractions := nil.
	offsets := nil.
	subwidget := nil.