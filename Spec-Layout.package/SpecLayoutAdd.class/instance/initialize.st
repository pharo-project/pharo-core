initialize
initialize
	"Initialization code for SpecLayoutAdd"

	super initialize.
	self selector: #add:.
	layoutFrame := LayoutFrame identity.
	fractions := nil. "deprecated "
	offsets := nil. "deprecated "
	subwidget := nil.